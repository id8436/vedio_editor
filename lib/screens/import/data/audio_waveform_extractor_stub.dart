import 'dart:typed_data';

class AudioWaveformData {
  const AudioWaveformData({
    required this.samples,
    required this.durationMs,
  });

  final List<double> samples;
  final int durationMs;
}

Future<AudioWaveformData?> extractAudioWaveform(
  Uint8List? bytes, {
  required String sourcePath,
  required String fileName,
  int sampleCount = 180,
}) async {
  return null;
}
