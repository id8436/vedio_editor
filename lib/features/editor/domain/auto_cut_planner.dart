import '../../../core/time/time_quantizer.dart';
import '../../../core/models/timeline_models.dart';

class AutoCutPlanner {
  const AutoCutPlanner({TimeQuantizer? quantizer})
      : _quantizer = quantizer ?? const TimeQuantizer();

  final TimeQuantizer _quantizer;

  List<CutPoint> generateCutPoints({
    required List<HighlightSegment> highlights,
    required List<BeatMarker> beats,
    required int minClipMs,
    required int maxClipMs,
    required int mediaDurationMs,
  }) {
    final List<int> candidates = <int>[0];

    for (final HighlightSegment segment in highlights) {
      if (segment.score < 45) {
        continue;
      }
      candidates.add(_quantizer.quantizeMs(segment.startMs));
      candidates.add(_quantizer.quantizeMs(segment.endMs));
    }

    for (final BeatMarker beat in beats) {
      candidates.add(_quantizer.quantizeMs(beat.tsMs));
    }

    candidates
      ..add(_quantizer.quantizeMs(mediaDurationMs))
      ..sort();

    final List<CutPoint> output = <CutPoint>[];
    int last = -minClipMs;

    for (final int ts in candidates.toSet().toList()..sort()) {
      final int distance = ts - last;
      if (distance < minClipMs && ts != mediaDurationMs) {
        continue;
      }
      if (distance > maxClipMs) {
        int fill = last + maxClipMs;
        while (fill < ts) {
          output.add(CutPoint(tsMs: _quantizer.quantizeMs(fill), source: 'auto-fill'));
          fill += maxClipMs;
        }
      }
      output.add(CutPoint(tsMs: ts, source: 'auto'));
      last = ts;
    }

    if (output.isEmpty || output.last.tsMs != mediaDurationMs) {
      output.add(CutPoint(tsMs: _quantizer.quantizeMs(mediaDurationMs), source: 'tail'));
    }

    return output;
  }
}
