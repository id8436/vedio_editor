import 'package:beat_clip/core/models/timeline_models.dart';
import 'package:beat_clip/features/editor/domain/beat_snapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BeatSnapper', () {
    test('snaps to nearest beat within threshold', () {
      const BeatSnapper snapper = BeatSnapper();
      const List<BeatMarker> beats = <BeatMarker>[
        BeatMarker(tsMs: 1000, strength: 0.8, confidence: 0.7),
        BeatMarker(tsMs: 1500, strength: 0.8, confidence: 0.7),
        BeatMarker(tsMs: 2000, strength: 0.8, confidence: 0.7),
      ];

      final int snapped = snapper.snapToNearestBeat(
        boundaryMs: 1420,
        beats: beats,
        thresholdMs: 120,
      );

      expect(snapped, 1500);
    });

    test('keeps original boundary when no beat in threshold', () {
      const BeatSnapper snapper = BeatSnapper();
      const List<BeatMarker> beats = <BeatMarker>[
        BeatMarker(tsMs: 1000, strength: 0.8, confidence: 0.7),
        BeatMarker(tsMs: 1500, strength: 0.8, confidence: 0.7),
      ];

      final int snapped = snapper.snapToNearestBeat(
        boundaryMs: 1720,
        beats: beats,
        thresholdMs: 120,
      );

      expect(snapped, 1720);
    });
  });
}
