import 'dart:convert';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:web/web.dart' as web;

import 'video_bridge_interface.dart';

/// Called by video_bridge_factory.dart on the web platform.
VideoBridgeInterface createWebBridge() => const WebVideoBridge();

/// Web implementation using the browser's WebAudio API.
/// analyzeMedia: decodes audio from a Blob URL and detects energy-based beats.
/// render: not supported in browser (throws UnsupportedError).
class WebVideoBridge implements VideoBridgeInterface {
  const WebVideoBridge();

  @override
  Future<Map<String, dynamic>> analyzeMedia(
    String mediaPath, {
    Uint8List? mediaBytes,
    String? mediaName,
  }) async {
    String? analysisUrl;
    if (mediaPath.startsWith('blob:') ||
        mediaPath.startsWith('http') ||
        mediaPath.startsWith('data:')) {
      analysisUrl = mediaPath;
    } else if (mediaBytes != null && mediaBytes.isNotEmpty) {
      // Fallback for web://name style pseudo-paths from file_picker.
      final String mime = _guessMime(mediaName ?? mediaPath);
      final String b64 = base64Encode(mediaBytes);
      analysisUrl = 'data:$mime;base64,$b64';
    }

    if (analysisUrl == null) {
      return _demoData(
        reason:
            'Unable to analyze selected file in browser (missing URL/bytes). Showing demo analysis.',
      );
    }

    try {
      return await _analyzeWithWebAudio(analysisUrl);
    } catch (_) {
      // Fallback to demo data so the editor is still usable.
      return _demoData(
        reason: _buildDecodeFailureReason(mediaName ?? mediaPath),
      );
    }
  }

  String _buildDecodeFailureReason(String nameOrPath) {
    final String lower = nameOrPath.toLowerCase();
    final String base =
        'Browser audio decode failed for this media. Showing demo analysis.';

    if (lower.endsWith('.mov') || lower.endsWith('.mkv') || lower.endsWith('.avi')) {
      return '$base Container/codec may not be supported in this browser.';
    }
    if (lower.endsWith('.mp4') || lower.endsWith('.m4a')) {
      return '$base This file may use an unsupported AAC/ALAC variant in browser decode.';
    }
    if (lower.endsWith('.webm')) {
      return '$base This file may use a browser-incompatible WebM audio codec.';
    }
    if (lower.endsWith('.flac')) {
      return '$base FLAC support depends on browser and build.';
    }
    if (lower.endsWith('.mp3') ||
        lower.endsWith('.wav') ||
        lower.endsWith('.aac') ||
        lower.endsWith('.ogg')) {
      return '$base Try re-exporting with 44.1kHz stereo and constant bitrate.';
    }
    return '$base Try converting media to MP4(H.264/AAC) or MP3/WAV and re-import.';
  }

  String _guessMime(String nameOrPath) {
    final String lower = nameOrPath.toLowerCase();
    if (lower.endsWith('.mp3')) return 'audio/mpeg';
    if (lower.endsWith('.wav')) return 'audio/wav';
    if (lower.endsWith('.m4a')) return 'audio/mp4';
    if (lower.endsWith('.aac')) return 'audio/aac';
    if (lower.endsWith('.ogg')) return 'audio/ogg';
    if (lower.endsWith('.webm')) return 'video/webm';
    if (lower.endsWith('.mp4')) return 'video/mp4';
    return 'application/octet-stream';
  }

  @override
  Future<String> render(
    String ffmpegArgs, {
    void Function(double progress)? onProgress,
  }) async {
    throw UnsupportedError(
      'FFmpeg rendering is not available in the browser. '
      'Server-side render or ffmpeg.wasm support is planned.',
    );
  }

  // ── WebAudio analysis ────────────────────────────────────────────────────

  Future<Map<String, dynamic>> _analyzeWithWebAudio(String url) async {
    final web.AudioContext ctx = web.AudioContext();

    // Fetch audio bytes.
    final web.Response response = await web.window.fetch(url.toJS).toDart;
    final JSArrayBuffer arrayBuffer = await response.arrayBuffer().toDart;

    // Decode audio.
    final web.AudioBuffer audioBuffer =
        await ctx.decodeAudioData(arrayBuffer).toDart;

    final int durationMs = (audioBuffer.duration * 1000).round();
    final int sampleRate = audioBuffer.sampleRate.toInt();

    // Get channel data (use first channel).
    final JSFloat32Array rawData = audioBuffer.getChannelData(0);
    final Float32List samples = rawData.toDart;

    await ctx.close().toDart;

    // Compute RMS energy in 100 ms windows.
    final int windowSize = (sampleRate * 0.1).round(); // 100 ms
    final List<double> energies = <double>[];
    for (int i = 0; i < samples.length; i += windowSize) {
      double sum = 0;
      final int end = (i + windowSize).clamp(0, samples.length);
      for (int j = i; j < end; j++) {
        sum += samples[j] * samples[j];
      }
      energies.add(sum / (end - i));
    }

    // Beat detection: onset = energy > 1.35 × local average (12-window lookback).
    final List<int> beatsMs = <int>[];
    for (int i = 12; i < energies.length; i++) {
      double localAvg = 0;
      for (int k = i - 12; k < i; k++) {
        localAvg += energies[k];
      }
      localAvg /= 12;
      if (energies[i] > localAvg * 1.35) {
        beatsMs.add(i * 100);
      }
    }

    // Build simple per-second features from energy windows.
    final List<Map<String, dynamic>> features = <Map<String, dynamic>>[];
    const int featureWindowMs = 5000;
    final int featureWindowSamples = featureWindowMs ~/ 100;
    for (int i = 0; i < energies.length; i += featureWindowSamples) {
      final int startMs = i * 100;
      final int endMs =
          ((i + featureWindowSamples) * 100).clamp(0, durationMs);
      double windowEnergy = 0;
      final int end = (i + featureWindowSamples).clamp(0, energies.length);
      for (int j = i; j < end; j++) {
        windowEnergy += energies[j];
      }
      windowEnergy = windowEnergy / (end - i);
      features.add(<String, dynamic>{
        'start_ms': startMs,
        'end_ms': endMs,
        'motion': windowEnergy.clamp(0.0, 1.0),
        'scene_cut': 0.3,
        'face_count': 0,
        'audio_energy': windowEnergy.clamp(0.0, 1.0),
        'silent': windowEnergy < 0.0001,
      });
    }

    return <String, dynamic>{
      'analysis_mode': 'web_audio',
      'duration_ms': durationMs,
      'source': url,
      'features': features,
      'beats_ms': beatsMs,
    };
  }

  // ── Demo fallback ────────────────────────────────────────────────────────

    Map<String, dynamic> _demoData({String? reason}) => <String, dynamic>{
        'analysis_mode': 'demo',
        'duration_ms': 30000,
        'source': 'web_demo',
        ...?reason == null ? null : <String, dynamic>{'fallback_reason': reason},
        'features': <Map<String, dynamic>>[
          <String, dynamic>{'start_ms': 0, 'end_ms': 5000, 'motion': 0.85, 'scene_cut': 0.5, 'face_count': 1, 'audio_energy': 0.62, 'silent': false},
          <String, dynamic>{'start_ms': 5000, 'end_ms': 10000, 'motion': 0.2, 'scene_cut': 0.15, 'face_count': 0, 'audio_energy': 0.1, 'silent': true},
          <String, dynamic>{'start_ms': 10000, 'end_ms': 15000, 'motion': 0.7, 'scene_cut': 0.75, 'face_count': 2, 'audio_energy': 0.7, 'silent': false},
          <String, dynamic>{'start_ms': 15000, 'end_ms': 20000, 'motion': 0.9, 'scene_cut': 0.42, 'face_count': 3, 'audio_energy': 0.65, 'silent': false},
          <String, dynamic>{'start_ms': 20000, 'end_ms': 30000, 'motion': 0.45, 'scene_cut': 0.3, 'face_count': 0, 'audio_energy': 0.55, 'silent': false},
        ],
        'beats_ms': <int>[1200, 2400, 3600, 4800, 6200, 7600, 9000, 10400, 11800, 13200, 14600, 16000, 17600, 19200, 20800, 22400, 24000, 25800, 27600, 29400],
      };
}
