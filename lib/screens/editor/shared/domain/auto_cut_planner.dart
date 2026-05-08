import '../../../../core/time/time_quantizer.dart';
import '../../../../core/models/editor_session_input.dart';
import '../../../../core/models/timeline_models.dart';

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
    AutoEditProfile profile = AutoEditProfile.adaptiveMontage,
    BeatSyncStrength beatSyncStrength = BeatSyncStrength.matched,
  }) {
    final List<_BoundaryCandidate> pool = <_BoundaryCandidate>[
      const _BoundaryCandidate(tsMs: 0, source: 'start', weight: 0),
      _BoundaryCandidate(tsMs: _quantizer.quantizeMs(mediaDurationMs), source: 'tail', weight: 1000),
    ];

    final double highlightGate = switch (profile) {
      AutoEditProfile.balanced => 58,
      AutoEditProfile.adaptiveMontage => 45,
      AutoEditProfile.beatFocus => 38,
    };
    final double beatWeight = switch (beatSyncStrength) {
      BeatSyncStrength.relaxed => 20,
      BeatSyncStrength.matched => 34,
      BeatSyncStrength.aggressive => 50,
    };
    final double highlightWeight = switch (profile) {
      AutoEditProfile.balanced => 20,
      AutoEditProfile.adaptiveMontage => 32,
      AutoEditProfile.beatFocus => 16,
    };

    for (final HighlightSegment segment in highlights) {
      if (segment.score < highlightGate) {
        continue;
      }
      pool.add(
        _BoundaryCandidate(
          tsMs: _quantizer.quantizeMs(segment.startMs),
          source: 'highlight-start',
          weight: (segment.score * 0.45 + highlightWeight).round(),
        ),
      );
      pool.add(
        _BoundaryCandidate(
          tsMs: _quantizer.quantizeMs(segment.endMs),
          source: 'highlight-end',
          weight: (segment.score * 0.4 + highlightWeight * 0.8).round(),
        ),
      );
    }

    for (final BeatMarker beat in beats) {
      final int boost = (beat.strength * beatWeight + beat.confidence * (beatWeight * 0.7)).round();
      pool.add(
        _BoundaryCandidate(
          tsMs: _quantizer.quantizeMs(beat.tsMs),
          source: 'beat',
          weight: 30 + boost,
        ),
      );
    }

    final List<_BoundaryCandidate> candidates = _dedupeCandidates(pool);
    final List<CutPoint> output = <CutPoint>[const CutPoint(tsMs: 0, source: 'start')];
    int cursor = 0;

    while (mediaDurationMs - cursor > minClipMs) {
      final int remaining = mediaDurationMs - cursor;
      if (remaining <= maxClipMs) {
        break;
      }

      final int targetWindow = _targetWindowMs(
        minClipMs: minClipMs,
        maxClipMs: maxClipMs,
        profile: profile,
        beatSyncStrength: beatSyncStrength,
      );
      final int preferred = (cursor + targetWindow).clamp(cursor + minClipMs, cursor + maxClipMs);
      final int minCandidateTs = cursor + minClipMs;
      final int maxCandidateTs = (cursor + maxClipMs).clamp(minCandidateTs, mediaDurationMs);

      final _BoundaryCandidate? selected = _pickBoundary(
        candidates: candidates,
        highlights: highlights,
        cursor: cursor,
        preferredTs: preferred,
        minCandidateTs: minCandidateTs,
        maxCandidateTs: maxCandidateTs,
        mediaDurationMs: mediaDurationMs,
        beatSyncStrength: beatSyncStrength,
      );

      final int nextTs = selected?.tsMs ?? _quantizer.quantizeMs(preferred);
      if (nextTs <= cursor || nextTs >= mediaDurationMs) {
        break;
      }

      output.add(CutPoint(tsMs: nextTs, source: selected?.source ?? 'auto-fill'));
      cursor = nextTs;
    }

    if (output.last.tsMs != _quantizer.quantizeMs(mediaDurationMs)) {
      output.add(CutPoint(tsMs: _quantizer.quantizeMs(mediaDurationMs), source: 'tail'));
    }

    return output;
  }

  int _targetWindowMs({
    required int minClipMs,
    required int maxClipMs,
    required AutoEditProfile profile,
    required BeatSyncStrength beatSyncStrength,
  }) {
    final double profileBias = switch (profile) {
      AutoEditProfile.balanced => 0.58,
      AutoEditProfile.adaptiveMontage => 0.46,
      AutoEditProfile.beatFocus => 0.36,
    };
    final double syncBias = switch (beatSyncStrength) {
      BeatSyncStrength.relaxed => 0.1,
      BeatSyncStrength.matched => 0.0,
      BeatSyncStrength.aggressive => -0.08,
    };
    final double factor = (profileBias + syncBias).clamp(0.22, 0.72);
    return minClipMs + ((maxClipMs - minClipMs) * factor).round();
  }

  _BoundaryCandidate? _pickBoundary({
    required List<_BoundaryCandidate> candidates,
    required List<HighlightSegment> highlights,
    required int cursor,
    required int preferredTs,
    required int minCandidateTs,
    required int maxCandidateTs,
    required int mediaDurationMs,
    required BeatSyncStrength beatSyncStrength,
  }) {
    _BoundaryCandidate? best;
    double bestScore = double.negativeInfinity;

    for (final _BoundaryCandidate candidate in candidates) {
      if (candidate.tsMs < minCandidateTs || candidate.tsMs > maxCandidateTs) {
        continue;
      }

      final int spacing = candidate.tsMs - cursor;
      if (spacing <= 0 || candidate.tsMs >= mediaDurationMs) {
        continue;
      }

      final int targetDistance = (candidate.tsMs - preferredTs).abs();
      final double targetFit = 44 - (targetDistance / 120).clamp(0, 40);
      final double beatBonus = switch (candidate.source) {
        'beat' => switch (beatSyncStrength) {
            BeatSyncStrength.relaxed => 8,
            BeatSyncStrength.matched => 16,
            BeatSyncStrength.aggressive => 24,
          },
        _ => 0,
      };
      final double highlightBonus = _highlightBonus(candidate.tsMs, highlights);
      final double score = candidate.weight + targetFit + beatBonus + highlightBonus;

      if (score > bestScore) {
        best = candidate;
        bestScore = score;
      }
    }

    return best;
  }

  double _highlightBonus(int tsMs, List<HighlightSegment> highlights) {
    double best = 0;
    for (final HighlightSegment segment in highlights) {
      if (tsMs >= segment.startMs && tsMs <= segment.endMs) {
        best = best < 18 ? 18 : best;
      }

      final int edgeDistance = <int>[
        (segment.startMs - tsMs).abs(),
        (segment.endMs - tsMs).abs(),
      ].reduce((int a, int b) => a < b ? a : b);
      if (edgeDistance <= 400) {
        final double edgeScore = 20 - (edgeDistance / 40);
        if (edgeScore > best) {
          best = edgeScore;
        }
      }
    }
    return best;
  }

  List<_BoundaryCandidate> _dedupeCandidates(List<_BoundaryCandidate> input) {
    final Map<int, _BoundaryCandidate> deduped = <int, _BoundaryCandidate>{};
    for (final _BoundaryCandidate candidate in input) {
      final _BoundaryCandidate? existing = deduped[candidate.tsMs];
      if (existing == null || existing.weight < candidate.weight) {
        deduped[candidate.tsMs] = candidate;
      }
    }
    final List<_BoundaryCandidate> output = deduped.values.toList()
      ..sort((_BoundaryCandidate a, _BoundaryCandidate b) => a.tsMs.compareTo(b.tsMs));
    return output;
  }
}

class _BoundaryCandidate {
  const _BoundaryCandidate({
    required this.tsMs,
    required this.source,
    required this.weight,
  });

  final int tsMs;
  final String source;
  final int weight;
}
