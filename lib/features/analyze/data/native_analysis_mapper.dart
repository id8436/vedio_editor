import '../../../core/models/timeline_models.dart';
import '../domain/highlight_scorer.dart';

class NativeAnalysisData {
  const NativeAnalysisData({
    required this.highlights,
    required this.beats,
    required this.durationMs,
  });

  final List<HighlightSegment> highlights;
  final List<BeatMarker> beats;
  final int durationMs;
}

class NativeAnalysisMapper {
  const NativeAnalysisMapper();

  NativeAnalysisData fromMap(Map<String, dynamic> raw) {
    const HighlightScorer scorer = HighlightScorer();

    final int durationMs = _toInt(raw['duration_ms'], fallback: 30000);

    final List<dynamic> featureList = (raw['features'] as List<dynamic>? ?? <dynamic>[]);
    final List<HighlightSegment> highlights = featureList.map((dynamic item) {
      final Map<String, dynamic> feature = (item as Map<dynamic, dynamic>)
          .map((key, value) => MapEntry(key.toString(), value));

      final HighlightFeature input = HighlightFeature(
        motion: _toDouble(feature['motion']),
        sceneCut: _toDouble(feature['scene_cut']),
        faceCount: _toInt(feature['face_count']),
        audioEnergy: _toDouble(feature['audio_energy']),
        silent: (feature['silent'] as bool?) ?? false,
      );

      final double score = scorer.score(input);
      return HighlightSegment(
        startMs: _toInt(feature['start_ms']),
        endMs: _toInt(feature['end_ms']),
        score: score,
        reasons: _buildReasons(input),
      );
    }).toList();

    final List<dynamic> beatList = (raw['beats_ms'] as List<dynamic>? ?? <dynamic>[]);
    final List<BeatMarker> beats = beatList
        .map(
          (dynamic ts) => BeatMarker(
            tsMs: _toInt(ts),
            strength: 0.75,
            confidence: 0.70,
          ),
        )
        .toList()
      ..sort((a, b) => a.tsMs.compareTo(b.tsMs));

    return NativeAnalysisData(
      highlights: highlights,
      beats: beats,
      durationMs: durationMs,
    );
  }

  List<String> _buildReasons(HighlightFeature feature) {
    final List<String> reasons = <String>[];
    if (feature.motion >= 0.5) {
      reasons.add('motion');
    }
    if (feature.sceneCut >= 0.5) {
      reasons.add('scene');
    }
    if (feature.faceCount > 0) {
      reasons.add('face');
    }
    if (feature.audioEnergy >= 0.5) {
      reasons.add('audio');
    }
    if (feature.silent) {
      reasons.add('silent-penalty');
    }
    return reasons.isEmpty ? <String>['baseline'] : reasons;
  }

  int _toInt(dynamic value, {int fallback = 0}) {
    if (value is int) {
      return value;
    }
    if (value is double) {
      return value.round();
    }
    if (value is String) {
      return int.tryParse(value) ?? fallback;
    }
    return fallback;
  }

  double _toDouble(dynamic value, {double fallback = 0.0}) {
    if (value is double) {
      return value;
    }
    if (value is int) {
      return value.toDouble();
    }
    if (value is String) {
      return double.tryParse(value) ?? fallback;
    }
    return fallback;
  }
}
