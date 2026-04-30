import 'import_media_item.dart';
import 'timeline_models.dart';

enum CanvasAspectPreset {
  ratio9x16,
  ratio1x1,
  ratio16x9,
}

enum ImportTransitionPreset {
  cut,
  dissolveShort,
}

enum ImportAudioMixPreset {
  sourcePriority,
  balanced,
  bgmPriority,
}

class EditorSessionInput {
  const EditorSessionInput({
    required this.mediaItems,
    this.bgmItems = const <BgmItem>[],
    this.bgmLoop = true,
    this.editPaceLevel = 3,
    this.applyDuckingToAllClips = false,
    this.minClipMs = 1200,
    this.maxClipMs = 4800,
    this.canvasAspectPreset = CanvasAspectPreset.ratio9x16,
    this.transitionPreset = ImportTransitionPreset.cut,
    this.audioMixPreset = ImportAudioMixPreset.balanced,
    this.defaultFilterEffect = ClipFilterEffect.none,
  });

  /// All source media items (videos and/or photos), in playback order.
  final List<MediaItem> mediaItems;

  /// Background music tracks.  When [bgmLoop] is true a single track is
  /// looped; otherwise tracks are chained end-to-end to fill the timeline.
  final List<BgmItem> bgmItems;

  /// Whether BGM should loop (true) or chain sequentially (false).
  final bool bgmLoop;

  /// Import-stage editing pace preference (1=slow, 3=normal, 5=fast).
  final int editPaceLevel;

  /// When true, initial timeline clips are created with ducking enabled.
  final bool applyDuckingToAllClips;

  /// Requested minimum/maximum generated clip duration.
  final int minClipMs;
  final int maxClipMs;

  /// Canvas ratio preference for preview/export defaults.
  final CanvasAspectPreset canvasAspectPreset;

  /// Default transition behavior to apply between clips.
  final ImportTransitionPreset transitionPreset;

  /// Global audio balance preference.
  final ImportAudioMixPreset audioMixPreset;

  /// Default filter applied to newly generated clips.
  final ClipFilterEffect defaultFilterEffect;

  // ── Convenience getters ──────────────────────────────────────────────────

  /// Path of the first non-photo media item, falling back to the first item
  /// in the list, or an empty string when the list is empty.
  String get primaryVideoPath {
    for (final MediaItem m in mediaItems) {
      if (!m.isPhoto) return m.path;
    }
    return mediaItems.isNotEmpty ? mediaItems.first.path : '';
  }

  String? get primaryVideoName {
    for (final MediaItem m in mediaItems) {
      if (!m.isPhoto) return m.name;
    }
    return mediaItems.isNotEmpty ? mediaItems.first.name : null;
  }

  String? get primaryBgmPath =>
      bgmItems.isNotEmpty ? bgmItems.first.path : null;
}
