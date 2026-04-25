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

class TimelineClip {
  const TimelineClip({
    required this.assetId,
    required this.srcInMs,
    required this.srcOutMs,
    required this.timelineInMs,
    required this.timelineOutMs,
    this.speed = 1.0,
  });

  final String assetId;
  final int srcInMs;
  final int srcOutMs;
  final int timelineInMs;
  final int timelineOutMs;
  final double speed;

  int get durationMs => timelineOutMs - timelineInMs;
}

class TimelineProject {
  const TimelineProject({
    required this.id,
    required this.clips,
    required this.beats,
    required this.highlights,
    required this.targetDurationMs,
    this.quantizationMs = 100,
  });

  final String id;
  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final List<HighlightSegment> highlights;
  final int targetDurationMs;
  final int quantizationMs;
}
