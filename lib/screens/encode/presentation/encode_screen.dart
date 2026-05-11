import 'dart:js_interop';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:web/web.dart' as web;

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';
import '../../editor/shared/editor_controller.dart';
import '../../../native/video_bridge_factory.dart';
import '../data/ffmpeg_command_builder.dart';
import '../../../app/widgets/page_scaffold.dart';

enum _Preset { hd720, fhd1080 }

class EncodeScreen extends ConsumerStatefulWidget {
  const EncodeScreen({super.key, this.input});

  final EditorSessionInput? input;

  @override
  ConsumerState<EncodeScreen> createState() => _EncodeScreenState();
}

class _EncodeScreenState extends ConsumerState<EncodeScreen> {
  _Preset _selectedPreset = _Preset.hd720;
  String _commandPreview = '';
  bool _exporting = false;
  double _progress = 0;
  String? _outputPath;
  String? _errorMessage;
  final List<String> _ownedWebInputUrls = <String>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _rebuildPreview();
      }
    });
  }

  @override
  void dispose() {
    _revokeOwnedWebInputUrls();
    super.dispose();
  }

  bool get _isWebExportUnsupported => false;

  /// On web, encoding takes a long time (WASM single-threaded).
  /// Show an informational banner instead of blocking export.
  bool get _showWebSlowWarning => kIsWeb;

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

  void _revokeOwnedWebInputUrls() {
    if (!kIsWeb || _ownedWebInputUrls.isEmpty) {
      return;
    }
    for (final String url in _ownedWebInputUrls) {
      web.URL.revokeObjectURL(url);
    }
    _ownedWebInputUrls.clear();
  }

  String _guessMime(String sourcePath, {required bool isPhoto, bool isAudio = false}) {
    final String lower = sourcePath.toLowerCase();
    if (isPhoto) {
      if (lower.endsWith('.png')) return 'image/png';
      if (lower.endsWith('.webp')) return 'image/webp';
      if (lower.endsWith('.gif')) return 'image/gif';
      if (lower.endsWith('.bmp')) return 'image/bmp';
      return 'image/jpeg';
    }
    if (isAudio) {
      if (lower.endsWith('.wav')) return 'audio/wav';
      if (lower.endsWith('.ogg')) return 'audio/ogg';
      if (lower.endsWith('.aac')) return 'audio/aac';
      if (lower.endsWith('.flac')) return 'audio/flac';
      if (lower.endsWith('.m4a') || lower.endsWith('.mp4')) return 'audio/mp4';
      return 'audio/mpeg';
    }
    if (lower.endsWith('.webm')) return 'video/webm';
    if (lower.endsWith('.mov')) return 'video/quicktime';
    if (lower.endsWith('.mkv')) return 'video/x-matroska';
    return 'video/mp4';
  }

  String _resolveWebExportSource(
    String sourcePath, {
    required Uint8List? bytes,
    required String mime,
  }) {
    if (sourcePath.startsWith('blob:') ||
        sourcePath.startsWith('http://') ||
        sourcePath.startsWith('https://') ||
        sourcePath.startsWith('data:')) {
      return sourcePath;
    }
    if (bytes == null || bytes.isEmpty) {
      return sourcePath;
    }
    final web.Blob blob = web.Blob(
      <JSAny>[bytes.toJS].toJS,
      web.BlobPropertyBag(type: mime),
    );
    final String objectUrl = web.URL.createObjectURL(blob);
    _ownedWebInputUrls.add(objectUrl);
    return objectUrl;
  }

  List<String> _missingWebExportInputs() {
    if (!kIsWeb || widget.input == null) {
      return const <String>[];
    }

    final Iterable<String> media = widget.input!.mediaItems
        .where((MediaItem item) => item.path.startsWith('web://') && (item.bytes == null || item.bytes!.isEmpty))
        .map((MediaItem item) => item.displayName);
    final Iterable<String> bgm = widget.input!.bgmItems
        .where((BgmItem item) => item.path.startsWith('web://') && (item.bytes == null || item.bytes!.isEmpty))
        .map((BgmItem item) => item.displayName);

    return <String>{...media, ...bgm}.toList(growable: false);
  }

  _PreparedExportInputs _prepareExportInputs(TimelineProject project) {
    final List<MediaItem> mediaItems = widget.input?.mediaItems ?? const <MediaItem>[];
    final List<BgmItem> inputBgmItems = widget.input?.bgmItems ?? const <BgmItem>[];

    if (!kIsWeb) {
      return _PreparedExportInputs(
        project: project,
        inputPaths: mediaItems.map((MediaItem item) => item.path).toList(growable: false),
        bgmItems: inputBgmItems,
        photoAssetPaths: mediaItems
            .where((MediaItem item) => item.isPhoto)
            .map((MediaItem item) => item.path)
            .toSet(),
      );
    }

    _revokeOwnedWebInputUrls();

    final Map<String, String> mediaPathMap = <String, String>{};
    final Set<String> photoAssetPaths = <String>{};
    for (final MediaItem item in mediaItems) {
      final String resolvedPath = _resolveWebExportSource(
        item.path,
        bytes: item.bytes,
        mime: _guessMime(item.name ?? item.displayName, isPhoto: item.isPhoto),
      );
      mediaPathMap[item.path] = resolvedPath;
      if (item.isPhoto) {
        photoAssetPaths.add(resolvedPath);
      }
    }

    final List<BgmItem> bgmItems = inputBgmItems
        .map(
          (BgmItem item) => item.copyWith(
            path: _resolveWebExportSource(
              item.path,
              bytes: item.bytes,
              mime: _guessMime(item.name ?? item.displayName, isPhoto: false, isAudio: true),
            ),
          ),
        )
        .toList(growable: false);

    final TimelineProject resolvedProject = project.copyWith(
      clips: project.clips
          .map(
            (TimelineClip clip) => clip.copyWith(
              assetId: mediaPathMap[clip.assetId] ?? clip.assetId,
            ),
          )
          .toList(growable: false),
      bgmPaths: bgmItems.map((BgmItem item) => item.path).toList(growable: false),
    );

    return _PreparedExportInputs(
      project: resolvedProject,
      inputPaths: mediaItems
          .map((MediaItem item) => mediaPathMap[item.path] ?? item.path)
          .toList(growable: false),
      bgmItems: bgmItems,
      photoAssetPaths: photoAssetPaths,
    );
  }

  void _rebuildPreview() {
    final TimelineProject rawProject = ref.read(editorControllerProvider).project;
    final _PreparedExportInputs prepared = _prepareExportInputs(rawProject);
    final TimelineProject project = prepared.project;
    final List<String> inputPaths = prepared.inputPaths.isNotEmpty
        ? prepared.inputPaths
        : <String>['/input/source.mp4'];
    final List<String> bgmPaths = project.bgmPaths;
    final List<BgmItem> bgmItems = prepared.bgmItems;
    final bool bgmLoop =
        project.clips.isNotEmpty ? project.shouldRepeatBgm : (widget.input?.shouldRepeatBgm ?? false);
    final String audioMixPreset =
        (widget.input?.audioMixPreset ?? ImportAudioMixPreset.balanced).name;
    final Set<String> photoAssetPaths = prepared.photoAssetPaths;
    final String cmd = const FfmpegCommandBuilder().build(
      inputPaths: inputPaths,
      bgmPaths: bgmPaths,
      bgmItems: bgmItems,
      bgmLoop: bgmLoop,
      audioMixPreset: audioMixPreset,
      outputPath: _resolvedOutputPath,
      preset: _currentPreset,
      project: project.clips.isEmpty ? null : project,
      photoAssetPaths: photoAssetPaths,
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

    final List<String> missingWebInputs = _missingWebExportInputs();
    if (missingWebInputs.isNotEmpty) {
      setState(() {
        _errorMessage =
            'Browser export needs the original imported files in memory. Re-import these files in this browser session first: '
            '${missingWebInputs.join(', ')}';
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
    final EditorState editorState = ref.watch(editorControllerProvider);
    final TimelineProject project = editorState.project;
    final int overlayCount = project.clips.where((TimelineClip clip) => clip.hasTextOverlay).length;

    return PageScaffold(
      activeRoute: '/export',
      title: 'BeatClip - Export',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (_showWebSlowWarning) ...<Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: const Text(
                  '⚠️ 브라우저 인코딩은 ffmpeg.wasm을 사용합니다.\n'
                  '첫 실행 시 ~30 MB WASM 코어를 다운로드하며, 인코딩이 네이티브보다 10–30배 느릴 수 있습니다.\n'
                  '완료 후 자동으로 다운로드됩니다.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 12),
            ],
            // ?�?� Source info ?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�
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
              Text(
                'Timeline: ${project.clips.isEmpty ? widget.input!.mediaItems.length : project.clips.length} clip(s) · Text overlays: $overlayCount',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 12),
            ],

            // ?�?� Preset selection ?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�
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

            // ?�?� Command preview ?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�
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

            // ?�?� Progress / output ?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�
            if (_exporting) ...<Widget>[
              LinearProgressIndicator(value: _progress == 0 ? null : _progress),
              const SizedBox(height: 4),
              Text(
                _progress > 0
                    ? 'Encoding ${(_progress * 100).toStringAsFixed(0)}%'
                    : 'Starting render...',
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

            // ?�?� Action button ?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed:
                    (_exporting || _isWebExportUnsupported) ? null : _startExport,
                icon: const Icon(Icons.file_download),
                label: Text(_exporting ? 'Exporting...' : 'Export Video'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PreparedExportInputs {
  const _PreparedExportInputs({
    required this.project,
    required this.inputPaths,
    required this.bgmItems,
    required this.photoAssetPaths,
  });

  final TimelineProject project;
  final List<String> inputPaths;
  final List<BgmItem> bgmItems;
  final Set<String> photoAssetPaths;
}

