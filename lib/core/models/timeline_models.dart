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

class BeatMarker {
  const BeatMarker({
    required this.tsMs,
    required this.strength,
    required this.confidence,
  });

  final int tsMs;
  final double strength;
  final double confidence;
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

  int get durationMs => timelineOutMs - timelineInMs;

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
  });

  final String id;
  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final List<HighlightSegment> highlights;
  final int targetDurationMs;
  final int quantizationMs;

  /// Ordered list of BGM track paths (may be empty).
  final List<String> bgmPaths;

  /// When true a single BGM track is looped; otherwise tracks are chained.
  final bool bgmLoop;
}
