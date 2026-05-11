import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:video_player/video_player.dart';

/// Inline video preview with play/pause/seek controls.
/// Gracefully degrades on web (shows placeholder).
class VideoPreview extends StatefulWidget {
  const VideoPreview({
    super.key,
    required this.videoPath,
    this.isPhoto = false,
    this.mediaBytes,
    this.startMs = 0,
    this.endMs,
    this.onPositionChanged,
    this.showControls = true,
    this.onIsPlayingChanged,
    this.onTap,
    this.showPausedOverlay = false,
    this.showProgressOverlay = true,
    this.overlay,
  });
  // Provide a GlobalKey<VideoPreviewState> to call seekToMs() externally.

  final String videoPath;
  final bool isPhoto;
  final Uint8List? mediaBytes;
  final int startMs;
  final int? endMs;

  /// Called whenever the playback position changes (ms since file start).
  final ValueChanged<int>? onPositionChanged;
  final bool showControls;

  /// Called when play/pause state changes (true = playing).
  final void Function(bool isPlaying)? onIsPlayingChanged;

  /// Called when the video surface is tapped.
  final VoidCallback? onTap;

  /// Shows a centered play icon when playback is paused.
  final bool showPausedOverlay;

  /// Shows the thin progress bar overlay when controls are hidden.
  final bool showProgressOverlay;

  /// Optional presentation overlay rendered above the video surface.
  final Widget? overlay;

  @override
  State<VideoPreview> createState() => VideoPreviewState();
}

class VideoPreviewState extends State<VideoPreview> {
  VideoPlayerController? _controller;
  Timer? _photoPlaybackTimer;
  bool _initialized = false;
  bool _hasError = false;
  int _lastReportedMs = -1;
  final bool _autoplayEnabled = true;
  bool _wasPlaying = false;
  bool _photoIsPlaying = false;
  int _photoPositionMs = 0;
  int _photoPlaybackBaseMs = 0;
  DateTime? _photoPlaybackStartedAt;

  bool get _isPhotoMode => widget.isPhoto;
  int get _photoEndMs => widget.endMs ?? widget.startMs;

  /// Toggle play / pause from outside (e.g. editor screen overlay).
  void togglePlayPause() {
    if (_isPhotoMode) {
      if (_photoIsPlaying) {
        _pausePhotoPlayback();
      } else {
        _startPhotoPlayback();
      }
      return;
    }
    _togglePlay();
  }

  /// Seek and ensure playback starts (used when a timeline thumbnail is tapped).
  void playFromMs(int ms) {
    if (_isPhotoMode) {
      _startPhotoPlayback(fromMs: ms);
      return;
    }
    final VideoPlayerController? c = _controller;
    if (c == null) return;
    c.seekTo(Duration(milliseconds: ms));
    if (!c.value.isPlaying) {
      c.play();
    }
  }

  /// Seek the video to [ms] milliseconds.
  void seekToMs(int ms) {
    if (_isPhotoMode) {
      _pausePhotoPlayback(notifyParent: false);
      _setPhotoPosition(ms, notifyParent: true);
      return;
    }
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
    final bool isPlaying = c.value.isPlaying;
    if (isPlaying != _wasPlaying) {
      _wasPlaying = isPlaying;
      widget.onIsPlayingChanged?.call(isPlaying);
    }
  }

  @override
  void initState() {
    super.initState();
    _photoPositionMs = widget.startMs;
    _photoPlaybackBaseMs = widget.startMs;
    _initController();
  }

  @override
  void didUpdateWidget(VideoPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoPath != widget.videoPath ||
        oldWidget.isPhoto != widget.isPhoto ||
        oldWidget.mediaBytes != widget.mediaBytes ||
        oldWidget.startMs != widget.startMs ||
        oldWidget.endMs != widget.endMs) {
      _initController(replacing: true);
    }
  }

  Future<void> _initController({bool replacing = false}) async {
    final VideoPlayerController? previousController =
        replacing ? _controller : null;

    if (_isPhotoMode) {
      final bool shouldAutoPlay = !widget.showControls && _autoplayEnabled;
      previousController?.removeListener(_onControllerUpdate);
      await previousController?.pause();
      previousController?.dispose();
      _photoPlaybackTimer?.cancel();
      if (!mounted) {
        return;
      }
      setState(() {
        _controller = null;
        _initialized = true;
        _hasError = false;
        _photoIsPlaying = false;
      });
      _lastReportedMs = widget.startMs;
      _wasPlaying = false;
      _photoPlaybackBaseMs = widget.startMs;
      _setPhotoPosition(widget.startMs, notifyParent: true);
      if (shouldAutoPlay && _photoEndMs > widget.startMs) {
        _startPhotoPlayback(fromMs: widget.startMs);
      } else {
        widget.onIsPlayingChanged?.call(false);
      }
      return;
    }

    if (!replacing && mounted) {
      setState(() {
        _initialized = false;
        _hasError = false;
      });
    }

    if (kIsWeb) {
      // web://name style paths from file_picker are not real URLs.
      if (widget.videoPath.startsWith('web://')) {
        previousController?.removeListener(_onControllerUpdate);
        previousController?.dispose();
        setState(() {
          _controller = null;
          _initialized = false;
          _hasError = true;
        });
        return;
      }
    }

    try {
      previousController?.removeListener(_onControllerUpdate);
      await previousController?.pause();

      final VideoPlayerController controller = kIsWeb
          ? VideoPlayerController.networkUrl(Uri.parse(widget.videoPath))
          : VideoPlayerController.file(File(widget.videoPath));

      await controller.initialize();

      if (!mounted) {
        controller.dispose();
        previousController?.dispose();
        return;
      }

      // Seek to the start of the selected region.
      await controller.seekTo(Duration(milliseconds: widget.startMs));

      // Auto-play when showControls=false (Premiere Clip style)
      if (!widget.showControls && _autoplayEnabled) {
        await controller.play();
      }

      controller.addListener(_onControllerUpdate);
      setState(() {
        _controller = controller;
        _initialized = true;
        _hasError = false;
      });
      previousController?.dispose();
    } catch (_) {
      previousController?.dispose();
      if (mounted) {
        setState(() {
          _controller = null;
          _initialized = false;
          _hasError = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _photoPlaybackTimer?.cancel();
    _controller?.removeListener(_onControllerUpdate);
    _controller?.dispose();
    super.dispose();
  }

  void _startPhotoPlayback({int? fromMs}) {
    final int endMs = _photoEndMs;
    if (endMs <= widget.startMs) {
      _setPhotoPosition(widget.startMs, notifyParent: true);
      widget.onIsPlayingChanged?.call(false);
      return;
    }

    int startMs = fromMs == null
        ? _photoPositionMs
        : fromMs.clamp(widget.startMs, endMs);
    if (startMs >= endMs) {
      startMs = widget.startMs;
    }

    _photoPlaybackTimer?.cancel();
    _photoPlaybackBaseMs = startMs;
    _photoPlaybackStartedAt = DateTime.now();
    _setPhotoPosition(startMs, notifyParent: true);
    if (!_photoIsPlaying && mounted) {
      setState(() {
        _photoIsPlaying = true;
      });
    } else {
      _photoIsPlaying = true;
    }
    widget.onIsPlayingChanged?.call(true);
    _photoPlaybackTimer = Timer.periodic(
      const Duration(milliseconds: 33),
      (_) => _tickPhotoPlayback(),
    );
  }

  void _pausePhotoPlayback({bool notifyParent = true}) {
    _photoPlaybackTimer?.cancel();
    _photoPlaybackTimer = null;
    _photoPlaybackStartedAt = null;
    if (_photoIsPlaying && mounted) {
      setState(() {
        _photoIsPlaying = false;
      });
    } else {
      _photoIsPlaying = false;
    }
    if (notifyParent) {
      widget.onIsPlayingChanged?.call(false);
    }
  }

  void _tickPhotoPlayback() {
    final DateTime? startedAt = _photoPlaybackStartedAt;
    if (startedAt == null) {
      _pausePhotoPlayback(notifyParent: false);
      return;
    }

    final int elapsedMs = DateTime.now().difference(startedAt).inMilliseconds;
    final int nextMs = (_photoPlaybackBaseMs + elapsedMs).clamp(
      widget.startMs,
      _photoEndMs,
    );
    _setPhotoPosition(nextMs, notifyParent: true);

    if (nextMs >= _photoEndMs) {
      _pausePhotoPlayback(notifyParent: false);
    }
  }

  void _setPhotoPosition(int ms, {required bool notifyParent}) {
    final int bounded = ms.clamp(widget.startMs, _photoEndMs);
    _photoPositionMs = bounded;
    _lastReportedMs = bounded;
    if (notifyParent) {
      widget.onPositionChanged?.call(bounded);
    }
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
    if (_isPhotoMode) {
      return _buildPhotoSurface(context);
    }

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

        final Widget baseSurface = Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: SizedBox(
              width: c.value.size.width,
              height: c.value.size.height,
              child: VideoPlayer(c),
            ),
          ),
        );

        final bool showPaused = widget.showPausedOverlay && !value.isPlaying;
        final Widget videoSurface = Stack(
          children: <Widget>[
            Positioned.fill(child: baseSurface),
            if (widget.onTap != null)
              Positioned.fill(
                child: kIsWeb
                    ? PointerInterceptor(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: widget.onTap,
                        ),
                      )
                    : GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: widget.onTap,
                      ),
              ),
            if (widget.overlay != null)
              Positioned.fill(
                child: IgnorePointer(
                  child: widget.overlay!,
                ),
              ),
            if (widget.showPausedOverlay)
              Positioned.fill(
                child: IgnorePointer(
                  child: AnimatedOpacity(
                    opacity: showPaused ? 1 : 0,
                    duration: const Duration(milliseconds: 160),
                    curve: Curves.easeOut,
                    child: AnimatedScale(
                      scale: showPaused ? 1 : 0.92,
                      duration: const Duration(milliseconds: 160),
                      curve: Curves.easeOut,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.45),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );

        if (!widget.showControls) {
          return Stack(
            children: <Widget>[
              Positioned.fill(child: videoSurface),
              // Progress bar at bottom
              if (widget.showProgressOverlay)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 3,
                    color: Colors.black.withValues(alpha: 0.3),
                    child: FractionallySizedBox(
                      widthFactor: totalSeconds > 0
                          ? (posSeconds / totalSeconds).clamp(0.0, 1.0)
                          : 0,
                      alignment: Alignment.centerLeft,
                      child: Container(color: Colors.blue),
                    ),
                  ),
                ),
              // Play/Pause is handled by the parent screen overlay.
            ],
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AspectRatio(
              aspectRatio: c.value.aspectRatio,
              child: videoSurface,
            ),
            const SizedBox(height: 4),
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

  Widget _buildPhotoSurface(BuildContext context) {
    final ImageProvider<Object>? provider = _imageProvider();
    if (provider == null) {
      return _Placeholder(videoPath: widget.videoPath);
    }

    final Widget baseSurface = ColoredBox(
      color: Colors.black,
      child: Center(
        child: Image(
          image: provider,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => _Placeholder(videoPath: widget.videoPath),
        ),
      ),
    );

    final Widget photoSurface = Stack(
      children: <Widget>[
        Positioned.fill(child: baseSurface),
        if (widget.onTap != null)
          Positioned.fill(
            child: kIsWeb
                ? PointerInterceptor(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: widget.onTap,
                    ),
                  )
                : GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: widget.onTap,
                  ),
          ),
        if (widget.overlay != null)
          Positioned.fill(
            child: IgnorePointer(
              child: widget.overlay!,
            ),
          ),
      ],
    );

    final Duration total = Duration(
      milliseconds: (_photoEndMs - widget.startMs).clamp(0, 1 << 31),
    );
    final Duration position = Duration(
      milliseconds: (_photoPositionMs - widget.startMs).clamp(0, 1 << 31),
    );
    final bool showPaused = widget.showPausedOverlay && !_photoIsPlaying;

    final Widget layeredPhotoSurface = Stack(
      children: <Widget>[
        Positioned.fill(child: photoSurface),
        if (widget.showPausedOverlay)
          Positioned.fill(
            child: IgnorePointer(
              child: AnimatedOpacity(
                opacity: showPaused ? 1 : 0,
                duration: const Duration(milliseconds: 160),
                curve: Curves.easeOut,
                child: AnimatedScale(
                  scale: showPaused ? 1 : 0.92,
                  duration: const Duration(milliseconds: 160),
                  curve: Curves.easeOut,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.45),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );

    if (!widget.showControls) {
      return Stack(
        children: <Widget>[
          Positioned.fill(child: layeredPhotoSurface),
          if (widget.showProgressOverlay)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 3,
                color: Colors.black.withValues(alpha: 0.3),
                child: FractionallySizedBox(
                  widthFactor: total.inMilliseconds > 0
                      ? (position.inMilliseconds / total.inMilliseconds).clamp(0.0, 1.0)
                      : 0,
                  alignment: Alignment.centerLeft,
                  child: Container(color: Colors.blue),
                ),
              ),
            ),
        ],
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(child: layeredPhotoSurface),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _formatDuration(position),
              style: const TextStyle(fontSize: 11),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Icon(Icons.photo, size: 16),
                const SizedBox(width: 6),
                Text(
                  'Still',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Text(
              _formatDuration(total),
              style: const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ],
    );
  }

  ImageProvider<Object>? _imageProvider() {
    final Uint8List? bytes = widget.mediaBytes;
    if (bytes != null && bytes.isNotEmpty) {
      return MemoryImage(bytes);
    }

    if (widget.videoPath.startsWith('blob:') ||
        widget.videoPath.startsWith('http') ||
        widget.videoPath.startsWith('data:')) {
      return NetworkImage(widget.videoPath);
    }

    if (kIsWeb || widget.videoPath.startsWith('web://')) {
      return null;
    }

    return FileImage(File(widget.videoPath));
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
