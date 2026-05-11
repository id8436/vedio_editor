import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';

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
  /// - Concatenates [inputPaths] or [project.clips] into one stream.
  /// - Mixes in BGM from [bgmItems] / [bgmPaths] and repeats the available
  ///   BGM sequence when [bgmLoop] is true.
  /// - Applies clip-level text overlays when [project] carries them.
  /// - Encodes to [outputPath] using [preset].
  String build({
    required List<String> inputPaths,
    required String outputPath,
    required ExportPreset preset,
    List<String> bgmPaths = const <String>[],
    List<BgmItem> bgmItems = const <BgmItem>[],
    bool bgmLoop = true,
    String audioMixPreset = 'balanced',
    TimelineProject? project,
    Set<String> photoAssetPaths = const <String>{},
  }) {
    final List<BgmItem> resolvedBgmItems = bgmItems.isNotEmpty
        ? bgmItems
        : bgmPaths
            .map((String path) => BgmItem(path: path))
            .toList(growable: false);

    if (project != null && project.clips.isNotEmpty) {
      return _buildTimeline(
        project: project,
        outputPath: outputPath,
        preset: preset,
        bgmItems: resolvedBgmItems,
        bgmLoop: bgmLoop,
        audioMixPreset: audioMixPreset,
        photoAssetPaths: photoAssetPaths,
      );
    }

    return _buildLegacy(
      inputPaths: inputPaths,
      outputPath: outputPath,
      preset: preset,
      bgmItems: resolvedBgmItems,
      bgmLoop: bgmLoop,
      audioMixPreset: audioMixPreset,
    );
  }

  String _buildTimeline({
    required TimelineProject project,
    required String outputPath,
    required ExportPreset preset,
    required List<BgmItem> bgmItems,
    required bool bgmLoop,
    required String audioMixPreset,
    required Set<String> photoAssetPaths,
  }) {
    final List<TimelineClip> clips = project.clips;
    final int timelineDurationMs =
        clips.isEmpty ? 0 : clips.last.timelineOutMs;
    final StringBuffer cmd = StringBuffer('-y ');

    for (final TimelineClip clip in clips) {
      final bool isPhoto = _isPhotoAsset(clip.assetId, photoAssetPaths);
      final String durationSec = _secondsFromMs(clip.durationMs);
      if (isPhoto) {
        cmd.write('-loop 1 -framerate ${preset.fps} -t $durationSec -i "${clip.assetId}" ');
      } else {
        cmd.write('-ss ${_secondsFromMs(clip.srcInMs)} -t $durationSec -i "${clip.assetId}" ');
      }
    }

    for (int i = 0; i < bgmItems.length; i++) {
      if (bgmLoop && bgmItems.length == 1 && project.bgmCoverageDurationMs <= 0) {
        cmd.write('-stream_loop -1 ');
      }
      if (bgmItems[i].startOffsetMs > 0) {
        cmd.write('-ss ${_secondsFromMs(bgmItems[i].startOffsetMs)} ');
      }
      cmd.write('-i "${bgmItems[i].path}" ');
    }

    final int clipCount = clips.length;
    final int bgmStartIndex = clipCount;
    final bool hasBgm = bgmItems.isNotEmpty;
    final StringBuffer fc = StringBuffer();

    for (int i = 0; i < clipCount; i++) {
      final TimelineClip clip = clips[i];
      final bool isPhoto = _isPhotoAsset(clip.assetId, photoAssetPaths);
      final List<String> videoFilters = <String>[
        clip.speed == 1.0
            ? 'setpts=PTS-STARTPTS'
            : 'setpts=(PTS-STARTPTS)/${_formatNumber(clip.speed)}',
        'scale=${preset.width}:${preset.height}:force_original_aspect_ratio=decrease',
        'pad=${preset.width}:${preset.height}:(ow-iw)/2:(oh-ih)/2',
        'fps=${preset.fps}',
        'setsar=1',
        ..._filterFiltersFor(clip.filterEffect),
        ..._drawtextFiltersFor(clip, preset),
      ];
      fc.write('[$i:v]${videoFilters.join(',')}[v$i];');

      if (isPhoto) {
        fc.write(
          'anullsrc=r=48000:cl=stereo,atrim=duration=${_secondsFromMs(clip.durationMs)},asetpts=N/SR/TB[a$i];',
        );
      } else {
        final List<String> audioFilters = <String>[
          'atrim=duration=${_secondsFromMs(clip.durationMs)}',
          'asetpts=N/SR/TB',
          'aformat=sample_rates=48000:channel_layouts=stereo',
          'aresample=async=1:first_pts=0',
          ..._atempoFiltersFor(clip.speed),
        ];
        fc.write('[$i:a]${audioFilters.join(',')}[a$i];');
      }
    }

    for (int i = 0; i < clipCount; i++) {
      fc.write('[v$i][a$i]');
    }
    fc.write('concat=n=$clipCount:v=1:a=1[vmain][amain];');

    if (hasBgm) {
      if (bgmItems.length == 1) {
        fc.write(
          '[$bgmStartIndex:a]aformat=sample_rates=48000:channel_layouts=stereo,aresample=async=1:first_pts=0[bgmraw];',
        );
      } else {
        for (int i = 0; i < bgmItems.length; i++) {
          final int inputIndex = bgmStartIndex + i;
          fc.write(
            '[$inputIndex:a]aformat=sample_rates=48000:channel_layouts=stereo,aresample=async=1:first_pts=0[bgm$i];',
          );
        }
        for (int i = 0; i < bgmItems.length; i++) {
          fc.write('[bgm$i]');
        }
        fc.write('concat=n=${bgmItems.length}:v=0:a=1[bgmraw];');
      }

      if (bgmLoop && project.bgmCoverageDurationMs > 0) {
        fc.write(
          '[bgmraw]aloop=loop=-1:size=${_bgmLoopSampleCount(project.bgmCoverageDurationMs)},'
          'atrim=duration=${_secondsFromMs(timelineDurationMs)},asetpts=N/SR/TB[bgmout];',
        );
      } else {
        fc.write(
          '[bgmraw]atrim=duration=${_secondsFromMs(timelineDurationMs)},asetpts=N/SR/TB[bgmout];',
        );
      }

      final ({String source, String bgm}) weights = _mixWeightsFor(audioMixPreset);
      fc.write(
        '[amain][bgmout]amix=inputs=2:weights=\'${weights.source} ${weights.bgm}\':duration=first:dropout_transition=2[aout];',
      );
    }

    cmd.write('-filter_complex "${_trimTrailingFilterSeparators(fc.toString())}" ');
    cmd.write('-map "[vmain]" ');
    cmd.write(hasBgm ? '-map "[aout]" ' : '-map "[amain]" ');
    cmd.write('-c:v libx264 -pix_fmt yuv420p -movflags +faststart -b:v ${preset.videoBitrate} ');
    cmd.write('-c:a aac -b:a ${preset.audioBitrate} ');
    cmd.write('"$outputPath"');

    return cmd.toString();
  }

  String _buildLegacy({
    required List<String> inputPaths,
    required String outputPath,
    required ExportPreset preset,
    required List<BgmItem> bgmItems,
    required bool bgmLoop,
    required String audioMixPreset,
  }) {
    if (inputPaths.isEmpty) inputPaths = <String>['/input/source.mp4'];

    final StringBuffer cmd = StringBuffer('-y ');

    // ── Input declarations ────────────────────────────────────────────────
    for (final String p in inputPaths) {
      cmd.write('-i "$p" ');
    }
    for (int i = 0; i < bgmItems.length; i++) {
      if (bgmLoop && bgmItems.length == 1) {
        cmd.write('-stream_loop -1 ');
      }
      if (bgmItems[i].startOffsetMs > 0) {
        cmd.write('-ss ${_secondsFromMs(bgmItems[i].startOffsetMs)} ');
      }
      cmd.write('-i "${bgmItems[i].path}" ');
    }

    final int videoCount = inputPaths.length;
    final int bgmCount = bgmItems.length;
    final bool hasBgm = bgmCount > 0;

    // ── filter_complex ────────────────────────────────────────────────────
    final StringBuffer fc = StringBuffer();

    // Scale + fps each video/photo input.
    for (int i = 0; i < videoCount; i++) {
      fc.write('[$i:v]scale=${preset.width}:${preset.height}:force_original_aspect_ratio=decrease,'
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
        fc.write('[$bgmIdx:a]anull[bgmout];');
      } else {
        // Multiple BGM tracks: chain or interleave.
        for (int i = 0; i < bgmCount; i++) {
          final int inputIndex = videoCount + i;
          fc.write('[$inputIndex:a]');
        }
        fc.write('concat=n=$bgmCount:v=0:a=1[bgmout];');
      }

      final ({String source, String bgm}) weights = _mixWeightsFor(audioMixPreset);
      fc.write('[0:a][bgmout]amix=inputs=2:weights=\'${weights.source} ${weights.bgm}\':duration=first:dropout_transition=2[mix]');
    }

    cmd.write('-filter_complex "${_trimTrailingFilterSeparators(fc.toString())}" ');

    // ── Output mapping ────────────────────────────────────────────────────
    cmd.write('-map "[vout]" ');
    cmd.write(hasBgm ? '-map "[mix]" ' : '-map "0:a?" ');
    cmd.write('-c:v libx264 -b:v ${preset.videoBitrate} ');
    cmd.write('-c:a aac -b:a ${preset.audioBitrate} ');
    cmd.write('"$outputPath"');

    return cmd.toString();
  }

  ({String source, String bgm}) _mixWeightsFor(String audioMixPreset) {
    return switch (audioMixPreset) {
      'sourcePriority' => (source: '1.0', bgm: '0.35'),
      'bgmPriority' => (source: '0.8', bgm: '1.2'),
      _ => (source: '1.0', bgm: '0.8'),
    };
  }

  bool _isPhotoAsset(String assetId, Set<String> photoAssetPaths) {
    if (photoAssetPaths.contains(assetId)) {
      return true;
    }

    final String lower = assetId.toLowerCase();
    return lower.endsWith('.jpg') ||
        lower.endsWith('.jpeg') ||
        lower.endsWith('.png') ||
        lower.endsWith('.webp') ||
        lower.endsWith('.gif') ||
        lower.endsWith('.bmp');
  }

  String _secondsFromMs(int value) => (value / 1000).toStringAsFixed(3);

  int _bgmLoopSampleCount(int durationMs) {
    final int safeDurationMs = durationMs <= 0 ? 1 : durationMs;
    return ((safeDurationMs / 1000) * 48000).round().clamp(1, 2147483647);
  }

  String _formatNumber(double value) {
    if ((value - value.roundToDouble()).abs() < 0.001) {
      return value.round().toString();
    }
    return value.toStringAsFixed(3);
  }

  String _trimTrailingFilterSeparators(String graph) {
    return graph.replaceFirst(RegExp(r';+$'), '');
  }

  List<String> _atempoFiltersFor(double speed) {
    if (speed == 1.0) {
      return const <String>[];
    }

    double remaining = speed;
    final List<String> filters = <String>[];
    while (remaining < 0.5) {
      filters.add('atempo=0.5');
      remaining /= 0.5;
    }
    while (remaining > 2.0) {
      filters.add('atempo=2.0');
      remaining /= 2.0;
    }
    filters.add('atempo=${_formatNumber(remaining)}');
    return filters;
  }

  List<String> _filterFiltersFor(ClipFilterEffect effect) {
    return switch (effect) {
      ClipFilterEffect.none => const <String>[],
      ClipFilterEffect.warm => const <String>[
          'eq=saturation=1.10:contrast=1.05:brightness=0.02',
          'colorbalance=rs=0.06:gs=0.02:bs=-0.03',
        ],
      ClipFilterEffect.cool => const <String>[
          'eq=saturation=1.00:contrast=1.04:brightness=-0.01',
          'colorbalance=rs=-0.05:bs=0.06',
        ],
      ClipFilterEffect.cinematic => const <String>[
          'eq=saturation=0.85:contrast=1.12:brightness=-0.02',
          'colorbalance=rs=0.03:gs=-0.01:bs=-0.05',
        ],
      ClipFilterEffect.mono => const <String>['hue=s=0'],
    };
  }

  List<String> _drawtextFiltersFor(TimelineClip clip, ExportPreset preset) {
    if (!clip.hasTextOverlay) {
      return const <String>[];
    }

    final ({String foreground, String secondary, String accent, String surface}) palette =
        _paletteFor(clip.textTheme);
    final double scale = clip.textScale.clamp(0.8, 1.6);
    final String primary = _escapeDrawtext(clip.textPrimary);
    final String secondary = _escapeDrawtext(clip.textSecondary);

    switch (clip.textPreset) {
      case ClipTextPreset.none:
        return const <String>[];
      case ClipTextPreset.titleCard:
        final int accentWidth = (preset.width * 0.18).round();
        final int accentX = ((preset.width - accentWidth) / 2).round();
        final int accentY = (preset.height * 0.28).round();
        final int titleSize = (preset.height * 0.072 * scale).round().clamp(30, 110);
        final int secondarySize = (titleSize * 0.42).round();
        return <String>[
          'drawbox=x=$accentX:y=$accentY:w=$accentWidth:h=6:color=${palette.accent}@0.95:t=fill',
          'drawtext=text=\'$primary\':fontcolor=${palette.foreground}:fontsize=$titleSize:x=(w-text_w)/2:y=(h*0.34)-text_h:borderw=2:bordercolor=black@0.30:shadowcolor=black@0.45:shadowx=0:shadowy=6:fix_bounds=true',
          if (secondary.isNotEmpty)
            'drawtext=text=\'$secondary\':fontcolor=${palette.secondary}:fontsize=$secondarySize:x=(w-text_w)/2:y=h*0.54:borderw=1:bordercolor=black@0.20:shadowcolor=black@0.35:shadowx=0:shadowy=4:fix_bounds=true',
        ];
      case ClipTextPreset.lowerThird:
        final int boxHeight = (preset.height * 0.16).round().clamp(120, 240);
        final int boxWidth = (preset.width * 0.50).round();
        final int boxY = preset.height - boxHeight - 36;
        final int titleSize = (preset.height * 0.040 * scale).round().clamp(24, 58);
        final int secondarySize = (titleSize * 0.62).round();
        return <String>[
          'drawbox=x=32:y=$boxY:w=$boxWidth:h=$boxHeight:color=${palette.surface}@0.88:t=fill',
          'drawbox=x=32:y=$boxY:w=6:h=$boxHeight:color=${palette.accent}@1.0:t=fill',
          'drawtext=text=\'$primary\':fontcolor=${palette.foreground}:fontsize=$titleSize:x=56:y=${boxY + 20}:borderw=1:bordercolor=black@0.24:shadowcolor=black@0.28:shadowx=0:shadowy=3:fix_bounds=true',
          if (secondary.isNotEmpty)
            'drawtext=text=\'$secondary\':fontcolor=${palette.secondary}:fontsize=$secondarySize:x=56:y=${boxY + 28 + titleSize}:borderw=1:bordercolor=black@0.18:shadowcolor=black@0.24:shadowx=0:shadowy=2:fix_bounds=true',
        ];
      case ClipTextPreset.caption:
        final int boxHeight = (preset.height * 0.14).round().clamp(92, 180);
        final int boxY = preset.height - boxHeight - 30;
        final int titleSize = (preset.height * 0.036 * scale).round().clamp(22, 46);
        return <String>[
          'drawbox=x=32:y=$boxY:w=w-64:h=$boxHeight:color=${palette.surface}@0.86:t=fill',
          'drawtext=text=\'$primary\':fontcolor=${palette.foreground}:fontsize=$titleSize:x=(w-text_w)/2:y=$boxY+(h-$boxY-$boxHeight-text_h)/2:borderw=2:bordercolor=black@0.28:shadowcolor=black@0.36:shadowx=0:shadowy=4:fix_bounds=true',
        ];
    }
  }

  ({String foreground, String secondary, String accent, String surface}) _paletteFor(
    ClipTextTheme theme,
  ) {
    return switch (theme) {
      ClipTextTheme.clean => (
          foreground: '0xFFFFFF',
          secondary: '0xE6EEF8',
          accent: '0x75B7FF',
          surface: '0x0C1624',
        ),
      ClipTextTheme.warm => (
          foreground: '0xFFF6E5',
          secondary: '0xFFD8A8',
          accent: '0xFFB454',
          surface: '0x281A0F',
        ),
      ClipTextTheme.ocean => (
          foreground: '0xF4FEFF',
          secondary: '0xBDEBF2',
          accent: '0x4FD1C5',
          surface: '0x10252B',
        ),
      ClipTextTheme.punch => (
          foreground: '0xFFFFFF',
          secondary: '0xFFD6DE',
          accent: '0xFF5E7A',
          surface: '0x220D14',
        ),
    };
  }

  String _escapeDrawtext(String raw) {
    final String compact = raw.replaceAll(RegExp(r'\s+'), ' ').trim();
    if (compact.isEmpty) {
      return '';
    }

    return compact
        .replaceAll('\\', r'\\')
        .replaceAll(':', r'\:')
        .replaceAll("'", r"\'")
        .replaceAll('%', r'\%')
        .replaceAll(',', r'\,')
        .replaceAll(';', r'\;')
        .replaceAll('[', r'\[')
        .replaceAll(']', r'\]');
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
