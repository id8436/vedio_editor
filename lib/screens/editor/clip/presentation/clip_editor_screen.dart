// ignore_for_file: unused_element

import 'dart:convert' show base64Encode;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../app/widgets/page_scaffold.dart';
import '../../../../core/models/editor_session_input.dart';
import '../../../../core/models/import_media_item.dart';
import '../../../../core/models/timeline_models.dart';
import '../../shared/editor_controller.dart';
import '../../shared/widgets/video_preview.dart';
import 'widgets/clip_timeline_strip.dart';
import 'widgets/clip_editor_local_widgets.dart';
import 'clip_editor_logic.dart';

part 'clip_editor_screen_sections.dart';
part 'clip_editor_screen_progress_bar.dart';
part 'clip_editor_screen_options.dart';

class _TogglePlaybackIntent extends Intent {
  const _TogglePlaybackIntent();
}

enum _ClipOptionTab { audio, filter, text, timing }

class ClipEditorScreen extends ConsumerStatefulWidget {
  const ClipEditorScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  ConsumerState<ClipEditorScreen> createState() => _ClipEditorScreenState();
}

class _ClipEditorScreenState extends ConsumerState<ClipEditorScreen>
    with ClipEditorLogic {
  String _appVersion = 'unknown';

  int _selectedClipIndex = 0;
  int? _playheadMs;
  bool _isPlaying = false;
  int _trimStepMs = 250;
  final GlobalKey<VideoPreviewState> _previewKey =
      GlobalKey<VideoPreviewState>();

  AudioPlayer? _bgmPlayer;
  int _bgmSequenceDurationMs = 0;

  String _bgmDataUriPrefix(String name) {
    final String lower = name.toLowerCase();
    if (lower.endsWith('.wav')) return 'data:audio/wav;base64,';
    if (lower.endsWith('.ogg')) return 'data:audio/ogg;base64,';
    if (lower.endsWith('.aac')) return 'data:audio/aac;base64,';
    if (lower.endsWith('.flac')) return 'data:audio/flac;base64,';
    if (lower.endsWith('.m4a')) return 'data:audio/mp4;base64,';
    return 'data:audio/mpeg;base64,';
  }

  AudioSource? _buildBgmAudioSource(BgmItem item) {
    Uri? uri;

    if (item.bytes != null && item.bytes!.isNotEmpty && (kIsWeb || item.path.startsWith('web://'))) {
      final String b64 = base64Encode(item.bytes!);
      uri = Uri.parse('${_bgmDataUriPrefix(item.displayName)}$b64');
    } else if (item.path.startsWith('http://') ||
        item.path.startsWith('https://') ||
        item.path.startsWith('data:')) {
      uri = Uri.parse(item.path);
    } else if (!item.path.startsWith('web://') && item.path.isNotEmpty) {
      uri = Uri.file(item.path);
    }

    if (uri == null) {
      return null;
    }

    final UriAudioSource uriSource = AudioSource.uri(uri);
    AudioSource source = uriSource;
    if (item.startOffsetMs > 0) {
      source = ClippingAudioSource(
        start: Duration(milliseconds: item.startOffsetMs),
        child: uriSource,
      );
    }
    return source;
  }

  AudioSource? _buildBgmSequenceSource(List<BgmItem> items) {
    final List<AudioSource> sources = items
        .map(_buildBgmAudioSource)
        .whereType<AudioSource>()
        .toList(growable: false);
    if (sources.isEmpty) {
      return null;
    }
    if (sources.length == 1) {
      return sources.first;
    }
    return ConcatenatingAudioSource(children: sources);
  }

  int _normalizeBgmSeekMs(int timelineMs) {
    final int safeTimelineMs = timelineMs < 0 ? 0 : timelineMs;
    final bool shouldRepeat = widget.input?.shouldRepeatBgm ?? false;
    if (!shouldRepeat || _bgmSequenceDurationMs <= 0) {
      return safeTimelineMs;
    }
    return safeTimelineMs % _bgmSequenceDurationMs;
  }

  void _seekBgmToTimelineMs(int timelineMs) {
    final AudioPlayer? player = _bgmPlayer;
    if (player == null) {
      return;
    }
    player.seek(Duration(milliseconds: _normalizeBgmSeekMs(timelineMs)));
  }

  Future<void> _initBgmPlayer() async {
    final List<BgmItem> bgmItems = widget.input?.bgmItems ?? const <BgmItem>[];
    if (bgmItems.isEmpty) return;

    final AudioPlayer player = AudioPlayer();
    try {
      final AudioSource? source = _buildBgmSequenceSource(bgmItems);
      if (source == null) {
        await player.dispose();
        return;
      }
      final Duration? loadedDuration = await player.setAudioSource(source);
      final bool loop = widget.input?.shouldRepeatBgm ?? false;
      await player.setLoopMode(loop ? LoopMode.all : LoopMode.off);
      if (!mounted) {
        await player.dispose();
        return;
      }
      setState(() {
        _bgmPlayer = player;
        _bgmSequenceDurationMs = loadedDuration?.inMilliseconds ?? 0;
      });
    } catch (_) {
      await player.dispose();
    }
  }

  Future<void> _loadAppVersion() async {
    try {
      final PackageInfo info = await PackageInfo.fromPlatform();
      final String loaded = '${info.version}+${info.buildNumber}';
      if (!mounted) {
        return;
      }
      setState(() {
        _appVersion = loaded;
      });
    } catch (_) {
      // Keep fallback "unknown" version for report generation.
    }
  }

  String _runtimePlatformLabel() {
    if (kIsWeb) {
      return 'web';
    }
    return defaultTargetPlatform.name;
  }

  String _buildTroubleshootingReport({
    required String category,
    required String ffmpegCommand,
  }) {
    final String raw =
        ref.read(editorControllerProvider).analysisDebugInfo ?? '';
    final String details = buildCopyDetails(
      appVersion: _appVersion,
      platformLabel: _runtimePlatformLabel(),
      debugInfo: raw,
    );
    return <String>[
      'issue_category=$category',
      'recommended_ffmpeg=$ffmpegCommand',
      details,
    ].join('\n');
  }

  String _buildTroubleshootingJsonReport({
    required String category,
    required String ffmpegCommand,
  }) {
    final String raw =
        ref.read(editorControllerProvider).analysisDebugInfo ?? '';
    final String details = buildCopyDetails(
      appVersion: _appVersion,
      platformLabel: _runtimePlatformLabel(),
      debugInfo: raw,
    );
    return buildTroubleshootingJsonReport(
      appVersion: _appVersion,
      category: category,
      ffmpegCommand: ffmpegCommand,
      details: details,
    );
  }

  String? _extractDebugValue(String key) {
    final String? debug = ref.read(editorControllerProvider).analysisDebugInfo;
    if (debug == null || debug.isEmpty) return null;
    for (final String line in debug.split('\n')) {
      if (line.startsWith('$key=')) {
        return line.substring('$key='.length);
      }
    }
    return null;
  }

  String stateOrDebugFallbackReason() {
    return _extractDebugValue('analysis_mode') == 'demo'
        ? 'demo_fallback'
        : 'unknown';
  }

  // Note: _detectIssueCategory and _recommendedFfmpegCommand are now in ClipEditorLogic mixin

  String _recommendedFfmpegCommand(String category) =>
      recommendedFfmpegCommand(category);
  String _filterLabel(ClipFilterEffect effect) => filterLabel(effect);
  String _textPresetLabel(ClipTextPreset preset) => textPresetLabel(preset);
  String _assetLabel(String assetId) => assetLabel(assetId);

  int _clipIndexAtPlayheadMs(List<TimelineClip> clips, int playheadMs) {
    for (int i = 0; i < clips.length; i++) {
      final TimelineClip clip = clips[i];
      final bool inRange =
          playheadMs >= clip.timelineInMs &&
          (playheadMs < clip.timelineOutMs || i == clips.length - 1);
      if (inRange) {
        return i;
      }
    }
    return clips.length - 1;
  }

  void _safeSetState(VoidCallback action) {
    if (!mounted) {
      return;
    }
    setState(action);
  }

  void _refreshUi() {
    _safeSetState(() {});
  }

  void _setPlaybackState(bool isPlaying) {
    if (_isPlaying == isPlaying) {
      return;
    }
    _safeSetState(() {
      _isPlaying = isPlaying;
    });
    if (isPlaying) {
      _bgmPlayer?.play();
    } else {
      _bgmPlayer?.pause();
    }
  }

  void _setPlayheadMs(int ms) {
    if (_playheadMs == ms) {
      return;
    }
    _safeSetState(() {
      _playheadMs = ms;
    });
  }

  void _resetSelectionState() {
    _safeSetState(() {
      _selectedClipIndex = 0;
      _playheadMs = null;
    });
  }

  void _selectClip(
    int clipIndex,
    TimelineClip clip, {
    bool syncBgm = true,
  }) {
    final List<TimelineClip> clips = ref.read(editorControllerProvider).project.clips;
    final TimelineClip? previousClip =
        _selectedClipIndex >= 0 && _selectedClipIndex < clips.length
            ? clips[_selectedClipIndex]
            : null;
    final bool sameAsset = previousClip?.assetId == clip.assetId;

    setState(() {
      _selectedClipIndex = clipIndex;
      _playheadMs = clip.timelineInMs;
    });

    // For same-asset transitions we can seek the existing controller directly.
    // For different assets, let VideoPreview swap controllers during rebuild;
    // this avoids seeking the old source to an unrelated timestamp.
    if (sameAsset) {
      if (_isPlaying) {
        _previewKey.currentState?.playFromMs(clip.srcInMs);
      } else {
        _previewKey.currentState?.seekToMs(clip.srcInMs);
      }
    }

    if (syncBgm) {
      _seekBgmToTimelineMs(clip.timelineInMs);
    }
  }

  void _handlePreviewPositionChanged(List<TimelineClip> clips, int reportedMs) {
    if (clips.isEmpty) {
      return;
    }

    final int currentIndex = _selectedClipIndex.clamp(0, clips.length - 1);
    final TimelineClip activeClip = clips[currentIndex];
    final int clipOffsetMs =
        (reportedMs - activeClip.srcInMs).clamp(0, activeClip.durationMs).toInt();
    final int timelineMs = activeClip.timelineInMs + clipOffsetMs;
    _setPlayheadMs(timelineMs);

    if (_isPlaying && activeClip.srcOutMs - reportedMs < 100) {
      if (currentIndex < clips.length - 1) {
        _selectClip(currentIndex + 1, clips[currentIndex + 1], syncBgm: false);
      } else {
        _setPlaybackState(false);
      }
    }
  }

  void _togglePlayback() {
    _previewKey.currentState?.togglePlayPause();
  }

  void _handleTimelineScrub(List<TimelineClip> clips, int absoluteMs) {
    if (clips.isEmpty) {
      return;
    }

    final int nextIndex = _clipIndexAtPlayheadMs(clips, absoluteMs);
    final TimelineClip targetClip = clips[nextIndex];
    final int clipOffsetMs =
        (absoluteMs - targetClip.timelineInMs)
            .clamp(0, targetClip.durationMs)
            .toInt();
    final int srcMs = targetClip.srcInMs + clipOffsetMs;

    setState(() {
      _selectedClipIndex = nextIndex;
      _playheadMs = absoluteMs;
    });
    _previewKey.currentState?.seekToMs(srcMs);
    _seekBgmToTimelineMs(absoluteMs);
  }

  void _jumpToAdjacentClip(
    List<TimelineClip> clips,
    int currentIndex, {
    required bool forward,
  }) {
    if (clips.isEmpty) {
      return;
    }
    final int next = forward ? currentIndex + 1 : currentIndex - 1;
    if (next < 0 || next >= clips.length) {
      return;
    }
    _selectClip(next, clips[next]);
  }

  void _trimClipDuration({
    required EditorController controller,
    required int clipIndex,
    required bool makeLonger,
  }) {
    final EditorState state = ref.read(editorControllerProvider);
    final List<TimelineClip> clips = state.project.clips;
    final List<BeatMarker> beats = state.project.beats;
    if (clips.length <= 1 || clipIndex < 0 || clipIndex >= clips.length) {
      return;
    }

    // Last clip has no right boundary handle; adjust the previous boundary in reverse.
    int boundaryIndex = clipIndex;
    bool increaseBoundary = makeLonger;
    if (clipIndex == clips.length - 1) {
      boundaryIndex = clipIndex - 1;
      increaseBoundary = !makeLonger;
    }

    final TimelineClip left = clips[boundaryIndex];
    final TimelineClip right = clips[boundaryIndex + 1];
    final int currentBoundary = left.timelineOutMs;
    final int minBoundary = left.timelineInMs + 500;
    final int maxBoundary = right.timelineOutMs - 500;

    final List<int> candidateBeats =
        beats
            .map((BeatMarker beat) => beat.tsMs)
            .where((int ts) => ts >= minBoundary && ts <= maxBoundary)
            .toList()
          ..sort();

    int? targetBoundary;
    if (candidateBeats.isNotEmpty) {
      if (increaseBoundary) {
        for (final int beatTs in candidateBeats) {
          if (beatTs > currentBoundary) {
            targetBoundary = beatTs;
            break;
          }
        }
      } else {
        for (int i = candidateBeats.length - 1; i >= 0; i--) {
          if (candidateBeats[i] < currentBoundary) {
            targetBoundary = candidateBeats[i];
            break;
          }
        }
      }
    }

    if (targetBoundary != null) {
      HapticFeedback.mediumImpact(); // Priority 6: Haptic feedback
      controller.dragCutPoint(
        clipIndex: boundaryIndex,
        deltaMs: targetBoundary - currentBoundary,
      );
      return;
    }

    final int step = _trimStepMs;
    HapticFeedback.selectionClick(); // Priority 6: Light haptic for step-based trim
    controller.dragCutPoint(
      clipIndex: boundaryIndex,
      deltaMs: increaseBoundary ? step : -step,
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
    _initBgmPlayer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final EditorSessionInput? input = widget.input;
      if (input != null) {
        ref.read(editorControllerProvider.notifier).initializeFromImport(input);
      }
    });
  }

  @override
  void dispose() {
    _bgmPlayer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final EditorState state = ref.watch(editorControllerProvider);
    final EditorController controller = ref.read(
      editorControllerProvider.notifier,
    );
    final List<TimelineClip> clips = state.project.clips;
    final int safeSelectedClipIndex = clips.isEmpty
        ? 0
        : _selectedClipIndex.clamp(0, clips.length - 1);
    final TimelineClip? selectedClip = clips.isEmpty
        ? null
        : clips[safeSelectedClipIndex];
    final int absolutePlayhead = _playheadMs ?? selectedClip?.timelineInMs ?? 0;
    final int clipElapsedMs = selectedClip == null
        ? 0
        : (absolutePlayhead - selectedClip.timelineInMs).clamp(
            0,
            selectedClip.durationMs,
          );

    return PageScaffold(
      activeRoute: '/editor',
      title: 'Editor (Clip)',
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.undo),
          tooltip: 'Undo',
          onPressed: state.canUndo ? controller.undo : null,
        ),
        IconButton(
          icon: const Icon(Icons.redo),
          tooltip: 'Redo',
          onPressed: state.canRedo ? controller.redo : null,
        ),
      ],
      body: Shortcuts(
        shortcuts: const <ShortcutActivator, Intent>{
          SingleActivator(LogicalKeyboardKey.space): _TogglePlaybackIntent(),
        },
        child: Actions(
          actions: <Type, Action<Intent>>{
            _TogglePlaybackIntent: CallbackAction<_TogglePlaybackIntent>(
              onInvoke: (_TogglePlaybackIntent intent) {
                _togglePlayback();
                return null;
              },
            ),
          },
          child: Focus(
            autofocus: true,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    _buildAnalysisBanner(state, controller),
                    _buildPreviewArea(
                      state: state,
                      selectedClip: selectedClip,
                      safeSelectedClipIndex: safeSelectedClipIndex,
                      clips: clips,
                    ),
                    _buildTimelineArea(
                      state: state,
                      controller: controller,
                      selectedClip: selectedClip,
                      safeSelectedClipIndex: safeSelectedClipIndex,
                      clips: clips,
                      clipElapsedMs: clipElapsedMs,
                    ),
                    _buildBottomActions(),
                  ],
                ),
                if (state.loading)
                  Positioned.fill(
                    child: ColoredBox(
                      color: Colors.black.withValues(alpha: 0.25),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
