import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/editor_session_input.dart';

class ImportScreen extends StatefulWidget {
  const ImportScreen({super.key});

  @override
  State<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  String? _pickedVideo;
  String? _pickedVideoName;
  Uint8List? _pickedVideoBytes;
  String? _pickedBgm;
  String? _pickedBgmName;
  Uint8List? _pickedBgmBytes;

  Future<void> _pickVideo() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.video,
      allowMultiple: false,
      withData: true,
    );
    if (result == null) return;
    final PlatformFile file = result.files.single;
    final String? ref =
        file.path ?? (file.name.isNotEmpty ? 'web://${file.name}' : null);
    if (ref == null) return;
    setState(() {
      _pickedVideo = ref;
      _pickedVideoName = file.name;
      _pickedVideoBytes = file.bytes;
    });
  }

  Future<void> _pickBgm() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.audio,
      allowMultiple: false,
      withData: true,
    );
    if (result == null) return;
    final PlatformFile file = result.files.single;
    final String? ref =
        file.path ?? (file.name.isNotEmpty ? 'web://${file.name}' : null);
    if (ref == null) return;
    setState(() {
      _pickedBgm = ref;
      _pickedBgmName = file.name;
      _pickedBgmBytes = file.bytes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BeatClip - Import')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Pick a source video and an optional BGM, then open the timeline editor.',
            ),
            const SizedBox(height: 16),
            _FileTile(
              icon: Icons.video_file,
              label: 'Source Video',
              path: _pickedVideo,
              isRequired: true,
              onPick: _pickVideo,
              onClear: () => setState(() {
                _pickedVideo = null;
                _pickedVideoName = null;
                _pickedVideoBytes = null;
              }),
            ),
            const SizedBox(height: 12),
            _FileTile(
              icon: Icons.music_note,
              label: 'BGM (Optional)',
              path: _pickedBgm,
              isRequired: false,
              onPick: _pickBgm,
              onClear: () => setState(() {
                _pickedBgm = null;
                _pickedBgmName = null;
                _pickedBgmBytes = null;
              }),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _pickedVideo == null
                    ? null
                    : () => context.go(
                          '/editor',
                          extra: EditorSessionInput(
                            videoPath: _pickedVideo!,
                            videoName: _pickedVideoName,
                            videoBytes: _pickedVideoBytes,
                            bgmPath: _pickedBgm,
                            bgmName: _pickedBgmName,
                            bgmBytes: _pickedBgmBytes,
                          ),
                        ),
                child: const Text('Analyze & Open Editor'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── _FileTile ─────────────────────────────────────────────────────────────

class _FileTile extends StatelessWidget {
  const _FileTile({
    required this.icon,
    required this.label,
    required this.path,
    required this.isRequired,
    required this.onPick,
    required this.onClear,
  });

  final IconData icon;
  final String label;
  final String? path;
  final bool isRequired;
  final VoidCallback onPick;
  final VoidCallback onClear;

  String get _displayName {
    if (path == null) return '';
    if (path!.startsWith('web://')) return path!.substring(6);
    final int slash = path!.lastIndexOf(RegExp(r'[/\\]'));
    return slash >= 0 ? path!.substring(slash + 1) : path!;
  }

  @override
  Widget build(BuildContext context) {
    final bool picked = path != null;
    return Card(
      elevation: picked ? 2 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: picked ? Colors.teal.shade300 : Colors.grey.shade300,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              picked ? Colors.teal.shade50 : Colors.grey.shade100,
          child: Icon(icon, color: picked ? Colors.teal : Colors.grey),
        ),
        title: Text(label),
        subtitle: picked
            ? Text(
                _displayName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              )
            : Text(
                isRequired
                    ? 'Required — tap to select'
                    : 'Optional — tap to select',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
              ),
        trailing: picked
            ? IconButton(
                icon: const Icon(Icons.close),
                tooltip: 'Remove',
                onPressed: onClear,
              )
            : null,
        onTap: onPick,
      ),
    );
  }
}
