import 'dart:convert';
import '../../../../core/models/timeline_models.dart';

/// Helper methods and logic for clip editor screen.
mixin ClipEditorLogic {
  String formatClock(int ms) {
    final int safe = ms < 0 ? 0 : ms;
    final int totalSec = safe ~/ 1000;
    final int min = totalSec ~/ 60;
    final int sec = totalSec % 60;
    return '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
  }

  String extractExtension(String? videoName, String? videoPath) {
    final String base = videoName ?? videoPath ?? '';
    final int dot = base.lastIndexOf('.');
    if (dot < 0 || dot >= base.length - 1) {
      return 'unknown';
    }
    return base.substring(dot + 1).toLowerCase();
  }

  String buildCopyDetails({
    required String appVersion,
    required String platformLabel,
    required String? debugInfo,
  }) {
    return <String>[
      debugInfo ?? '',
      'app_version=$appVersion',
      'runtime_platform=$platformLabel',
      'screen=editor',
      'timestamp=${DateTime.now().toIso8601String()}',
    ].join('\n');
  }

  Map<String, String> debugLinesToMap(String rawDetails) {
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

  String buildTroubleshootingJsonReport({
    required String appVersion,
    required String category,
    required String ffmpegCommand,
    required String details,
  }) {
    final Map<String, String> parsed = debugLinesToMap(details);
    final Map<String, Object?> json = <String, Object?>{
      'app_version': appVersion,
      'issue_category': category,
      'recommended_ffmpeg': ffmpegCommand,
      'context': parsed,
    };
    return const JsonEncoder.withIndent('  ').convert(json);
  }

  List<String> tipsForCategory(String category) {
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

  String detectIssueCategory(String reason) {
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

  String recommendedFfmpegCommand(String category) {
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

  String filterLabel(ClipFilterEffect effect) {
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

  String textPresetLabel(ClipTextPreset preset) {
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

  String assetLabel(String assetId) {
    final int slash = assetId.lastIndexOf(RegExp(r'[/\\]'));
    final String name = slash >= 0 ? assetId.substring(slash + 1) : assetId;
    return name.isEmpty ? 'media' : name;
  }
}
