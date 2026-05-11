import '../../../../../core/models/timeline_models.dart';
import '../domain/beat_grid_anchorer.dart';
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

  static const BeatGridAnchorer _anchorer = BeatGridAnchorer();

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
    final List<dynamic> levelList = (raw['beat_levels'] as List<dynamic>? ?? <dynamic>[]);
    final List<dynamic> bassBeatList = (raw['bass_beats_ms'] as List<dynamic>? ?? <dynamic>[]);

    final List<BeatMarker> beats = <BeatMarker>[];
    for (int i = 0; i < beatList.length; i++) {
      final String levelStr = i < levelList.length ? (levelList[i] as String? ?? 'medium') : 'medium';
      final BeatEnergyLevel level = _parseBeatLevel(levelStr);
      beats.add(BeatMarker(
        tsMs: _toInt(beatList[i]),
        strength: _strengthForLevel(level),
        confidence: 0.70,
        type: BeatType.beat,
        energyLevel: level,
      ));
    }

    for (final dynamic ts in bassBeatList) {
      beats.add(BeatMarker(
        tsMs: _toInt(ts),
        strength: 0.95,
        confidence: 0.80,
        type: BeatType.bass,
        energyLevel: BeatEnergyLevel.high,
      ));
    }

    final List<BeatMarker> annotatedBeats =
        _anchorer.annotate(beats);

    return NativeAnalysisData(
      highlights: highlights,
      beats: annotatedBeats,
      durationMs: durationMs,
    );
  }

  BeatEnergyLevel _parseBeatLevel(String level) {
    switch (level) {
      case 'peak':   return BeatEnergyLevel.peak;
      case 'high':   return BeatEnergyLevel.high;
      case 'low':    return BeatEnergyLevel.low;
      default:       return BeatEnergyLevel.medium;
    }
  }

  double _strengthForLevel(BeatEnergyLevel level) {
    switch (level) {
      case BeatEnergyLevel.peak:   return 1.00;
      case BeatEnergyLevel.high:   return 0.85;
      case BeatEnergyLevel.medium: return 0.65;
      case BeatEnergyLevel.low:    return 0.40;
    }
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
