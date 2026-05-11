import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';

import 'package:web/web.dart' as web;

import 'beatclip_ffmpeg_interop.dart';
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
    // Check that the JS bridge was loaded correctly.
    final bool bridgeAvailable = _checkBridgeAvailable();
    if (!bridgeAvailable) {
      throw UnsupportedError(
        'window.BeatclipFFmpeg is not defined. '
        'Make sure beatclip_ffmpeg.js is loaded in web/index.html.',
      );
    }

    // Run ffmpeg.wasm in the browser.  This may take several minutes for
    // long videos — the WASM single-threaded runtime is ~10-30x slower than
    // native FFmpeg.
    final String blobUrl = await ffmpegWasmEncode(
      ffmpegArgs,
      onProgress: onProgress,
    );

    // Derive a sensible filename from the last path token in ffmpegArgs.
    final String filename = _outputFilenameFrom(ffmpegArgs);

    // Trigger browser "Save As" download.
    triggerBlobDownload(blobUrl, filename);

    // Return the blob URL so EncodeScreen can display it.
    return blobUrl;
  }

  static bool _checkBridgeAvailable() {
    try {
      // If window.BeatclipFFmpeg is undefined, accessing it via JS interop
      // returns a JS `undefined` value which maps to a null-ish JSObject.
      // We call toString on the JS side as a presence check.
      final web.Window w = web.window;
      final JSAny? val = w.getProperty('BeatclipFFmpeg'.toJS);
      return val != null && !val.isUndefinedOrNull;
    } catch (_) {
      return false;
    }
  }

  static String _outputFilenameFrom(String args) {
    // The last whitespace-delimited token that looks like a filename.
    final List<String> tokens = args.trim().split(RegExp(r'\s+'));
    for (int i = tokens.length - 1; i >= 0; i--) {
      final String t = tokens[i].replaceAll('"', '');
      if (t.endsWith('.mp4') || t.endsWith('.mov') || t.endsWith('.webm')) {
        return t.split(RegExp(r'[/\\]')).last;
      }
    }
    return 'beatclip_export.mp4';
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

    // Get channel data (use first channel, mix down if stereo).
    final JSFloat32Array rawData = audioBuffer.getChannelData(0);
    Float32List samples = rawData.toDart;
    if (audioBuffer.numberOfChannels > 1) {
      final JSFloat32Array ch1Data = audioBuffer.getChannelData(1);
      final Float32List ch1 = ch1Data.toDart;
      final Float32List mixed = Float32List(samples.length);
      for (int i = 0; i < samples.length; i++) {
        mixed[i] = (samples[i] + ch1[i]) * 0.5;
      }
      samples = mixed;
    }

    await ctx.close().toDart;

    // ── RMS energy in 50 ms windows (finer than before for better resolution)
    const int hopMs = 50;
    final int windowSize = (sampleRate * hopMs / 1000).round();
    final List<double> energies = <double>[];
    for (int i = 0; i < samples.length; i += windowSize) {
      double sum = 0;
      final int end = (i + windowSize).clamp(0, samples.length);
      for (int j = i; j < end; j++) {
        sum += samples[j] * samples[j];
      }
      energies.add(end > i ? sum / (end - i) : 0.0);
    }

    // ── Sub-bass approximation via simple IIR low-pass filter (~150 Hz)
    // RC low-pass: y[n] = α·y[n-1] + (1-α)·x[n]
    // α = 1 - 2π·fc/sr  (one-pole approximation)
    final double alphaLp = 1.0 - (2 * 3.141592653589793 * 150.0 / sampleRate).clamp(0.0, 1.0);
    final Float32List bassSignal = Float32List(samples.length);
    double lpState = 0.0;
    for (int i = 0; i < samples.length; i++) {
      lpState = alphaLp * lpState + (1.0 - alphaLp) * samples[i];
      bassSignal[i] = lpState;
    }

    // RMS energy of bass signal in the same windows.
    final List<double> bassEnergies = <double>[];
    for (int i = 0; i < bassSignal.length; i += windowSize) {
      double sum = 0;
      final int end = (i + windowSize).clamp(0, bassSignal.length);
      for (int j = i; j < end; j++) {
        sum += bassSignal[j] * bassSignal[j];
      }
      bassEnergies.add(end > i ? sum / (end - i) : 0.0);
    }

    // ── Beat detection: RMS onset > 1.35 × 12-window local average
    const int lookback = 12;
    // Collect (tsMs, strength) pairs for energy level classification later.
    final List<(int, double)> beatCandidates = <(int, double)>[];
    for (int i = lookback; i < energies.length; i++) {
      double localAvg = 0;
      for (int k = i - lookback; k < i; k++) {
        localAvg += energies[k];
      }
      localAvg /= lookback;
      final double ratio = localAvg > 0 ? energies[i] / localAvg : 0;
      if (ratio >= 1.35) {
        beatCandidates.add((i * hopMs, ratio));
      }
    }

    // ── Sub-bass onset detection
    // Threshold: 1.5× local bass average with 200 ms minimum gap between hits.
    final List<int> bassBeatsMs = <int>[];
    int lastBassMs = -999;
    const int minBassGapMs = 200;
    for (int i = lookback; i < bassEnergies.length; i++) {
      double localAvg = 0;
      for (int k = i - lookback; k < i; k++) {
        localAvg += bassEnergies[k];
      }
      localAvg /= lookback;
      final double ratio = localAvg > 0 ? bassEnergies[i] / localAvg : 0;
      final int tsMs = i * hopMs;
      if (ratio >= 1.5 && tsMs - lastBassMs >= minBassGapMs) {
        bassBeatsMs.add(tsMs);
        lastBassMs = tsMs;
      }
    }

    // ── Energy level classification using percentiles of ratio values
    final List<double> ratios = beatCandidates.map((r) => r.$2).toList()..sort();
    double _pct(List<double> sorted, double p) {
      if (sorted.isEmpty) return 0;
      final int idx = ((sorted.length - 1) * p).round();
      return sorted[idx];
    }
    final double pct88 = _pct(ratios, 0.88);
    final double pct72 = _pct(ratios, 0.72);
    final double pct30 = _pct(ratios, 0.30);

    final List<int> beatsMs = <int>[];
    final List<String> beatLevels = <String>[];
    int lastBeatMs = -999;
    const int minBeatGapMs = 100;
    for (final (int ts, double ratio) in beatCandidates) {
      if (ts - lastBeatMs < minBeatGapMs) continue;
      beatsMs.add(ts);
      if (ratio >= pct88) {
        beatLevels.add('peak');
      } else if (ratio >= pct72) {
        beatLevels.add('high');
      } else if (ratio <= pct30) {
        beatLevels.add('low');
      } else {
        beatLevels.add('medium');
      }
      lastBeatMs = ts;
    }

    // ── Silence gap detection (gaps > 2000 ms with no beats)
    final List<Map<String, int>> silenceGaps = <Map<String, int>>[];
    const int silenceThresholdMs = 2000;
    final List<int> allBeatsMs = <int>[...beatsMs, ...bassBeatsMs]..sort();
    if (allBeatsMs.isNotEmpty) {
      // Before first beat.
      if (allBeatsMs.first > silenceThresholdMs) {
        silenceGaps.add(<String, int>{'start_ms': 0, 'end_ms': allBeatsMs.first});
      }
      for (int i = 0; i < allBeatsMs.length - 1; i++) {
        final int gap = allBeatsMs[i + 1] - allBeatsMs[i];
        if (gap > silenceThresholdMs) {
          silenceGaps.add(<String, int>{'start_ms': allBeatsMs[i], 'end_ms': allBeatsMs[i + 1]});
        }
      }
      // After last beat.
      if (durationMs - allBeatsMs.last > silenceThresholdMs) {
        silenceGaps.add(<String, int>{'start_ms': allBeatsMs.last, 'end_ms': durationMs});
      }
    }

    // ── Per-second features from energy windows
    final List<Map<String, dynamic>> features = <Map<String, dynamic>>[];
    const int featureWindowMs = 5000;
    final int featureWindowSamples = featureWindowMs ~/ hopMs;
    for (int i = 0; i < energies.length; i += featureWindowSamples) {
      final int startMs = i * hopMs;
      final int endMs =
          ((i + featureWindowSamples) * hopMs).clamp(0, durationMs);
      double windowEnergy = 0;
      final int end = (i + featureWindowSamples).clamp(0, energies.length);
      for (int j = i; j < end; j++) {
        windowEnergy += energies[j];
      }
      windowEnergy = end > i ? windowEnergy / (end - i) : 0;
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
      'beat_levels': beatLevels,
      'bass_beats_ms': bassBeatsMs,
      'silence_gaps': silenceGaps,
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
