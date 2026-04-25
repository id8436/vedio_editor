class ExportPreset {
  const ExportPreset({
    required this.width,
    required this.height,
    required this.videoBitrate,
    required this.audioBitrate,
    this.fps = 30,
  });

  final int width;
  final int height;
  final String videoBitrate;
  final String audioBitrate;
  final int fps;
}

class FfmpegCommandBuilder {
  const FfmpegCommandBuilder();

  String buildSimple({
    required String inputPath,
    required String bgmPath,
    required String outputPath,
    required ExportPreset preset,
  }) {
    return '-y '
        '-i "$inputPath" '
        '-i "$bgmPath" '
        '-filter_complex "'
        '[0:a][1:a]sidechaincompress=threshold=0.03:ratio=8:attack=15:release=250[mix];'
        '[0:v]scale=${preset.width}:${preset.height},fps=${preset.fps}[v]" '
        '-map "[v]" -map "[mix]" '
        '-c:v libx264 -b:v ${preset.videoBitrate} '
        '-c:a aac -b:a ${preset.audioBitrate} '
        '"$outputPath"';
  }
}
