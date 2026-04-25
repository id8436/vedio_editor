class HighlightFeature {
  const HighlightFeature({
    required this.motion,
    required this.sceneCut,
    required this.faceCount,
    required this.audioEnergy,
    required this.silent,
  });

  final double motion;
  final double sceneCut;
  final int faceCount;
  final double audioEnergy;
  final bool silent;
}

class HighlightScorer {
  const HighlightScorer({
    this.motionWeight = 0.35,
    this.sceneWeight = 0.30,
    this.faceWeight = 0.15,
    this.audioWeight = 0.20,
  });

  final double motionWeight;
  final double sceneWeight;
  final double faceWeight;
  final double audioWeight;

  double score(HighlightFeature feature) {
    final double faceNorm = (feature.faceCount.clamp(0, 4) / 4.0).toDouble();
    final double base =
        (feature.motion * motionWeight) +
        (feature.sceneCut * sceneWeight) +
        (faceNorm * faceWeight) +
        (feature.audioEnergy * audioWeight);

    final double silentPenalty = feature.silent ? 0.35 : 0.0;
    return ((base - silentPenalty).clamp(0.0, 1.0) * 100.0);
  }
}
