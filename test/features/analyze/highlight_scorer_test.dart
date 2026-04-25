import 'package:beat_clip/features/analyze/domain/highlight_scorer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HighlightScorer', () {
    test('applies silent penalty and clamps output', () {
      const HighlightScorer scorer = HighlightScorer();

      const HighlightFeature energetic = HighlightFeature(
        motion: 0.9,
        sceneCut: 0.7,
        faceCount: 2,
        audioEnergy: 0.8,
        silent: false,
      );

      const HighlightFeature silent = HighlightFeature(
        motion: 0.9,
        sceneCut: 0.7,
        faceCount: 2,
        audioEnergy: 0.8,
        silent: true,
      );

      final double energeticScore = scorer.score(energetic);
      final double silentScore = scorer.score(silent);

      expect(energeticScore, greaterThan(silentScore));
      expect(energeticScore, inInclusiveRange(0, 100));
      expect(silentScore, inInclusiveRange(0, 100));
    });
  });
}
