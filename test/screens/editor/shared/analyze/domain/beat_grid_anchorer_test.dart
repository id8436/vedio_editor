import 'package:beat_clip/core/models/timeline_models.dart';
import 'package:beat_clip/screens/editor/shared/analyze/domain/beat_grid_anchorer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('marks repeating 4-beat bars and 16-beat phrases from strongest offset', () {
    const BeatGridAnchorer anchorer = BeatGridAnchorer();
    final List<BeatMarker> beats = List<BeatMarker>.generate(18, (int index) {
      final bool downbeat = index % 4 == 1;
      return BeatMarker(
        tsMs: 500 + index * 500,
        strength: downbeat ? 0.95 : 0.55,
        confidence: downbeat ? 0.90 : 0.65,
        energyLevel: downbeat ? BeatEnergyLevel.high : BeatEnergyLevel.medium,
      );
    });

    final List<BeatMarker> annotated = anchorer.annotate(beats);
    final List<int> barAnchors = annotated
        .where((BeatMarker beat) => beat.isBarAnchor)
        .map((BeatMarker beat) => beat.tsMs)
        .toList();
    final List<int> phraseAnchors = annotated
        .where((BeatMarker beat) => beat.isPhraseAnchor)
        .map((BeatMarker beat) => beat.tsMs)
        .toList();

    expect(barAnchors, containsAll(<int>[1000, 3000, 5000, 7000, 9000]));
    expect(phraseAnchors, containsAll(<int>[1000, 9000]));
  });
}