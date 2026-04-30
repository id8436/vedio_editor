import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/timeline_models.dart';
import 'editor_controller.dart';
import '../../../app/widgets/app_scaffold.dart';
import 'widgets/video_preview.dart';

enum _ClipOptionTab { audio, filter, text, timing }

class ClipEditorScreen extends ConsumerStatefulWidget {
  const ClipEditorScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  ConsumerState<ClipEditorScreen> createState() => _ClipEditorScreenState();
}

class _ClipEditorScreenState extends ConsumerState<ClipEditorScreen> {
  String _appVersion = 'unknown';

  int _selectedClipIndex = 0;
  int? _playheadMs;
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

  String _inputExtension() {
    final String base = widget.input?.primaryVideoName ??
        widget.input?.primaryVideoPath ??
        '';
    final int dot = base.lastIndexOf('.');
    if (dot < 0 || dot >= base.length - 1) {
      return 'unknown';
    }
    return base.substring(dot + 1).toLowerCase();
  }

  String _buildCopyDetails(String rawDetails) {
    return <String>[
      rawDetails,
      'app_version=$_appVersion',
      'runtime_platform=${_runtimePlatformLabel()}',
      'screen=editor',
      'timestamp=${DateTime.now().toIso8601String()}',
    ].join('\n');
  }

  String _buildTroubleshootingReport({
    required String category,
    required String ffmpegCommand,
  }) {
    final String raw = ref.read(editorControllerProvider).analysisDebugInfo ?? '';
    final String details = _buildCopyDetails(raw);
    return <String>[
      'issue_category=$category',
      'recommended_ffmpeg=$ffmpegCommand',
      details,
    ].join('\n');
  }

  Map<String, String> _debugLinesToMap(String rawDetails) {
    final Map<String, String> out = <String, String>{};
    for (final String line in rawDetails.split('\n')) {
      final int idx = line.indexOf('=');
      if (idx <= 0 || idx >= line.length - 1) {
        continue;
      }
      out[line.substring(0, idx)] = line.substring(idx + 1);
    }
    return out;
  }

  String _buildTroubleshootingJsonReport({
    required String category,
    required String ffmpegCommand,
  }) {
    final String raw = ref.read(editorControllerProvider).analysisDebugInfo ?? '';
    final String details = _buildCopyDetails(raw);
    final Map<String, String> parsed = _debugLinesToMap(details);
    final Map<String, Object?> json = <String, Object?>{
      'app_version': _appVersion,
      'issue_category': category,
      'recommended_ffmpeg': ffmpegCommand,
      'context': parsed,
    };
    return const JsonEncoder.withIndent('  ').convert(json);
  }

  List<String> _tipsForCategory(String category) {
    switch (category) {
      case 'missing_input_reference':
        return <String>[
          'Re-pick the source file from Import and avoid moving/deleting it during analysis.',
          'In browser, refresh once and re-select the file so bytes are reloaded.',
          'Try a smaller sample file first to confirm pipeline health.',
        ];
      case 'aac_variant_decode':
        return <String>[
          'Re-encode audio to AAC-LC (not HE-AAC/ALAC) with 44.1kHz stereo.',
          'If source is iPhone MOV, export to MP4(H.264/AAC) before import.',
          'Avoid variable or unusual channel layouts during troubleshooting.',
        ];
      case 'container_or_codec':
        return <String>[
          'Convert MKV/MOV/AVI into MP4(H.264/AAC) and retry.',
          'Check browser codec support differences (Chrome vs Safari/Edge).',
          'Prefer baseline/main profile during compatibility checks.',
        ];
      case 'webm_codec':
        return <String>[
          'Convert WebM audio to AAC for more consistent browser decoding.',
          'If VP9/Opus source fails, use MP4(H.264/AAC) temporary conversion.',
          'Keep bitrate moderate while validating decode path.',
        ];
      case 'flac_support':
        return <String>[
          'Convert FLAC to WAV or AAC before import for maximum compatibility.',
          'Test playback in browser first; decode support can vary by platform.',
          'Use stereo 44.1kHz to minimize edge-case decoder behavior.',
        ];
      case 'decode_failure':
      case 'demo_fallback':
        return <String>[
          'Try MP3/WAV audio-only import to isolate whether video container is the issue.',
          'Re-export with simple settings: H.264 video + AAC audio.',
          'Share copied details for deterministic debugging if issue persists.',
        ];
      default:
        return <String>[
          'Try MP4(H.264/AAC) or MP3/WAV and re-import.',
          'Keep 44.1kHz stereo with constant bitrate where possible.',
          'Use Copy details and Copy full report to capture diagnostics.',
        ];
    }
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

  String _detectIssueCategory(String reason) {
    final String r = reason.toLowerCase();
    if (r.contains('missing url/bytes')) return 'missing_input_reference';
    if (r.contains('unsupported aac/alac')) return 'aac_variant_decode';
    if (r.contains('container/codec')) return 'container_or_codec';
    if (r.contains('webm')) return 'webm_codec';
    if (r.contains('flac')) return 'flac_support';
    if (r.contains('decode failed')) return 'decode_failure';
    if (r.contains('demo_fallback')) return 'demo_fallback';
    return 'unknown';
  }

  String _recommendedFfmpegCommand(String category) {
    switch (category) {
      case 'aac_variant_decode':
      case 'container_or_codec':
      case 'decode_failure':
      case 'demo_fallback':
        return 'ffmpeg -i input.ext -c:v libx264 -profile:v main -pix_fmt yuv420p -c:a aac -ar 44100 -ac 2 -b:a 192k output.mp4';
      case 'webm_codec':
        return 'ffmpeg -i input.webm -c:v libx264 -c:a aac -ar 44100 -ac 2 -b:a 160k output.mp4';
      case 'flac_support':
        return 'ffmpeg -i input.flac -c:a aac -ar 44100 -ac 2 -b:a 192k output.m4a';
      case 'missing_input_reference':
        return 'ffmpeg -i input.ext -c copy output.mp4  # then re-pick file in browser';
      default:
        return 'ffmpeg -i input.ext -c:v libx264 -c:a aac -ar 44100 -ac 2 output.mp4';
    }
  }

  String _filterLabel(ClipFilterEffect effect) {
    switch (effect) {
      case ClipFilterEffect.none:
        return 'None';
      case ClipFilterEffect.warm:
        return 'Warm';
      case ClipFilterEffect.cool:
        return 'Cool';
      case ClipFilterEffect.cinematic:
        return 'Cinematic';
      case ClipFilterEffect.mono:
        return 'Mono';
    }
  }

  String _textPresetLabel(ClipTextPreset preset) {
    switch (preset) {
      case ClipTextPreset.none:
        return 'None';
      case ClipTextPreset.titleCard:
        return 'Title Card';
      case ClipTextPreset.lowerThird:
        return 'Lower Third';
      case ClipTextPreset.caption:
        return 'Caption';
    }
  }

  String _assetLabel(String assetId) {
    final int slash = assetId.lastIndexOf(RegExp(r'[/\\]'));
    final String name = slash >= 0 ? assetId.substring(slash + 1) : assetId;
    return name.isEmpty ? 'media' : name;
  }

  void _selectClip(int clipIndex, TimelineClip clip) {
    setState(() {
      _selectedClipIndex = clipIndex;
    });
    _previewKey.currentState?.seekToMs(clip.timelineInMs);
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
                  if (tab == _ClipOptionTab.audio)
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Audio ducking'),
                      subtitle: const Text('Lower BGM while this clip is playing'),
                      value: clip.audioDucking,
                      onChanged: (bool value) {
                        controller.updateClipOptions(
                          clipIndex: clipIndex,
                          audioDucking: value,
                        );
                        setState(() {});
                      },
                    ),
                  if (tab == _ClipOptionTab.filter)
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: ClipFilterEffect.values
                          .map(
                            (ClipFilterEffect fx) => ChoiceChip(
                              label: Text(_filterLabel(fx)),
                              selected: clip.filterEffect == fx,
                              onSelected: (_) {
                                controller.updateClipOptions(
                                  clipIndex: clipIndex,
                                  filterEffect: fx,
                                );
                                setState(() {});
                              },
                            ),
                          )
                          .toList(),
                    ),
                  if (tab == _ClipOptionTab.text)
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: ClipTextPreset.values
                          .map(
                            (ClipTextPreset preset) => ChoiceChip(
                              label: Text(_textPresetLabel(preset)),
                              selected: clip.textPreset == preset,
                              onSelected: (_) {
                                controller.updateClipOptions(
                                  clipIndex: clipIndex,
                                  textPreset: preset,
                                );
                                setState(() {});
                              },
                            ),
                          )
                          .toList(),
                    ),
                  if (tab == _ClipOptionTab.timing) ...<Widget>[
                    Text('Clip Length (Beat-based: ${state.project.beats.length} beats)'),
                    const SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              _trimClipDuration(
                                controller: controller,
                                clipIndex: clipIndex,
                                makeLonger: false,
                              );
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
                              _trimClipDuration(
                                controller: controller,
                                clipIndex: clipIndex,
                                makeLonger: true,
                              );
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
                          this.context.go('/editor-advanced?preserve=1', extra: widget.input);
                        },
                        icon: const Icon(Icons.tune),
                        label: const Text('Open Advanced Editor'),
                      ),
                    ),
                  ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
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

    return AppScaffold(
      activeRoute: '/editor',
      title: 'BeatClip - Editor (Clip)',
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
              // MAIN PREVIEW AREA (85% of remaining space) - Premiere Clip style
              Expanded(
                flex: 85,
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
                        child: const Center(
                          child: Text(
                            'No clips',
                            style: TextStyle(color: Colors.white70, fontSize: 16),
                          ),
                        ),
                      ),
              ),
              // TIMELINE AREA (15% of remaining space) - Compact Premiere Clip style
              Expanded(
                flex: 15,
                child: Container(
                  color: const Color(0xFF0F0F0F),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: _ClipSequenceStrip(
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
                            ? _CompactOptionDock(
                                clip: selectedClip,
                                filterLabel: _filterLabel,
                                textLabel: _textPresetLabel,
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

class _ClipSequenceStrip extends StatelessWidget {
  const _ClipSequenceStrip({
    required this.clips,
    required this.beats,
    required this.selectedClipIndex,
    required this.onSelectClip,
  });

  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final int selectedClipIndex;
  final ValueChanged<int> onSelectClip;

  @override
  Widget build(BuildContext context) {
    if (clips.isEmpty) {
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        children: List<Widget>.generate(clips.length, (int index) {
          final bool selected = index == selectedClipIndex;
          final TimelineClip clip = clips[index];

          return GestureDetector(
            onTap: () => onSelectClip(index),
            child: Container(
              width: 80,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: selected ? const Color(0xFF7A32C5) : const Color(0xFF3A3A3A),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: selected ? const Color(0xFF9752D8) : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  // Clip label
                  Positioned(
                    left: 4,
                    top: 4,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Duration
                  Positioned(
                    right: 4,
                    bottom: 4,
                    child: Text(
                      '${(clip.durationMs / 1000).toStringAsFixed(1)}s',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _CompactOptionDock extends StatelessWidget {
  const _CompactOptionDock({
    required this.clip,
    required this.filterLabel,
    required this.textLabel,
    required this.onTrimShorter,
    required this.onTrimLonger,
    required this.onTapAudio,
    required this.onTapFilter,
    required this.onTapText,
    required this.onTapMore,
  });

  final TimelineClip clip;
  final String Function(ClipFilterEffect) filterLabel;
  final String Function(ClipTextPreset) textLabel;
  final VoidCallback onTrimShorter;
  final VoidCallback onTrimLonger;
  final VoidCallback onTapAudio;
  final VoidCallback onTapFilter;
  final VoidCallback onTapText;
  final VoidCallback onTapMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1A),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _DockIconButton(
              icon: Icons.remove,
              label: 'Shorter',
              active: false,
              onTap: onTrimShorter,
            ),
            _DockIconButton(
              icon: Icons.add,
              label: 'Longer',
              active: false,
              onTap: onTrimLonger,
            ),
            Container(
              width: 1,
              height: 18,
              color: Colors.white10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
            ),
            _DockIconButton(
              icon: clip.audioDucking ? Icons.graphic_eq : Icons.music_note,
              label: 'Audio',
              active: clip.audioDucking,
              onTap: onTapAudio,
            ),
            _DockIconButton(
              icon: Icons.tune,
              label: 'Filter',
              active: clip.filterEffect != ClipFilterEffect.none,
              onTap: onTapFilter,
            ),
            _DockIconButton(
              icon: Icons.text_fields,
              label: 'Text',
              active: clip.textPreset != ClipTextPreset.none,
              onTap: onTapText,
            ),
            const Spacer(),
            IconButton(
              visualDensity: VisualDensity.compact,
              iconSize: 18,
              onPressed: onTapMore,
              icon: const Icon(Icons.more_horiz, color: Colors.white60),
              tooltip: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

class _DockIconButton extends StatelessWidget {
  const _DockIconButton({
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: active ? Colors.white.withValues(alpha: 0.08) : Colors.transparent,
          ),
          child: Icon(
            icon,
            size: 18,
            color: active ? const Color(0xFF9752D8) : Colors.white60,
          ),
        ),
      ),
    );
  }
}
