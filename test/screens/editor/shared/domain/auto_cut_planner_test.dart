import 'package:beat_clip/core/models/editor_session_input.dart';
import 'package:beat_clip/core/models/timeline_models.dart';
import 'package:beat_clip/screens/editor/shared/domain/auto_cut_planner.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AutoCutPlanner', () {
    const AutoCutPlanner planner = AutoCutPlanner();
    const List<HighlightSegment> highlights = <HighlightSegment>[
      HighlightSegment(startMs: 1600, endMs: 3200, score: 72, reasons: <String>['motion']),
      HighlightSegment(startMs: 4200, endMs: 5600, score: 84, reasons: <String>['audio']),
    ];
    const List<BeatMarker> beats = <BeatMarker>[
      BeatMarker(tsMs: 1000, strength: 0.6, confidence: 0.7),
      BeatMarker(tsMs: 2000, strength: 0.9, confidence: 0.95),
      BeatMarker(tsMs: 3000, strength: 0.5, confidence: 0.6),
      BeatMarker(tsMs: 4200, strength: 0.95, confidence: 0.9),
      BeatMarker(tsMs: 5200, strength: 0.7, confidence: 0.75),
      BeatMarker(tsMs: 6400, strength: 0.8, confidence: 0.8),
    ];

    test('aggressive beat focus prefers strong beat boundaries', () {
      final List<CutPoint> cuts = planner.generateCutPoints(
        highlights: highlights,
        beats: beats,
        minClipMs: 900,
        maxClipMs: 2600,
        mediaDurationMs: 7200,
        profile: AutoEditProfile.beatFocus,
        beatSyncStrength: BeatSyncStrength.aggressive,
      );

      expect(cuts.first.tsMs, 0);
      expect(cuts.last.tsMs, 7200);
      expect(cuts.any((CutPoint cut) => cut.tsMs == 2000), isTrue);
      expect(cuts.any((CutPoint cut) => cut.tsMs == 4200), isTrue);
    });

    test('balanced profile still returns bounded sequential cuts', () {
      final List<CutPoint> cuts = planner.generateCutPoints(
        highlights: highlights,
        beats: beats,
        minClipMs: 1200,
        maxClipMs: 3600,
        mediaDurationMs: 7200,
        profile: AutoEditProfile.balanced,
        beatSyncStrength: BeatSyncStrength.relaxed,
      );

      expect(cuts.length, greaterThanOrEqualTo(3));
      for (int index = 1; index < cuts.length; index++) {
        expect(cuts[index].tsMs, greaterThan(cuts[index - 1].tsMs));
      }
    });
    test('respects min and max clip constraints', () {
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

    test('prefers nearby bar anchors over stronger off-grid beats', () {
      const List<BeatMarker> beats = <BeatMarker>[
        BeatMarker(tsMs: 3000, strength: 0.92, confidence: 0.92),
        BeatMarker(
          tsMs: 3200,
          strength: 0.74,
          confidence: 0.78,
          isBarAnchor: true,
        ),
        BeatMarker(
          tsMs: 5200,
          strength: 0.88,
          confidence: 0.90,
          isPhraseAnchor: true,
        ),
      ];

      final List<CutPoint> cuts = planner.generateCutPoints(
        highlights: const <HighlightSegment>[],
        beats: beats,
        minClipMs: 2500,
        maxClipMs: 3400,
        mediaDurationMs: 6200,
        profile: AutoEditProfile.balanced,
        beatSyncStrength: BeatSyncStrength.matched,
      );

      expect(cuts.any((CutPoint cut) => cut.tsMs == 3200), isTrue);
      expect(cuts.any((CutPoint cut) => cut.tsMs == 3000), isFalse);
    });

    test('balanced cleanup removes a tight early cut that beat focus keeps', () {
      const List<BeatMarker> beats = <BeatMarker>[
        BeatMarker(tsMs: 1200, strength: 1.00, confidence: 0.98),
        BeatMarker(tsMs: 2400, strength: 0.62, confidence: 0.62),
        BeatMarker(tsMs: 5000, strength: 0.94, confidence: 0.92, isBarAnchor: true),
      ];

      final List<CutPoint> balancedCuts = planner.generateCutPoints(
        highlights: const <HighlightSegment>[],
        beats: beats,
        minClipMs: 1000,
        maxClipMs: 2800,
        mediaDurationMs: 7200,
        profile: AutoEditProfile.balanced,
        beatSyncStrength: BeatSyncStrength.matched,
      );
      final List<CutPoint> beatFocusCuts = planner.generateCutPoints(
        highlights: const <HighlightSegment>[],
        beats: beats,
        minClipMs: 1000,
        maxClipMs: 2800,
        mediaDurationMs: 7200,
        profile: AutoEditProfile.beatFocus,
        beatSyncStrength: BeatSyncStrength.matched,
      );

      expect(balancedCuts.any((CutPoint cut) => cut.tsMs == 1200), isFalse);
      expect(beatFocusCuts.any((CutPoint cut) => cut.tsMs == 1200), isTrue);
      expect(balancedCuts.last.tsMs, 7200);
      expect(beatFocusCuts.last.tsMs, 7200);
    });
  });
}
