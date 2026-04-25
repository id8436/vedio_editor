import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/models/editor_session_input.dart';
import 'editor_controller.dart';
import 'widgets/timeline_view.dart';
import 'widgets/video_preview.dart';

class EditorScreen extends ConsumerStatefulWidget {
  const EditorScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  ConsumerState<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends ConsumerState<EditorScreen> {
  String _appVersion = 'unknown';

  int _selectedBoundaryClipIndex = 0;
  int? _playheadMs;
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
    final String base = widget.input?.videoName ?? widget.input?.videoPath ?? '';
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

  Future<void> _showTroubleshootingTips() async {
    final String fallbackReason =
        _extractDebugValue('fallback_reason') ?? stateOrDebugFallbackReason();
    final String category = _detectIssueCategory(fallbackReason);
    final String ffmpegCommand = _recommendedFfmpegCommand(category);
    final List<String> categoryTips = _tipsForCategory(category);
    final String fullReport = _buildTroubleshootingReport(
      category: category,
      ffmpegCommand: ffmpegCommand,
    );
    final String fullReportJson = _buildTroubleshootingJsonReport(
      category: category,
      ffmpegCommand: ffmpegCommand,
    );
    final String platform = _runtimePlatformLabel();
    final String ext = _inputExtension();

    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Troubleshooting Tips'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    Chip(label: Text('issue: $category')),
                    Chip(label: Text('platform: $platform')),
                    Chip(label: Text('ext: $ext')),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '1. Re-export media as MP4 (H.264 video + AAC audio).\n'
                  '2. Try audio-only import (MP3 or WAV) to isolate codec issues.\n'
                  '3. Use 44.1kHz stereo and constant bitrate where possible.\n'
                  '4. Suggested ffmpeg command:\n$ffmpegCommand\n\n'
                  'If it still fails, click Copy details and share the output for debugging.',
                ),
                const SizedBox(height: 10),
                const Text('Category-specific tips:'),
                const SizedBox(height: 4),
                ...List<Widget>.generate(
                  categoryTips.length,
                  (int i) => Text('${i + 1}. ${categoryTips[i]}'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: ffmpegCommand));
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('ffmpeg command copied'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.copy, size: 16),
              label: const Text('Copy command'),
            ),
            TextButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: fullReport));
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Full troubleshooting report copied'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.article_outlined, size: 16),
              label: const Text('Copy full report'),
            ),
            TextButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: fullReportJson));
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('JSON troubleshooting report copied'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.data_object, size: 16),
              label: const Text('Copy JSON report'),
            ),
            TextButton.icon(
              onPressed: () async {
                await Share.share(
                  fullReportJson,
                  subject: 'BeatClip troubleshooting report ($_appVersion)',
                );
              },
              icon: const Icon(Icons.share, size: 16),
              label: const Text('Share report'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('BeatClip - Timeline Editor'),
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
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            if (state.analysisNotice != null) ...<Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      state.analysisNotice!,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 8,
                      runSpacing: 6,
                      children: <Widget>[
                        OutlinedButton.icon(
                          onPressed: (widget.input == null || state.loading)
                              ? null
                              : () {
                                  controller.initializeFromImport(widget.input!);
                                },
                          icon: const Icon(Icons.refresh, size: 16),
                          label: const Text('Retry analysis'),
                        ),
                        OutlinedButton.icon(
                          onPressed: () => context.go('/import'),
                          icon: const Icon(Icons.upload_file, size: 16),
                          label: const Text('Pick another file'),
                        ),
                        OutlinedButton.icon(
                          onPressed: state.analysisDebugInfo == null ||
                                  state.analysisDebugInfo!.isEmpty
                              ? null
                              : () async {
                                  final String details =
                                      _buildCopyDetails(state.analysisDebugInfo!);
                                  await Clipboard.setData(
                                    ClipboardData(text: details),
                                  );
                                  if (!context.mounted) {
                                    return;
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Technical details copied'),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                },
                          icon: const Icon(Icons.copy, size: 16),
                          label: const Text('Copy details'),
                        ),
                        OutlinedButton.icon(
                          onPressed: _showTroubleshootingTips,
                          icon: const Icon(Icons.help_outline, size: 16),
                          label: const Text('Troubleshooting tips'),
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          tooltip: 'Dismiss notice',
                          onPressed: controller.clearAnalysisNotice,
                          icon: const Icon(Icons.close, size: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
            if (widget.input != null)
              Text(
                'Source: ${widget.input!.videoPath}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            if (widget.input != null) const SizedBox(height: 8),
            if (widget.input != null)
              VideoPreview(
                key: _previewKey,
                videoPath: widget.input!.videoPath,
                startMs: state.project.clips.isNotEmpty
                    ? state.project.clips.first.timelineInMs
                    : 0,
                endMs: state.project.clips.isNotEmpty
                    ? state.project.clips.last.timelineOutMs
                    : null,
                onPositionChanged: (int ms) {
                  if (_playheadMs != ms) setState(() => _playheadMs = ms);
                },
              ),
            if (widget.input != null) const SizedBox(height: 8),
            Text('Target duration: ${state.project.targetDurationMs / 1000}s'),
            Slider(
              min: 5,
              max: 120,
              divisions: 115,
              value: state.project.targetDurationMs / 1000,
              label: '${state.project.targetDurationMs ~/ 1000}s',
              onChanged: (double sec) {
                controller.updateTargetDurationMs((sec * 1000).round());
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Highlights (score)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 56,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.project.highlights.length,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
                itemBuilder: (BuildContext context, int index) {
                  final item = state.project.highlights[index];
                  return Container(
                    width: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange.withValues(alpha: 0.16),
                      border: Border.all(color: Colors.orange.shade300),
                    ),
                    child: Text('${item.startMs ~/ 1000}-${item.endMs ~/ 1000}s\n${item.score.toStringAsFixed(0)}'),
                  );
                },
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: <Widget>[
                const Text('Adjust boundary:'),
                const SizedBox(width: 12),
                DropdownButton<int>(
                  value: state.project.clips.length <= 1
                      ? 0
                      : _selectedBoundaryClipIndex.clamp(0, state.project.clips.length - 2),
                  items: List<DropdownMenuItem<int>>.generate(
                    (state.project.clips.length - 1).clamp(1, 9999),
                    (int index) => DropdownMenuItem<int>(
                      value: index,
                      child: Text('Cut ${index + 1}'),
                    ),
                  ),
                  onChanged: (int? value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      _selectedBoundaryClipIndex = value;
                    });
                  },
                ),
                const SizedBox(width: 12),
                Text('Drag handle on clip edge / lock with icon'),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: <Widget>[
                const Text('Beat snap'),
                const SizedBox(width: 8),
                Switch(
                  value: state.beatSnapEnabled,
                  onChanged: controller.setBeatSnapEnabled,
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
                    }
                  : null,
              label: '${state.beatSnapThresholdMs}ms',
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TimelineView(
                project: state.project,
                selectedBoundaryClipIndex: _selectedBoundaryClipIndex,
                lockedBoundaryIndices: state.lockedBoundaryIndices,
                playheadMs: _playheadMs,
                onSeekRequest: (int ms) {
                  _previewKey.currentState?.seekToMs(ms);
                },
                onSelectBoundary: (int clipIndex) {
                  setState(() {
                    _selectedBoundaryClipIndex = clipIndex;
                  });
                },
                onToggleBoundaryLock: controller.toggleBoundaryLock,
                onNudgeBoundary: (int clipIndex, int deltaMs) {
                  controller.dragCutPoint(
                    clipIndex: clipIndex,
                    deltaMs: deltaMs,
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.go('/export', extra: widget.input),
                child: const Text('Continue to Export'),
              ),
            ),
              ],
            ),
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
