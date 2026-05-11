import '../../../../../core/models/timeline_models.dart';

class BeatGridAnchorer {
  const BeatGridAnchorer();

  List<BeatMarker> annotate(List<BeatMarker> beats) {
    if (beats.length < 4) {
      return beats;
    }

    final List<BeatMarker> sorted = beats.toList()
      ..sort((BeatMarker a, BeatMarker b) => a.tsMs.compareTo(b.tsMs));
    final List<int> regular = <int>[];
    for (int i = 0; i < sorted.length; i++) {
      if (sorted[i].type == BeatType.beat) {
        regular.add(i);
      }
    }

    if (regular.length < 4) {
      return sorted;
    }

    final int barOffset = _bestOffset(sorted, regular, 4);
    final List<BeatMarker> annotated = <BeatMarker>[];
    for (int i = 0; i < sorted.length; i++) {
      final int regularIndex = regular.indexOf(i);
      if (regularIndex < 0) {
        annotated.add(sorted[i]);
        continue;
      }

      final bool isBarAnchor = (regularIndex - barOffset) >= 0 &&
          (regularIndex - barOffset) % 4 == 0;
      final bool isPhraseAnchor = (regularIndex - barOffset) >= 0 &&
          (regularIndex - barOffset) % 16 == 0;
      final BeatMarker beat = sorted[i];
      annotated.add(
        BeatMarker(
          tsMs: beat.tsMs,
          strength: beat.strength,
          confidence: beat.confidence,
          type: beat.type,
          energyLevel: beat.energyLevel,
          isBarAnchor: isBarAnchor,
          isPhraseAnchor: isPhraseAnchor,
        ),
      );
    }

    return annotated;
  }

  int _bestOffset(List<BeatMarker> beats, List<int> regular, int step) {
    int bestOffset = 0;
    double bestScore = double.negativeInfinity;

    for (int offset = 0; offset < step; offset++) {
      double score = 0;
      int count = 0;
      for (int i = offset; i < regular.length; i += step) {
        final BeatMarker beat = beats[regular[i]];
        score += _anchorScore(beat);
        count += 1;
      }

      if (count == 0) {
        continue;
      }

      final double normalized = score / count;
      if (normalized > bestScore) {
        bestScore = normalized;
        bestOffset = offset;
      }
    }

    return bestOffset;
  }

  double _anchorScore(BeatMarker beat) {
    final double energyBonus = switch (beat.energyLevel) {
      BeatEnergyLevel.peak => 0.30,
      BeatEnergyLevel.high => 0.18,
      BeatEnergyLevel.medium => 0.08,
      BeatEnergyLevel.low => 0.0,
    };
    return beat.strength * 0.65 + beat.confidence * 0.35 + energyBonus;
  }
}