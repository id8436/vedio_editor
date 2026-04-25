import 'dart:typed_data';

class EditorSessionInput {
  const EditorSessionInput({
    required this.videoPath,
    this.videoName,
    this.videoBytes,
    this.bgmPath,
    this.bgmName,
    this.bgmBytes,
  });

  final String videoPath;
  final String? videoName;
  final Uint8List? videoBytes;
  final String? bgmPath;
  final String? bgmName;
  final Uint8List? bgmBytes;
}
