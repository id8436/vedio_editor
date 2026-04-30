import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

/// Inline video preview with play/pause/seek controls.
/// Gracefully degrades on web (shows placeholder).
class VideoPreview extends StatefulWidget {
  const VideoPreview({
    super.key,
    required this.videoPath,
    this.startMs = 0,
    this.endMs,
    this.onPositionChanged,
    this.showControls = true,
  });
  // Provide a GlobalKey<VideoPreviewState> to call seekToMs() externally.

  final String videoPath;
  final int startMs;
  final int? endMs;
  /// Called whenever the playback position changes (ms since file start).
  final ValueChanged<int>? onPositionChanged;
  final bool showControls;

  @override
  State<VideoPreview> createState() => VideoPreviewState();
}

class VideoPreviewState extends State<VideoPreview> {
  VideoPlayerController? _controller;
  bool _initialized = false;
  bool _hasError = false;
  int _lastReportedMs = -1;
  bool _autoplayEnabled = true;

  /// Seek the video to [ms] milliseconds.
  void seekToMs(int ms) {
    _controller?.seekTo(Duration(milliseconds: ms));
    if (!widget.showControls && _autoplayEnabled) {
      _controller?.play();
    }
  }

  void _onControllerUpdate() {
    final VideoPlayerController? c = _controller;
    if (c == null) return;
    final int ms = c.value.position.inMilliseconds;
    if (ms != _lastReportedMs) {
      _lastReportedMs = ms;
      widget.onPositionChanged?.call(ms);
    }
  }

  @override
  void initState() {
    super.initState();
    _initController();
  }

  @override
  void didUpdateWidget(VideoPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoPath != widget.videoPath) {
      _controller?.dispose();
      _initialized = false;
      _hasError = false;
      _initController();
    }
  }

  Future<void> _initController() async {
    if (kIsWeb) {
      // web://name style paths from file_picker are not real URLs.
      if (widget.videoPath.startsWith('web://')) {
        setState(() => _hasError = true);
        return;
      }
    }

    try {
      final VideoPlayerController controller = kIsWeb
          ? VideoPlayerController.networkUrl(Uri.parse(widget.videoPath))
          : VideoPlayerController.file(File(widget.videoPath));

      await controller.initialize();

      if (!mounted) {
        controller.dispose();
        return;
      }

      // Seek to the start of the selected region.
      await controller.seekTo(Duration(milliseconds: widget.startMs));

      // Auto-play when showControls=false (Premiere Clip style)
      if (!widget.showControls && _autoplayEnabled) {
        await controller.play();
      }

      setState(() {
        _controller = controller;
        _initialized = true;
        controller.addListener(_onControllerUpdate);
      });
    } catch (_) {
      if (mounted) setState(() => _hasError = true);
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_onControllerUpdate);
    _controller?.dispose();
    super.dispose();
  }

  void _togglePlay() {
    final VideoPlayerController? c = _controller;
    if (c == null) return;
    setState(() {
      if (c.value.isPlaying) {
        c.pause();
      } else {
        c.play();
      }
    });
  }

  String _formatDuration(Duration d) {
    final int minutes = d.inMinutes.remainder(60);
    final int seconds = d.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return _Placeholder(videoPath: widget.videoPath);
    }

    if (!_initialized || _controller == null) {
      return const SizedBox(
        height: 180,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    final VideoPlayerController c = _controller!;
    return ValueListenableBuilder<VideoPlayerValue>(
      valueListenable: c,
      builder: (BuildContext context, VideoPlayerValue value, _) {
        final Duration position = value.position;
        final Duration total = value.duration;
        final double posSeconds = position.inMilliseconds / 1000.0;
        final double totalSeconds = total.inMilliseconds / 1000.0;

        final Widget videoSurface = Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: SizedBox(
              width: c.value.size.width,
              height: c.value.size.height,
              child: VideoPlayer(c),
            ),
          ),
        );

        if (!widget.showControls) {
          return Stack(
            children: <Widget>[
              Positioned.fill(child: videoSurface),
              // Progress bar at bottom
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 3,
                  color: Colors.black.withValues(alpha: 0.3),
                  child: FractionallySizedBox(
                    widthFactor: totalSeconds > 0 ? (posSeconds / totalSeconds).clamp(0.0, 1.0) : 0,
                    alignment: Alignment.centerLeft,
                    child: Container(color: Colors.blue),
                  ),
                ),
              ),
              // Time display
              Positioned(
                left: 8,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')} / ${total.inMinutes}:${(total.inSeconds % 60).toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ),
              // Play/Pause button
              Positioned(
                right: 8,
                bottom: 8,
                child: Material(
                  color: Colors.black.withValues(alpha: 0.45),
                  borderRadius: BorderRadius.circular(999),
                  child: IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: _togglePlay,
                    icon: Icon(
                      value.isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AspectRatio(
              aspectRatio: c.value.aspectRatio,
              child: VideoPlayer(c),
            ),
            const SizedBox(height: 4),
            Slider(
              min: 0,
              max: totalSeconds <= 0 ? 1 : totalSeconds,
              value: posSeconds.clamp(0, totalSeconds <= 0 ? 1 : totalSeconds),
              onChanged: (double sec) {
                c.seekTo(Duration(milliseconds: (sec * 1000).round()));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  _formatDuration(position),
                  style: const TextStyle(fontSize: 11),
                ),
                IconButton(
                  icon: Icon(value.isPlaying ? Icons.pause : Icons.play_arrow),
                  onPressed: _togglePlay,
                ),
                Text(
                  _formatDuration(total),
                  style: const TextStyle(fontSize: 11),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.videoPath});

  final String videoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.black12,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.videocam_off, size: 40, color: Colors.grey),
          const SizedBox(height: 8),
          Text(
            videoPath.startsWith('web://')
                ? 'Preview unavailable in browser'
                : 'Cannot open video',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
