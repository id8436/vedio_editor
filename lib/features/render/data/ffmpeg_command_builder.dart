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

  /// Builds an ffmpeg command that:
  /// - Concatenates [inputPaths] (videos and/or photos) into one stream.
  /// - Mixes in BGM from [bgmPaths] (looped or chained depending on [bgmLoop]).
  /// - Encodes to [outputPath] using [preset].
  String build({
    required List<String> inputPaths,
    required String outputPath,
    required ExportPreset preset,
    List<String> bgmPaths = const <String>[],
    bool bgmLoop = true,
    String audioMixPreset = 'balanced',
  }) {
    if (inputPaths.isEmpty) inputPaths = <String>['/input/source.mp4'];

    final StringBuffer cmd = StringBuffer('-y ');

    // ── Input declarations ────────────────────────────────────────────────
    for (final String p in inputPaths) {
      cmd.write('-i "$p" ');
    }
    for (int i = 0; i < bgmPaths.length; i++) {
      if (bgmLoop && bgmPaths.length == 1) {
        cmd.write('-stream_loop -1 ');
      }
      cmd.write('-i "${bgmPaths[i]}" ');
    }

    final int videoCount = inputPaths.length;
    final int bgmCount = bgmPaths.length;
    final bool hasBgm = bgmCount > 0;

    // ── filter_complex ────────────────────────────────────────────────────
    final StringBuffer fc = StringBuffer('"');

    // Scale + fps each video/photo input.
    for (int i = 0; i < videoCount; i++) {
      fc.write('[${i}:v]scale=${preset.width}:${preset.height}:force_original_aspect_ratio=decrease,'
          'pad=${preset.width}:${preset.height}:(ow-iw)/2:(oh-ih)/2,'
          'fps=${preset.fps},setsar=1[v$i];');
    }

    // Concat video streams.
    if (videoCount > 1) {
      for (int i = 0; i < videoCount; i++) {
        fc.write('[v$i]');
      }
      fc.write('concat=n=$videoCount:v=1:a=0[vout];');
    } else {
      fc.write('[v0]copy[vout];');
    }

    if (hasBgm) {
      if (bgmCount == 1) {
        // Single BGM: loop flag already set above if bgmLoop.
        final String bgmIdx = videoCount.toString();
        fc.write('[${bgmIdx}:a]anull[bgmout];');
      } else {
        // Multiple BGM tracks: chain or interleave.
        for (int i = 0; i < bgmCount; i++) {
          fc.write('[${videoCount + i}:a]');
        }
        fc.write('concat=n=$bgmCount:v=0:a=1[bgmout];');
      }

      if (audioMixPreset == 'sourcePriority') {
        fc.write('[0:a][bgmout]amix=inputs=2:weights=1.0 0.35:duration=first:dropout_transition=2[mix]');
      } else if (audioMixPreset == 'bgmPriority') {
        fc.write('[0:a][bgmout]amix=inputs=2:weights=0.8 1.2:duration=first:dropout_transition=2[mix]');
      } else {
        fc.write('[0:a][bgmout]amix=inputs=2:weights=1.0 0.8:duration=first:dropout_transition=2[mix]');
      }
    }

    fc.write('"');

    cmd.write('-filter_complex ${fc.toString()} ');

    // ── Output mapping ────────────────────────────────────────────────────
    cmd.write('-map "[vout]" ');
    cmd.write(hasBgm ? '-map "[mix]" ' : '-map "0:a?" ');
    cmd.write('-c:v libx264 -b:v ${preset.videoBitrate} ');
    cmd.write('-c:a aac -b:a ${preset.audioBitrate} ');
    cmd.write('"$outputPath"');

    return cmd.toString();
  }

  // Legacy single-input convenience method kept for call-sites not yet updated.
  String buildSimple({
    required String inputPath,
    required String bgmPath,
    required String outputPath,
    required ExportPreset preset,
  }) {
    return build(
      inputPaths: <String>[inputPath],
      bgmPaths: <String>[bgmPath],
      bgmLoop: true,
      outputPath: outputPath,
      preset: preset,
    );
  }
}
