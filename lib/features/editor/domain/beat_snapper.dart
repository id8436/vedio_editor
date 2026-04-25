import '../../../core/models/timeline_models.dart';

class BeatSnapper {
  const BeatSnapper();

  int snapToNearestBeat({
    required int boundaryMs,
    required List<BeatMarker> beats,
    required int thresholdMs,
  }) {
    if (beats.isEmpty || thresholdMs <= 0) {
      return boundaryMs;
    }

    int nearest = boundaryMs;
    int nearestDiff = thresholdMs + 1;

    for (final BeatMarker beat in beats) {
      final int diff = (beat.tsMs - boundaryMs).abs();
      if (diff < nearestDiff) {
        nearest = beat.tsMs;
        nearestDiff = diff;
      }
    }

    return nearestDiff <= thresholdMs ? nearest : boundaryMs;
  }
}
