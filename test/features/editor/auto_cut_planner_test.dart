import 'package:beat_clip/core/models/timeline_models.dart';
import 'package:beat_clip/features/editor/domain/auto_cut_planner.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AutoCutPlanner', () {
    test('respects min and max clip constraints', () {
      const AutoCutPlanner planner = AutoCutPlanner();

      const List<HighlightSegment> highlights = <HighlightSegment>[
        HighlightSegment(startMs: 1000, endMs: 3000, score: 70, reasons: <String>['motion']),
        HighlightSegment(startMs: 5200, endMs: 7800, score: 65, reasons: <String>['scene']),
      ];

      const List<BeatMarker> beats = <BeatMarker>[
        BeatMarker(tsMs: 2000, strength: 0.8, confidence: 0.7),
        BeatMarker(tsMs: 4000, strength: 0.75, confidence: 0.7),
        BeatMarker(tsMs: 6000, strength: 0.77, confidence: 0.8),
      ];

      final cuts = planner.generateCutPoints(
        highlights: highlights,
        beats: beats,
        minClipMs: 1000,
        maxClipMs: 3000,
        mediaDurationMs: 9000,
      );

      expect(cuts.first.tsMs, 0);
      expect(cuts.last.tsMs, 9000);

      for (int i = 1; i < cuts.length; i++) {
        expect(cuts[i].tsMs - cuts[i - 1].tsMs, greaterThanOrEqualTo(1000));
      }
    });
  });
}
