class DuckingEnvelopePoint {
  const DuckingEnvelopePoint({
    required this.tsMs,
    required this.gainDb,
  });

  final int tsMs;
  final double gainDb;
}

class DuckingPlanner {
  const DuckingPlanner();

  List<DuckingEnvelopePoint> buildEnvelope({
    required List<int> speechActiveMs,
    required int durationMs,
  }) {
    final List<DuckingEnvelopePoint> points = <DuckingEnvelopePoint>[
      const DuckingEnvelopePoint(tsMs: 0, gainDb: -2.0),
    ];

    for (final int ts in speechActiveMs) {
      points.add(DuckingEnvelopePoint(tsMs: ts, gainDb: -14.0));
      points.add(DuckingEnvelopePoint(tsMs: ts + 350, gainDb: -8.0));
    }

    points.add(DuckingEnvelopePoint(tsMs: durationMs, gainDb: -2.0));
    points.sort((a, b) => a.tsMs.compareTo(b.tsMs));
    return points;
  }
}
