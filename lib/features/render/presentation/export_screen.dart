import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../native/video_bridge_factory.dart';
import '../data/ffmpeg_command_builder.dart';
import '../../../app/widgets/app_scaffold.dart';

enum _Preset { hd720, fhd1080 }

class ExportScreen extends StatefulWidget {
  const ExportScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  State<ExportScreen> createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  _Preset _selectedPreset = _Preset.hd720;
  String _commandPreview = '';
  bool _exporting = false;
  double _progress = 0;
  String? _outputPath;
  String? _errorMessage;

  bool get _isWebExportUnsupported => kIsWeb;

  static const Map<_Preset, ExportPreset> _presets = <_Preset, ExportPreset>{
    _Preset.hd720: ExportPreset(
      width: 1280,
      height: 720,
      videoBitrate: '5M',
      audioBitrate: '192k',
      fps: 30,
    ),
    _Preset.fhd1080: ExportPreset(
      width: 1920,
      height: 1080,
      videoBitrate: '10M',
      audioBitrate: '256k',
      fps: 30,
    ),
  };

  ExportPreset get _currentPreset {
    final ExportPreset base = _presets[_selectedPreset]!;
    final CanvasAspectPreset aspect =
        widget.input?.canvasAspectPreset ?? CanvasAspectPreset.ratio9x16;
    switch (aspect) {
      case CanvasAspectPreset.ratio9x16:
        return ExportPreset(
          width: _selectedPreset == _Preset.hd720 ? 720 : 1080,
          height: _selectedPreset == _Preset.hd720 ? 1280 : 1920,
          videoBitrate: base.videoBitrate,
          audioBitrate: base.audioBitrate,
          fps: base.fps,
        );
      case CanvasAspectPreset.ratio1x1:
        return ExportPreset(
          width: _selectedPreset == _Preset.hd720 ? 720 : 1080,
          height: _selectedPreset == _Preset.hd720 ? 720 : 1080,
          videoBitrate: base.videoBitrate,
          audioBitrate: base.audioBitrate,
          fps: base.fps,
        );
      case CanvasAspectPreset.ratio16x9:
        return base;
    }
  }

  String get _outputFileName =>
      _selectedPreset == _Preset.hd720 ? 'beatclip_720p.mp4' : 'beatclip_1080p.mp4';

  String get _resolvedOutputPath {
    final String? videoPath = widget.input?.primaryVideoPath;
    if (videoPath == null || videoPath.isEmpty) return '/output/$_outputFileName';
    // Place output next to source, unless it is a web:// path.
    if (videoPath.startsWith('web://')) return '/output/$_outputFileName';
    final int lastSlash = videoPath.lastIndexOf(RegExp(r'[/\\]'));
    final String dir = lastSlash >= 0 ? videoPath.substring(0, lastSlash + 1) : '';
    return '$dir$_outputFileName';
  }

  void _rebuildPreview() {
    final List<String> inputPaths = widget.input?.mediaItems
            .map((m) => m.path)
            .toList() ??
        <String>['/input/source.mp4'];
    final List<String> bgmPaths = widget.input?.bgmItems
            .map((b) => b.path)
            .toList() ??
        <String>[];
    final bool bgmLoop = widget.input?.bgmLoop ?? true;
    final String audioMixPreset =
        (widget.input?.audioMixPreset ?? ImportAudioMixPreset.balanced).name;
    final String cmd = const FfmpegCommandBuilder().build(
      inputPaths: inputPaths,
      bgmPaths: bgmPaths,
      bgmLoop: bgmLoop,
      audioMixPreset: audioMixPreset,
      outputPath: _resolvedOutputPath,
      preset: _currentPreset,
    );
    setState(() {
      _commandPreview = cmd;
      _outputPath = null;
      _errorMessage = null;
    });
  }

  Future<void> _shareOutput(String path) async {
    await Share.shareXFiles(
      <XFile>[XFile(path)],
      subject: 'BeatClip export',
    );
  }

  Future<void> _startExport() async {
    if (_isWebExportUnsupported) {
      setState(() {
        _errorMessage =
            'Export is not supported in browser yet. Use Android/iOS or add server/ffmpeg.wasm rendering.';
      });
      return;
    }

    if (_commandPreview.isEmpty) _rebuildPreview();
    setState(() {
      _exporting = true;
      _progress = 0;
      _outputPath = null;
      _errorMessage = null;
    });

    try {
      final String result = await createVideoBridge().render(
        _commandPreview,
        onProgress: (double p) {
          if (mounted) setState(() => _progress = p);
        },
      );
      if (mounted) {
        setState(() {
          _exporting = false;
          _progress = 1;
          _outputPath = result.isNotEmpty ? result : _resolvedOutputPath;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _exporting = false;
          _errorMessage = e.toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      activeRoute: '/export',
      title: 'BeatClip - Export',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (_isWebExportUnsupported) ...<Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber.shade300),
                ),
                child: const Text(
                  'Web export is currently unavailable. You can still preview analysis and timeline editing in browser.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 12),
            ],
            // ── Source info ──────────────────────────────────────────────
            if (widget.input != null) ...<Widget>[
              Text(
                'Source: ${widget.input!.mediaItems.length} item(s)',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'BGM: ${widget.input!.bgmItems.isEmpty ? 'None' : widget.input!.bgmItems.length.toString()}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                'Canvas: ${widget.input!.canvasAspectPreset.name} · Mix: ${widget.input!.audioMixPreset.name}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 12),
            ],

            // ── Preset selection ─────────────────────────────────────────
            Text('Quality', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 6),
            SegmentedButton<_Preset>(
              segments: const <ButtonSegment<_Preset>>[
                ButtonSegment<_Preset>(
                  value: _Preset.hd720,
                  label: Text('HD 720p'),
                  icon: Icon(Icons.hd),
                ),
                ButtonSegment<_Preset>(
                  value: _Preset.fhd1080,
                  label: Text('FHD 1080p'),
                  icon: Icon(Icons.smart_display),
                ),
              ],
              selected: <_Preset>{_selectedPreset},
              onSelectionChanged: _exporting
                  ? null
                  : (Set<_Preset> selected) {
                      setState(() => _selectedPreset = selected.first);
                      _rebuildPreview();
                    },
            ),
            const SizedBox(height: 12),

            // ── Command preview ───────────────────────────────────────────
            Row(
              children: <Widget>[
                Text('FFmpeg Command', style: Theme.of(context).textTheme.titleMedium),
                const Spacer(),
                TextButton.icon(
                  onPressed: _exporting ? null : _rebuildPreview,
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Rebuild'),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade50,
                ),
                child: SingleChildScrollView(
                  child: SelectableText(
                    _commandPreview.isEmpty ? 'Press "Rebuild" to generate.' : _commandPreview,
                    style: const TextStyle(fontSize: 11, fontFamily: 'monospace'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // ── Progress / output ─────────────────────────────────────────
            if (_exporting) ...<Widget>[
              LinearProgressIndicator(value: _progress == 0 ? null : _progress),
              const SizedBox(height: 4),
              Text(
                _progress > 0
                    ? 'Encoding… ${(_progress * 100).toStringAsFixed(0)}%'
                    : 'Starting render…',
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 8),
            ],

            if (_outputPath != null) ...<Widget>[
              const Divider(),
              Row(
                children: <Widget>[
                  const Icon(Icons.check_circle, color: Colors.green),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Saved: $_outputPath',
                      style: const TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (!kIsWeb)
                    IconButton(
                      icon: const Icon(Icons.share),
                      tooltip: 'Share',
                      onPressed: () => _shareOutput(_outputPath!),
                    ),
                ],
              ),
              const SizedBox(height: 8),
            ],

            if (_errorMessage != null) ...<Widget>[
              const Divider(),
              Row(
                children: <Widget>[
                  const Icon(Icons.error, color: Colors.red),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _errorMessage!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],

            // ── Action button ─────────────────────────────────────────────
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed:
                    (_exporting || _isWebExportUnsupported) ? null : _startExport,
                icon: const Icon(Icons.file_download),
                label: Text(_exporting ? 'Exporting…' : 'Export Video'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

