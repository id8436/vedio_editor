class MediaAsset {
  const MediaAsset({
    required this.id,
    required this.path,
    required this.durationMs,
    required this.width,
    required this.height,
    required this.fps,
    this.hasAudio = true,
  });

  final String id;
  final String path;
  final int durationMs;
  final int width;
  final int height;
  final double fps;
  final bool hasAudio;
}

class HighlightSegment {
  const HighlightSegment({
    required this.startMs,
    required this.endMs,
    required this.score,
    required this.reasons,
  });

  final int startMs;
  final int endMs;
  final double score;
  final List<String> reasons;
}

/// The origin of a beat marker.
/// [beat] — regular rhythmic onset detected from RMS energy.
/// [bass] — sub-bass / kick / 808 onset detected from low-frequency energy.
enum BeatType { beat, bass }

/// Relative energy level at the beat position, derived from percentile
/// classification of the local energy curve.
/// [peak] ≥ p88  — drop / impact
/// [high] ≥ p72  — strong beat
/// [medium]       — normal beat
/// [low]  ≤ p30  — soft / transitional
enum BeatEnergyLevel { peak, high, medium, low }

class BeatMarker {
  const BeatMarker({
    required this.tsMs,
    required this.strength,
    required this.confidence,
    this.type = BeatType.beat,
    this.energyLevel = BeatEnergyLevel.medium,
    this.isBarAnchor = false,
    this.isPhraseAnchor = false,
  });

  final int tsMs;
  final double strength;
  final double confidence;
  final BeatType type;
  final BeatEnergyLevel energyLevel;
  final bool isBarAnchor;
  final bool isPhraseAnchor;
}

class CutPoint {
  const CutPoint({
    required this.tsMs,
    required this.source,
    this.locked = false,
  });

  final int tsMs;
  final String source;
  final bool locked;
}

enum ClipFilterEffect {
  none,
  warm,
  cool,
  cinematic,
  mono,
}

enum ClipTextPreset {
  none,
  titleCard,
  lowerThird,
  caption,
}

enum ClipTextTheme {
  clean,
  warm,
  ocean,
  punch,
}

class TimelineClip {
  const TimelineClip({
    required this.assetId,
    required this.srcInMs,
    required this.srcOutMs,
    required this.timelineInMs,
    required this.timelineOutMs,
    this.speed = 1.0,
    this.audioDucking = false,
    this.filterEffect = ClipFilterEffect.none,
    this.textPreset = ClipTextPreset.none,
    this.textPrimary = '',
    this.textSecondary = '',
    this.textScale = 1.0,
    this.textTheme = ClipTextTheme.clean,
  });

  final String assetId;
  final int srcInMs;
  final int srcOutMs;
  final int timelineInMs;
  final int timelineOutMs;
  final double speed;
  final bool audioDucking;
  final ClipFilterEffect filterEffect;
  final ClipTextPreset textPreset;
  final String textPrimary;
  final String textSecondary;
  final double textScale;
  final ClipTextTheme textTheme;

  int get durationMs => timelineOutMs - timelineInMs;

  bool get hasTextOverlay =>
      textPreset != ClipTextPreset.none && textPrimary.trim().isNotEmpty;

  TimelineClip copyWith({
    String? assetId,
    int? srcInMs,
    int? srcOutMs,
    int? timelineInMs,
    int? timelineOutMs,
    double? speed,
    bool? audioDucking,
    ClipFilterEffect? filterEffect,
    ClipTextPreset? textPreset,
    String? textPrimary,
    String? textSecondary,
    double? textScale,
    ClipTextTheme? textTheme,
  }) {
    return TimelineClip(
      assetId: assetId ?? this.assetId,
      srcInMs: srcInMs ?? this.srcInMs,
      srcOutMs: srcOutMs ?? this.srcOutMs,
      timelineInMs: timelineInMs ?? this.timelineInMs,
      timelineOutMs: timelineOutMs ?? this.timelineOutMs,
      speed: speed ?? this.speed,
      audioDucking: audioDucking ?? this.audioDucking,
      filterEffect: filterEffect ?? this.filterEffect,
      textPreset: textPreset ?? this.textPreset,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textScale: textScale ?? this.textScale,
      textTheme: textTheme ?? this.textTheme,
    );
  }
}

class TimelineProject {
  const TimelineProject({
    required this.id,
    required this.clips,
    required this.beats,
    required this.highlights,
    required this.targetDurationMs,
    this.quantizationMs = 100,
    this.bgmPaths = const <String>[],
    this.bgmLoop = true,
    this.bgmCoverageDurationMs = 0,
  });

  final String id;
  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final List<HighlightSegment> highlights;
  final int targetDurationMs;
  final int quantizationMs;

  /// Ordered list of BGM track paths (may be empty).
  final List<String> bgmPaths;

  /// Legacy compatibility flag retained for saved project documents.
  final bool bgmLoop;

  /// Total duration of the chained BGM sequence before any repeat is applied.
  final int bgmCoverageDurationMs;

  bool get shouldRepeatBgm => bgmPaths.isNotEmpty;

  TimelineProject copyWith({
    String? id,
    List<TimelineClip>? clips,
    List<BeatMarker>? beats,
    List<HighlightSegment>? highlights,
    int? targetDurationMs,
    int? quantizationMs,
    List<String>? bgmPaths,
    bool? bgmLoop,
    int? bgmCoverageDurationMs,
  }) {
    return TimelineProject(
      id: id ?? this.id,
      clips: clips ?? this.clips,
      beats: beats ?? this.beats,
      highlights: highlights ?? this.highlights,
      targetDurationMs: targetDurationMs ?? this.targetDurationMs,
      quantizationMs: quantizationMs ?? this.quantizationMs,
      bgmPaths: bgmPaths ?? this.bgmPaths,
      bgmLoop: bgmLoop ?? this.bgmLoop,
      bgmCoverageDurationMs: bgmCoverageDurationMs ?? this.bgmCoverageDurationMs,
    );
  }
}
