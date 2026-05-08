// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../app/widgets/page_scaffold.dart';
import '../../../../core/models/editor_session_input.dart';
import '../../../../core/models/timeline_models.dart';
import '../../shared/editor_controller.dart';
import '../../shared/widgets/video_preview.dart';
import 'widgets/clip_editor_local_widgets.dart';
import 'clip_editor_logic.dart';

enum _ClipOptionTab { audio, filter, text, timing }

class ClipEditorScreen extends ConsumerStatefulWidget {
  const ClipEditorScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  ConsumerState<ClipEditorScreen> createState() => _ClipEditorScreenState();
}

class _ClipEditorScreenState extends ConsumerState<ClipEditorScreen> with ClipEditorLogic {
  String _appVersion = 'unknown';

  int _selectedClipIndex = 0;
  int? _playheadMs;
  bool _isPlaying = false;
  int _trimStepMs = 250;
  final GlobalKey<VideoPreviewState> _previewKey = GlobalKey<VideoPreviewState>();



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
    final String raw = ref.read(editorControllerProvider).analysisDebugInfo ?? '';
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
    final String raw = ref.read(editorControllerProvider).analysisDebugInfo ?? '';
    final String details = buildCopyDetails(appVersion: _appVersion, platformLabel: _runtimePlatformLabel(), debugInfo: raw);
    return buildTroubleshootingJsonReport(appVersion: _appVersion, category: category, ffmpegCommand: ffmpegCommand, details: details);
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

  String _recommendedFfmpegCommand(String category) => recommendedFfmpegCommand(category);
  String _filterLabel(ClipFilterEffect effect) => filterLabel(effect);
  String _textPresetLabel(ClipTextPreset preset) => textPresetLabel(preset);
  String _assetLabel(String assetId) => assetLabel(assetId);

  void _selectClip(int clipIndex, TimelineClip clip) {
    setState(() {
      _selectedClipIndex = clipIndex;
    });
    _previewKey.currentState?.seekToMs(clip.timelineInMs);
  }

  void _togglePlayback() {
    _previewKey.currentState?.togglePlayPause();
  }

  void _jumpToAdjacentClip(List<TimelineClip> clips, int currentIndex, {required bool forward}) {
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

    final List<int> candidateBeats = beats
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
      HapticFeedback.mediumImpact();  // Priority 6: Haptic feedback
      controller.dragCutPoint(
        clipIndex: boundaryIndex,
        deltaMs: targetBoundary - currentBoundary,
      );
      return;
    }

    final int step = _trimStepMs;
    HapticFeedback.selectionClick();  // Priority 6: Light haptic for step-based trim
    controller.dragCutPoint(
      clipIndex: boundaryIndex,
      deltaMs: increaseBoundary ? step : -step,
    );
  }

  Future<void> _openOptionSheet({
    required _ClipOptionTab tab,
    required TimelineClip clip,
    required int clipIndex,
    required EditorState state,
    required EditorController controller,
  }) async {
    final List<Widget> tabContent = switch (tab) {
      _ClipOptionTab.audio => _buildAudioTabContent(controller, clipIndex, clip),
      _ClipOptionTab.filter => _buildFilterTabContent(controller, clipIndex, clip),
      _ClipOptionTab.text => _buildTextTabContent(controller, clipIndex, clip),
      _ClipOptionTab.timing => _buildTimingTabContent(controller, clipIndex, clip, state),
    };

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              14,
              8,
              14,
              MediaQuery.of(context).viewInsets.bottom + 12,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      switch (tab) {
                        _ClipOptionTab.audio => 'Audio',
                        _ClipOptionTab.filter => 'Filter',
                        _ClipOptionTab.text => 'Text',
                        _ClipOptionTab.timing => 'Timing',
                      },
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 10),
                    ...tabContent,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildAudioTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Audio ducking'),
        subtitle: const Text('Lower BGM while this clip is playing'),
        value: clip.audioDucking,
        onChanged: (bool value) {
          controller.updateClipOptions(clipIndex: clipIndex, audioDucking: value);
          setState(() {});
        },
      ),
    ];
  }

  List<Widget> _buildFilterTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: ClipFilterEffect.values
            .map((ClipFilterEffect fx) => ChoiceChip(
                  label: Text(_filterLabel(fx)),
                  selected: clip.filterEffect == fx,
                  onSelected: (_) {
                    controller.updateClipOptions(clipIndex: clipIndex, filterEffect: fx);
                    setState(() {});
                  },
                ))
            .toList(),
      ),
    ];
  }

  List<Widget> _buildTextTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: ClipTextPreset.values
            .map((ClipTextPreset preset) => ChoiceChip(
                  label: Text(_textPresetLabel(preset)),
                  selected: clip.textPreset == preset,
                  onSelected: (_) {
                    controller.updateClipOptions(clipIndex: clipIndex, textPreset: preset);
                    setState(() {});
                  },
                ))
            .toList(),
      ),
    ];
  }

  List<Widget> _buildTimingTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
    EditorState state,
  ) {
    return <Widget>[
      Text('Clip Length (Beat-based: ${state.project.beats.length} beats)'),
      const SizedBox(height: 8),
      Row(
        children: <Widget>[
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                _trimClipDuration(controller: controller, clipIndex: clipIndex, makeLonger: false);
                setState(() {});
              },
              icon: const Icon(Icons.remove),
              label: const Text('Shorter (Prev Beat)'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                _trimClipDuration(controller: controller, clipIndex: clipIndex, makeLonger: true);
                setState(() {});
              },
              icon: const Icon(Icons.add),
              label: const Text('Longer (Next Beat)'),
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        children: <Widget>[
          const Text('Trim step'),
          const SizedBox(width: 8),
          DropdownButton<int>(
            value: _trimStepMs,
            items: const <DropdownMenuItem<int>>[
              DropdownMenuItem<int>(value: 100, child: Text('100ms')),
              DropdownMenuItem<int>(value: 250, child: Text('250ms')),
              DropdownMenuItem<int>(value: 500, child: Text('500ms')),
              DropdownMenuItem<int>(value: 1000, child: Text('1s')),
            ],
            onChanged: (int? value) {
              if (value == null) return;
              setState(() => _trimStepMs = value);
            },
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text('Target duration: ${(state.project.targetDurationMs / 1000).toStringAsFixed(0)}s'),
      Slider(
        min: 5,
        max: 120,
        divisions: 115,
        value: state.project.targetDurationMs / 1000,
        onChanged: (double sec) {
          controller.updateTargetDurationMs((sec * 1000).round());
          setState(() {});
        },
      ),
      Row(
        children: <Widget>[
          const Text('Beat snap'),
          const SizedBox(width: 8),
          Switch(
            value: state.beatSnapEnabled,
            onChanged: (bool value) {
              controller.setBeatSnapEnabled(value);
              setState(() {});
            },
          ),
          Text('threshold ${state.beatSnapThresholdMs}ms'),
        ],
      ),
      Slider(
        min: 20,
        max: 400,
        divisions: 38,
        value: state.beatSnapThresholdMs.toDouble(),
        onChanged: state.beatSnapEnabled
            ? (double value) {
                controller.setBeatSnapThresholdMs(value.round());
                setState(() {});
              }
            : null,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: TextButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
            context.go('/editor-advanced?preserve=1', extra: widget.input);
          },
          icon: const Icon(Icons.tune),
          label: const Text('Open Advanced Editor'),
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final EditorSessionInput? input = widget.input;
      if (input != null) {
        ref.read(editorControllerProvider.notifier).initializeFromImport(input);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final EditorState state = ref.watch(editorControllerProvider);
    final EditorController controller = ref.read(editorControllerProvider.notifier);
    final List<TimelineClip> clips = state.project.clips;
    final int safeSelectedClipIndex =
        clips.isEmpty ? 0 : _selectedClipIndex.clamp(0, clips.length - 1);
    final TimelineClip? selectedClip =
        clips.isEmpty ? null : clips[safeSelectedClipIndex];
    final int absolutePlayhead = _playheadMs ?? selectedClip?.timelineInMs ?? 0;
    final int clipElapsedMs = selectedClip == null
      ? 0
      : (absolutePlayhead - selectedClip.timelineInMs).clamp(0, selectedClip.durationMs);

    return PageScaffold(
      activeRoute: '/editor',
      title: 'Editor (Clip)',
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Error banner (minimal, only when error)
              if (state.analysisNotice != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade700,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.warning, color: Colors.white, size: 16),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          state.analysisNotice!,
                          style: const TextStyle(fontSize: 11, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        tooltip: 'Dismiss',
                        onPressed: controller.clearAnalysisNotice,
                        icon: const Icon(Icons.close, size: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              // MAIN PREVIEW AREA (50% of remaining space) - Small, compact preview
              Expanded(
                flex: 50,
                child: widget.input != null && selectedClip != null
                    ? GestureDetector(
                        onHorizontalDragEnd: (DragEndDetails details) {
                          // Swipe left = next clip, swipe right = previous clip
                          if (details.primaryVelocity! > 0) {
                            // Swipe right = go to previous clip
                            if (safeSelectedClipIndex > 0) {
                              _selectClip(safeSelectedClipIndex - 1, clips[safeSelectedClipIndex - 1]);
                            }
                          } else if (details.primaryVelocity! < 0) {
                            // Swipe left = go to next clip
                            if (safeSelectedClipIndex < clips.length - 1) {
                              _selectClip(safeSelectedClipIndex + 1, clips[safeSelectedClipIndex + 1]);
                            }
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          margin: const EdgeInsets.all(0),
                          clipBehavior: Clip.antiAlias,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: VideoPreview(
                                  key: _previewKey,
                                  videoPath: widget.input!.primaryVideoPath,
                                  startMs: selectedClip.timelineInMs,
                                  endMs: selectedClip.timelineOutMs,
                                  onIsPlayingChanged: (bool value) {
                                    if (_isPlaying != value) {
                                      setState(() => _isPlaying = value);
                                    }
                                  },
                                  showControls: false,
                                  onPositionChanged: (int ms) {
                                    if (_playheadMs != ms) {
                                      setState(() => _playheadMs = ms);
                                    }
                                    // Auto-advance to next clip when playback reaches end
                                    if (selectedClip.timelineOutMs - selectedClip.timelineInMs - ms < 100 &&
                                        safeSelectedClipIndex < clips.length - 1) {
                                      _selectClip(safeSelectedClipIndex + 1, clips[safeSelectedClipIndex + 1]);
                                    }
                                  },
                                ),
                              ),
                              // Clip info overlay
                              Positioned(
                                left: 12,
                                right: 12,
                                bottom: 12,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Clip ${safeSelectedClipIndex + 1} of ${clips.length}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            '${(selectedClip.durationMs / 1000).toStringAsFixed(1)}s',
                                            style: const TextStyle(
                                              color: Colors.white70,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withValues(alpha: 0.6),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        _assetLabel(selectedClip.assetId),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 42,
                                child: Align(
                                  child: IconButton.filled(
                                    tooltip: _isPlaying ? 'Pause preview' : 'Play preview',
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.black.withValues(alpha: 0.55),
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: _togglePlayback,
                                    icon: Icon(
                                      _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              // Left swipe hint (if previous clip exists)
                              if (safeSelectedClipIndex > 0)
                                Positioned(
                                  left: 8,
                                  top: 0,
                                  bottom: 0,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(alpha: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Icon(
                                        Icons.chevron_left,
                                        color: Colors.white30,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              // Right swipe hint (if next clip exists)
                              if (safeSelectedClipIndex < clips.length - 1)
                                Positioned(
                                  right: 8,
                                  top: 0,
                                  bottom: 0,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(alpha: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Icon(
                                        Icons.chevron_right,
                                        color: Colors.white30,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.zero,
                        ),
                        margin: const EdgeInsets.all(0),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Icon(Icons.video_collection_outlined, color: Colors.white54, size: 40),
                              const SizedBox(height: 10),
                              const Text(
                                'No clips loaded',
                                style: TextStyle(color: Colors.white70, fontSize: 16),
                              ),
                              const SizedBox(height: 10),
                              FilledButton.tonalIcon(
                                onPressed: () => context.go('/import'),
                                icon: const Icon(Icons.upload_file),
                                label: const Text('Import Media'),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
              // TIMELINE/THUMBNAIL AREA (50% of remaining space) - Large thumbnail grid, Premiere Clip style
              Expanded(
                flex: 50,
                child: Container(
                  color: const Color(0xFF0F0F0F),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: const Color(0xFF111319),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              visualDensity: VisualDensity.compact,
                              onPressed: selectedClip == null || safeSelectedClipIndex == 0
                                  ? null
                                  : () => _jumpToAdjacentClip(clips, safeSelectedClipIndex, forward: false),
                              icon: const Icon(Icons.skip_previous_rounded, size: 20),
                              color: Colors.white,
                              disabledColor: Colors.white24,
                              tooltip: 'Previous clip',
                            ),
                            IconButton.filled(
                              visualDensity: VisualDensity.compact,
                              style: IconButton.styleFrom(
                                backgroundColor: const Color(0xFF2A2F37),
                                foregroundColor: Colors.white,
                              ),
                              onPressed: selectedClip == null ? null : _togglePlayback,
                              icon: Icon(_isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded, size: 18),
                              tooltip: _isPlaying ? 'Pause' : 'Play',
                            ),
                            IconButton(
                              visualDensity: VisualDensity.compact,
                              onPressed: selectedClip == null || safeSelectedClipIndex >= clips.length - 1
                                  ? null
                                  : () => _jumpToAdjacentClip(clips, safeSelectedClipIndex, forward: true),
                              icon: const Icon(Icons.skip_next_rounded, size: 20),
                              color: Colors.white,
                              disabledColor: Colors.white24,
                              tooltip: 'Next clip',
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                selectedClip == null
                                    ? '00:00 / 00:00'
                                    : '${formatClock(clipElapsedMs)} / ${formatClock(selectedClip.durationMs)}',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                  fontFeatures: <FontFeature>[FontFeature.tabularFigures()],
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ClipSequenceStrip(
                          clips: clips,
                          beats: state.project.beats,
                          selectedClipIndex: safeSelectedClipIndex,
                          onSelectClip: (int index) {
                            _selectClip(index, clips[index]);
                          },
                        ),
                      ),
                      // Timeline stats bar
                      Container(
                        color: const Color(0xFF1A1A1A),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '${clips.length} clips • ${(clips.fold<int>(0, (int sum, TimelineClip c) => sum + c.durationMs) / 1000).toStringAsFixed(1)}s',
                              style: const TextStyle(
                                color: Colors.white60,
                                fontSize: 11,
                              ),
                            ),
                            const Spacer(),

                          ],
                        ),
                      ),
                      // Quick edit dock
                      Container(
                        color: const Color(0xFF1A1A1A),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: selectedClip != null
                            ? CompactOptionDock(
                                clip: selectedClip,
                                onTrimShorter: () {
                                  _trimClipDuration(
                                    controller: controller,
                                    clipIndex: safeSelectedClipIndex,
                                    makeLonger: false,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text('Clip shortened'),
                                      duration: const Duration(milliseconds: 1200),
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                  setState(() {});
                                },
                                onTrimLonger: () {
                                  _trimClipDuration(
                                    controller: controller,
                                    clipIndex: safeSelectedClipIndex,
                                    makeLonger: true,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text('Clip lengthened'),
                                      duration: const Duration(milliseconds: 1200),
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                  setState(() {});
                                },
                                onTapAudio: () {
                                  _openOptionSheet(
                                    tab: _ClipOptionTab.audio,
                                    clip: selectedClip,
                                    clipIndex: safeSelectedClipIndex,
                                    state: state,
                                    controller: controller,
                                  );
                                },
                                onTapFilter: () {
                                  _openOptionSheet(
                                    tab: _ClipOptionTab.filter,
                                    clip: selectedClip,
                                    clipIndex: safeSelectedClipIndex,
                                    state: state,
                                    controller: controller,
                                  );
                                },
                                onTapText: () {
                                  _openOptionSheet(
                                    tab: _ClipOptionTab.text,
                                    clip: selectedClip,
                                    clipIndex: safeSelectedClipIndex,
                                    state: state,
                                    controller: controller,
                                  );
                                },
                                onTapMore: () {
                                  _openOptionSheet(
                                    tab: _ClipOptionTab.timing,
                                    clip: selectedClip,
                                    clipIndex: safeSelectedClipIndex,
                                    state: state,
                                    controller: controller,
                                  );
                                },
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom action buttons
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () => context.go('/export', extra: widget.input),
                        icon: const Icon(Icons.video_settings),
                        label: const Text('Export'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton.icon(
                      onPressed: () => context.go('/editor-advanced?preserve=1', extra: widget.input),
                      icon: const Icon(Icons.tune),
                      label: const Text('Advanced'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (state.loading)
            Positioned.fill(
              child: ColoredBox(
                color: Colors.black.withValues(alpha: 0.25),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
