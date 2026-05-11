import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:web/web.dart' as web;

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
  web.AudioContext? ctx;
  String? objectUrl;

  try {
    ctx = web.AudioContext();
    final JSArrayBuffer arrayBuffer;

    if (bytes != null && bytes.isNotEmpty) {
      final web.Blob blob = web.Blob(
        <JSAny>[bytes.toJS].toJS,
        web.BlobPropertyBag(type: _guessMime(fileName)),
      );
      objectUrl = web.URL.createObjectURL(blob);
      final web.Response response = await web.window.fetch(objectUrl.toJS).toDart;
      arrayBuffer = await response.arrayBuffer().toDart;
    } else {
      final web.Response response = await web.window.fetch(sourcePath.toJS).toDart;
      arrayBuffer = await response.arrayBuffer().toDart;
    }

    final web.AudioBuffer audioBuffer = await ctx.decodeAudioData(arrayBuffer).toDart;
    final int durationMs = (audioBuffer.duration * 1000).round();
    Float32List samples = audioBuffer.getChannelData(0).toDart;

    if (audioBuffer.numberOfChannels > 1) {
      final Float32List otherChannel = audioBuffer.getChannelData(1).toDart;
      final Float32List mixed = Float32List(samples.length);
      for (int i = 0; i < samples.length; i++) {
        mixed[i] = (samples[i] + otherChannel[i]) * 0.5;
      }
      samples = mixed;
    }

    final List<double> envelope = _buildEnvelope(samples, sampleCount);
    return AudioWaveformData(
      samples: envelope,
      durationMs: durationMs,
    );
  } catch (_) {
    return null;
  } finally {
    if (ctx != null) {
      await ctx.close().toDart;
    }
    if (objectUrl != null) {
      web.URL.revokeObjectURL(objectUrl);
    }
  }
}

List<double> _buildEnvelope(Float32List input, int sampleCount) {
  if (input.isEmpty || sampleCount <= 0) {
    return const <double>[];
  }

  final int bucketSize = (input.length / sampleCount).ceil().clamp(1, input.length);
  final List<double> envelope = <double>[];
  double maxValue = 0;

  for (int start = 0; start < input.length; start += bucketSize) {
    final int end = (start + bucketSize).clamp(0, input.length);
    double sum = 0;
    for (int i = start; i < end; i++) {
      final double value = input[i];
      sum += value * value;
    }
    final double rms = end > start ? (sum / (end - start)) : 0;
    final double amplitude = rms <= 0 ? 0 : rms.sqrt();
    if (amplitude > maxValue) {
      maxValue = amplitude;
    }
    envelope.add(amplitude);
  }

  if (maxValue <= 0) {
    return List<double>.filled(envelope.length, 0.12);
  }

  return envelope
      .map((double value) => (value / maxValue).clamp(0.05, 1.0))
      .toList(growable: false);
}

extension on double {
  double sqrt() {
    if (this <= 0) {
      return 0;
    }

    double estimate = this < 1 ? 1 : this;
    for (int i = 0; i < 8; i++) {
      estimate = 0.5 * (estimate + this / estimate);
    }
    return estimate;
  }
}

String _guessMime(String name) {
  final String lower = name.toLowerCase();
  if (lower.endsWith('.mp3')) return 'audio/mpeg';
  if (lower.endsWith('.m4a')) return 'audio/mp4';
  if (lower.endsWith('.aac')) return 'audio/aac';
  if (lower.endsWith('.wav')) return 'audio/wav';
  if (lower.endsWith('.ogg')) return 'audio/ogg';
  if (lower.endsWith('.flac')) return 'audio/flac';
  return 'audio/mpeg';
}
