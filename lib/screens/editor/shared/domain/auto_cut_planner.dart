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
          source: beat.isPhraseAnchor
              ? 'phrase-anchor'
              : beat.isBarAnchor
                  ? 'bar-anchor'
                  : 'beat',
          weight: 30 + boost,
          isBarAnchor: beat.isBarAnchor,
          isPhraseAnchor: beat.isPhraseAnchor,
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

    return _cleanupCuts(
      cuts: output,
      candidates: candidates,
      minClipMs: minClipMs,
      maxClipMs: maxClipMs,
      mediaDurationMs: mediaDurationMs,
      profile: profile,
      beatSyncStrength: beatSyncStrength,
    );
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
        'beat' || 'bar-anchor' || 'phrase-anchor' => switch (beatSyncStrength) {
            BeatSyncStrength.relaxed => 8,
            BeatSyncStrength.matched => 16,
            BeatSyncStrength.aggressive => 24,
          },
        _ => 0,
      };
      final double anchorBonus = candidate.isPhraseAnchor
          ? 26
          : candidate.isBarAnchor
              ? 14
              : 0;
      final double highlightBonus = _highlightBonus(candidate.tsMs, highlights);
      final double score =
          candidate.weight + targetFit + beatBonus + anchorBonus + highlightBonus;

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
      if (existing == null) {
        deduped[candidate.tsMs] = candidate;
        continue;
      }

      deduped[candidate.tsMs] = _BoundaryCandidate(
        tsMs: candidate.tsMs,
        source: existing.weight >= candidate.weight ? existing.source : candidate.source,
        weight: existing.weight >= candidate.weight ? existing.weight : candidate.weight,
        isBarAnchor: existing.isBarAnchor || candidate.isBarAnchor,
        isPhraseAnchor: existing.isPhraseAnchor || candidate.isPhraseAnchor,
      );
    }
    final List<_BoundaryCandidate> output = deduped.values.toList()
      ..sort((_BoundaryCandidate a, _BoundaryCandidate b) => a.tsMs.compareTo(b.tsMs));
    return output;
  }

  List<CutPoint> _cleanupCuts({
    required List<CutPoint> cuts,
    required List<_BoundaryCandidate> candidates,
    required int minClipMs,
    required int maxClipMs,
    required int mediaDurationMs,
    required AutoEditProfile profile,
    required BeatSyncStrength beatSyncStrength,
  }) {
    if (cuts.length <= 2) {
      return cuts;
    }

    final Map<int, _BoundaryCandidate> byTs = <int, _BoundaryCandidate>{
      for (final _BoundaryCandidate candidate in candidates) candidate.tsMs: candidate,
    };
    final List<CutPoint> sorted = cuts.toList()
      ..sort((CutPoint a, CutPoint b) => a.tsMs.compareTo(b.tsMs));
    final int cleanupGap = _cleanupGapMs(
      minClipMs: minClipMs,
      maxClipMs: maxClipMs,
      profile: profile,
      beatSyncStrength: beatSyncStrength,
    );

    final List<CutPoint> filtered = <CutPoint>[sorted.first];
    for (int i = 1; i < sorted.length - 1; i++) {
      final CutPoint current = sorted[i];
      final CutPoint previous = filtered.last;
      final CutPoint next = sorted[i + 1];
      final _BoundaryCandidate? meta = byTs[current.tsMs];
      final bool mustKeep = meta?.isPhraseAnchor == true || meta?.isBarAnchor == true;
      final bool isTight = current.tsMs - previous.tsMs < cleanupGap;
      final bool canDrop = next.tsMs - previous.tsMs <= maxClipMs;

      if (isTight && canDrop && !mustKeep) {
        continue;
      }

      filtered.add(current);
    }
    filtered.add(sorted.last);

    List<CutPoint> expanded = filtered;
    bool changed = true;
    while (changed) {
      changed = false;
      final List<CutPoint> nextCuts = <CutPoint>[expanded.first];
      for (int i = 0; i < expanded.length - 1; i++) {
        final CutPoint left = expanded[i];
        final CutPoint right = expanded[i + 1];
        final int gap = right.tsMs - left.tsMs;

        if (gap > maxClipMs) {
          final _BoundaryCandidate? inserted = _pickCleanupCandidate(
            candidates: candidates,
            leftTs: left.tsMs,
            rightTs: right.tsMs,
            minClipMs: minClipMs,
            mediaDurationMs: mediaDurationMs,
          );
          if (inserted != null) {
            nextCuts.add(CutPoint(tsMs: inserted.tsMs, source: inserted.source));
            changed = true;
          }
        }

        nextCuts.add(right);
      }
      expanded = _uniqueCuts(nextCuts);
    }

    return expanded;
  }

  int _cleanupGapMs({
    required int minClipMs,
    required int maxClipMs,
    required AutoEditProfile profile,
    required BeatSyncStrength beatSyncStrength,
  }) {
    final double profileFactor = switch (profile) {
      AutoEditProfile.balanced => 1.45,
      AutoEditProfile.adaptiveMontage => 1.22,
      AutoEditProfile.beatFocus => 1.00,
    };
    final double syncFactor = switch (beatSyncStrength) {
      BeatSyncStrength.relaxed => 1.08,
      BeatSyncStrength.matched => 1.00,
      BeatSyncStrength.aggressive => 0.90,
    };
    final int raw = (minClipMs * profileFactor * syncFactor).round();
    return raw.clamp(minClipMs, maxClipMs);
  }

  _BoundaryCandidate? _pickCleanupCandidate({
    required List<_BoundaryCandidate> candidates,
    required int leftTs,
    required int rightTs,
    required int minClipMs,
    required int mediaDurationMs,
  }) {
    final int minTs = leftTs + minClipMs;
    final int maxTs = rightTs - minClipMs;
    if (minTs >= maxTs || minTs >= mediaDurationMs) {
      return null;
    }

    final int midpoint = (leftTs + rightTs) ~/ 2;
    _BoundaryCandidate? best;
    double bestScore = double.negativeInfinity;
    for (final _BoundaryCandidate candidate in candidates) {
      if (candidate.tsMs <= minTs || candidate.tsMs >= maxTs) {
        continue;
      }

      final double anchorBonus = candidate.isPhraseAnchor
          ? 32
          : candidate.isBarAnchor
              ? 18
              : 0;
      final double midpointFit =
          30 - ((candidate.tsMs - midpoint).abs() / 140).clamp(0, 24);
      final double score = candidate.weight + anchorBonus + midpointFit;
      if (score > bestScore) {
        best = candidate;
        bestScore = score;
      }
    }
    return best;
  }

  List<CutPoint> _uniqueCuts(List<CutPoint> input) {
    final Map<int, CutPoint> deduped = <int, CutPoint>{};
    for (final CutPoint cut in input) {
      deduped[cut.tsMs] = cut;
    }
    return deduped.values.toList()
      ..sort((CutPoint a, CutPoint b) => a.tsMs.compareTo(b.tsMs));
  }
}

class _BoundaryCandidate {
  const _BoundaryCandidate({
    required this.tsMs,
    required this.source,
    required this.weight,
    this.isBarAnchor = false,
    this.isPhraseAnchor = false,
  });

  final int tsMs;
  final String source;
  final int weight;
  final bool isBarAnchor;
  final bool isPhraseAnchor;
}
