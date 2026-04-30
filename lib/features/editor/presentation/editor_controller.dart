import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';
import '../../../core/providers/settings_provider.dart';
import '../../../native/video_bridge_factory.dart';
import '../../../native/video_bridge_interface.dart';
import '../../analyze/data/native_analysis_mapper.dart';
import '../../analyze/domain/beat_detector.dart';
import '../../analyze/domain/highlight_scorer.dart';
import '../domain/auto_cut_planner.dart';
import '../domain/beat_snapper.dart';

final NotifierProvider<EditorController, EditorState> editorControllerProvider =
    NotifierProvider<EditorController, EditorState>(EditorController.new);

class EditorState {
  const EditorState({
    required this.project,
    required this.selectedCutIndex,
    this.lockedBoundaryIndices = const <int>{},
    this.beatSnapEnabled = true,
    this.beatSnapThresholdMs = 120,
    this.loading = false,
    this.analysisNotice,
    this.analysisDebugInfo,
    this.canUndo = false,
    this.canRedo = false,
  });

  final TimelineProject project;
  final int selectedCutIndex;
  final Set<int> lockedBoundaryIndices;
  final bool beatSnapEnabled;
  final int beatSnapThresholdMs;
  final bool loading;
  final String? analysisNotice;
  final String? analysisDebugInfo;
  final bool canUndo;
  final bool canRedo;

  factory EditorState.initial() {
    return EditorState(
      project: TimelineProject(
        id: const Uuid().v4(),
        clips: const <TimelineClip>[],
        beats: const <BeatMarker>[],
        highlights: const <HighlightSegment>[],
        targetDurationMs: 30000,
      ),
      selectedCutIndex: -1,
    );
  }

  EditorState copyWith({
    TimelineProject? project,
    int? selectedCutIndex,
    Set<int>? lockedBoundaryIndices,
    bool? beatSnapEnabled,
    int? beatSnapThresholdMs,
    bool? loading,
    String? analysisNotice,
    String? analysisDebugInfo,
    bool? canUndo,
    bool? canRedo,
  }) {
    return EditorState(
      project: project ?? this.project,
      selectedCutIndex: selectedCutIndex ?? this.selectedCutIndex,
      lockedBoundaryIndices: lockedBoundaryIndices ?? this.lockedBoundaryIndices,
      beatSnapEnabled: beatSnapEnabled ?? this.beatSnapEnabled,
      beatSnapThresholdMs: beatSnapThresholdMs ?? this.beatSnapThresholdMs,
      loading: loading ?? this.loading,
      analysisNotice: analysisNotice ?? this.analysisNotice,
      analysisDebugInfo: analysisDebugInfo ?? this.analysisDebugInfo,
      canUndo: canUndo ?? this.canUndo,
      canRedo: canRedo ?? this.canRedo,
    );
  }
}

class EditorController extends Notifier<EditorState> {
  final VideoBridgeInterface _bridge = createVideoBridge();
  final NativeAnalysisMapper _mapper = const NativeAnalysisMapper();
  final BeatSnapper _snapper = const BeatSnapper();

  // Undo/Redo stacks (store TimelineProject snapshots only).
  final List<TimelineProject> _undoStack = <TimelineProject>[];
  final List<TimelineProject> _redoStack = <TimelineProject>[];
  static const int _maxHistory = 50;

  /// Push current project to undo stack before making a change.
  /// Returns updated copyWith args to merge into the next state assignment.
  ({bool canUndo, bool canRedo}) _pushUndo(TimelineProject prev) {
    _undoStack.add(prev);
    if (_undoStack.length > _maxHistory) _undoStack.removeAt(0);
    _redoStack.clear();
    return (canUndo: true, canRedo: false);
  }

  void _syncUndoRedoState() {  // ignore: unused_element
    state = state.copyWith(
      canUndo: _undoStack.isNotEmpty,
      canRedo: _redoStack.isNotEmpty,
    );
  }

  bool get canUndo => _undoStack.isNotEmpty;
  bool get canRedo => _redoStack.isNotEmpty;

  void undo() {
    if (_undoStack.isEmpty) return;
    _redoStack.add(state.project);
    state = state.copyWith(
      project: _undoStack.removeLast(),
      canUndo: _undoStack.isNotEmpty,
      canRedo: true,
    );
  }

  void redo() {
    if (_redoStack.isEmpty) return;
    _undoStack.add(state.project);
    state = state.copyWith(
      project: _redoStack.removeLast(),
      canUndo: true,
      canRedo: _redoStack.isNotEmpty,
    );
  }

  @override
  EditorState build() {
    return _createDemoState(EditorState.initial());
  }

  EditorState _createDemoState(EditorState seed) {
    const HighlightScorer scorer = HighlightScorer();
    const BeatDetector beatDetector = BeatDetector();
    const AutoCutPlanner cutPlanner = AutoCutPlanner();

    const List<HighlightFeature> features = <HighlightFeature>[
      HighlightFeature(motion: 0.8, sceneCut: 0.5, faceCount: 1, audioEnergy: 0.6, silent: false),
      HighlightFeature(motion: 0.2, sceneCut: 0.1, faceCount: 0, audioEnergy: 0.1, silent: true),
      HighlightFeature(motion: 0.6, sceneCut: 0.7, faceCount: 2, audioEnergy: 0.75, silent: false),
      HighlightFeature(motion: 0.9, sceneCut: 0.4, faceCount: 3, audioEnergy: 0.65, silent: false),
      HighlightFeature(motion: 0.4, sceneCut: 0.3, faceCount: 0, audioEnergy: 0.5, silent: false),
    ];

    final List<HighlightSegment> highlights = <HighlightSegment>[];
    for (int i = 0; i < features.length; i++) {
      final double score = scorer.score(features[i]);
      highlights.add(
        HighlightSegment(
          startMs: i * 5000,
          endMs: (i + 1) * 5000,
          score: score,
          reasons: <String>['motion', 'audio'],
        ),
      );
    }

    final List<int> beatTimes = beatDetector.detectBeatsMs(
      <double>[0.1, 0.15, 0.2, 0.18, 0.4, 0.8, 0.3, 0.2, 0.9, 0.35, 0.2, 0.75, 0.25, 0.2],
      hopMs: 250,
    );

    final List<BeatMarker> beats = beatTimes
        .map((int ts) => BeatMarker(tsMs: ts, strength: 0.8, confidence: 0.7))
        .toList();

    final List<CutPoint> cuts = cutPlanner.generateCutPoints(
      highlights: highlights,
      beats: beats,
      minClipMs: 1200,
      maxClipMs: 4800,
      mediaDurationMs: 30000,
    );

    final List<TimelineClip> clips = <TimelineClip>[];
    for (int i = 0; i < cuts.length - 1; i++) {
      final int inMs = cuts[i].tsMs;
      final int outMs = cuts[i + 1].tsMs;
      if (outMs <= inMs) {
        continue;
      }
      clips.add(
        TimelineClip(
          assetId: 'demo-asset',
          srcInMs: inMs,
          srcOutMs: outMs,
          timelineInMs: inMs,
          timelineOutMs: outMs,
        ),
      );
    }

    return seed.copyWith(
      project: TimelineProject(
        id: seed.project.id,
        clips: clips,
        beats: beats,
        highlights: highlights,
        targetDurationMs: seed.project.targetDurationMs,
      ),
    );
  }

  void bootstrapDemoData() {
    state = _createDemoState(state);
  }

  String _extractExtension(String value) {
    final int dot = value.lastIndexOf('.');
    if (dot < 0 || dot == value.length - 1) {
      return 'unknown';
    }
    return value.substring(dot + 1).toLowerCase();
  }

  ({int minClipMs, int maxClipMs}) _paceToCutRange(int paceLevel) {
    switch (paceLevel.clamp(1, 5)) {
      case 1:
        return (minClipMs: 2200, maxClipMs: 6200);
      case 2:
        return (minClipMs: 1700, maxClipMs: 5400);
      case 3:
        return (minClipMs: 1200, maxClipMs: 4800);
      case 4:
        return (minClipMs: 900, maxClipMs: 3600);
      case 5:
        return (minClipMs: 700, maxClipMs: 2600);
      default:
        return (minClipMs: 1200, maxClipMs: 4800);
    }
  }

  String _buildAnalysisDebugInfo({
    required EditorSessionInput input,
    String? analysisMode,
    String? source,
    String? fallbackReason,
  }) {
    final MediaItem? firstVideo = input.mediaItems.isNotEmpty
        ? input.mediaItems.firstWhere(
            (MediaItem m) => !m.isPhoto,
            orElse: () => input.mediaItems.first,
          )
        : null;
    final String mediaLabel =
        firstVideo?.name?.trim().isNotEmpty == true
            ? firstVideo!.name!
            : (firstVideo?.path ?? '');
    final String mediaExt = _extractExtension(mediaLabel);

    return <String>[
      'app=beat_clip',
      if (analysisMode != null) 'analysis_mode=$analysisMode',
      if (source != null) 'source=$source',
      if (fallbackReason != null) 'fallback_reason=$fallbackReason',
      'media_count=${input.mediaItems.length}',
      'bgm_count=${input.bgmItems.length}',
      'bgm_loop=${input.bgmLoop}',
      'edit_pace_level=${input.editPaceLevel}',
      'apply_ducking_all=${input.applyDuckingToAllClips}',
      'clip_range_ms=${input.minClipMs}-${input.maxClipMs}',
      'canvas_aspect=${input.canvasAspectPreset.name}',
      'transition_preset=${input.transitionPreset.name}',
      'audio_mix=${input.audioMixPreset.name}',
      'default_filter=${input.defaultFilterEffect.name}',
      if (firstVideo != null) 'primary_video_path=${firstVideo.path}',
      if (firstVideo?.name != null) 'primary_video_name=${firstVideo!.name}',
      'primary_video_ext=$mediaExt',
    ].join('\n');
  }

  void clearAnalysisNotice() {
    if (state.analysisNotice == null) {
      return;
    }
    state = state.copyWith(analysisNotice: null);
  }

  Future<void> initializeFromImport(EditorSessionInput input) async {
    state = state.copyWith(
      loading: true,
      analysisNotice: null,
      analysisDebugInfo: null,
    );

    // Accumulated timeline data across all media items.
    final List<TimelineClip> allClips = <TimelineClip>[];
    final List<BeatMarker> allBeats = <BeatMarker>[];
    final List<HighlightSegment> allHighlights = <HighlightSegment>[];
    int timelineOffset = 0;

    // Tracks analysis metadata from the first video processed.
    String? analysisMode;
    String? fallbackReason;
    String? source;
    bool anyDemoMode = false;

    // Duration for still-image clips (milliseconds per photo).
    final int photoDurationMs =
      ref.read(settingsProvider).photoDurationSec * 1000;
    final ({int minClipMs, int maxClipMs}) paceRange =
      _paceToCutRange(input.editPaceLevel);
    final int requestedMin = input.minClipMs.clamp(400, 15000);
    final int requestedMax = input.maxClipMs.clamp(800, 30000);
    final int finalMin = requestedMin <= requestedMax
      ? requestedMin
      : paceRange.minClipMs;
    final int finalMax = requestedMin <= requestedMax
      ? requestedMax
      : paceRange.maxClipMs;

    try {
      for (final MediaItem item in input.mediaItems) {
        if (item.isPhoto) {
          // Photos become fixed-duration still clips; no beat analysis needed.
          allClips.add(
            TimelineClip(
              assetId: item.path,
              srcInMs: 0,
              srcOutMs: photoDurationMs,
              timelineInMs: timelineOffset,
              timelineOutMs: timelineOffset + photoDurationMs,
              audioDucking: input.applyDuckingToAllClips,
              filterEffect: input.defaultFilterEffect,
              textPreset: ClipTextPreset.none,
            ),
          );
          timelineOffset += photoDurationMs;
        } else {
          // Videos: run beat/highlight analysis then auto-cut.
          final Map<String, dynamic> raw = await _bridge.analyzeMedia(
            item.path,
            mediaBytes: item.bytes,
            mediaName: item.name,
          );

          // Capture first-video metadata for notice / debug report.
          if (analysisMode == null) {
            analysisMode = raw['analysis_mode'] as String?;
            fallbackReason = raw['fallback_reason'] as String?;
            source = raw['source'] as String?;
          }
          if (raw['analysis_mode'] == 'demo') anyDemoMode = true;

          final NativeAnalysisData analysis = _mapper.fromMap(raw);

          // Offset beats and highlights to the current timeline position.
          for (final BeatMarker b in analysis.beats) {
            allBeats.add(BeatMarker(
              tsMs: b.tsMs + timelineOffset,
              strength: b.strength,
              confidence: b.confidence,
            ));
          }
          for (final HighlightSegment h in analysis.highlights) {
            allHighlights.add(HighlightSegment(
              startMs: h.startMs + timelineOffset,
              endMs: h.endMs + timelineOffset,
              score: h.score,
              reasons: h.reasons,
            ));
          }

          final List<CutPoint> cuts = const AutoCutPlanner().generateCutPoints(
            highlights: analysis.highlights,
            beats: analysis.beats,
            minClipMs: finalMin,
            maxClipMs: finalMax,
            mediaDurationMs: analysis.durationMs,
          );

          for (int i = 0; i < cuts.length - 1; i++) {
            final int inMs = cuts[i].tsMs;
            final int outMs = cuts[i + 1].tsMs;
            if (outMs <= inMs) continue;
            allClips.add(
              TimelineClip(
                assetId: item.path,
                srcInMs: inMs,
                srcOutMs: outMs,
                timelineInMs: timelineOffset + inMs,
                timelineOutMs: timelineOffset + outMs,
                audioDucking: input.applyDuckingToAllClips,
                filterEffect: input.defaultFilterEffect,
                textPreset: ClipTextPreset.none,
              ),
            );
          }

          // Advance timeline cursor past this video's content.
          timelineOffset += analysis.durationMs;
        }
      }

      state = state.copyWith(
        loading: false,
        analysisNotice: anyDemoMode
            ? (fallbackReason ??
                'Using demo analysis. Full media analysis is unavailable for this file in browser.')
            : null,
        analysisDebugInfo: _buildAnalysisDebugInfo(
          input: input,
          analysisMode: analysisMode,
          source: source,
          fallbackReason: fallbackReason,
        ),
        project: TimelineProject(
          id: state.project.id,
          clips: allClips,
          beats: allBeats,
          highlights: allHighlights,
          targetDurationMs: state.project.targetDurationMs,
          bgmPaths: input.bgmItems.map((BgmItem b) => b.path).toList(),
          bgmLoop: input.bgmLoop,
        ),
      );
    } catch (_) {
      final EditorState seeded = _createDemoState(state);
      final String fallbackAssetId = input.primaryVideoPath;
      final List<TimelineClip> clips = seeded.project.clips
          .map(
            (TimelineClip clip) => TimelineClip(
              assetId: fallbackAssetId,
              srcInMs: clip.srcInMs,
              srcOutMs: clip.srcOutMs,
              timelineInMs: clip.timelineInMs,
              timelineOutMs: clip.timelineOutMs,
              speed: clip.speed,
              audioDucking: clip.audioDucking,
              filterEffect: clip.filterEffect,
              textPreset: clip.textPreset,
            ),
          )
          .toList();

      state = seeded.copyWith(
        loading: false,
        analysisNotice:
            'Analysis failed. Showing demo timeline so editing can continue.',
        analysisDebugInfo: _buildAnalysisDebugInfo(
          input: input,
          analysisMode: 'error',
          source: 'exception',
          fallbackReason: 'exception_during_initialize_from_import',
        ),
        project: TimelineProject(
          id: seeded.project.id,
          clips: clips,
          beats: seeded.project.beats,
          highlights: seeded.project.highlights,
          targetDurationMs: seeded.project.targetDurationMs,
          bgmPaths: input.bgmItems.map((BgmItem b) => b.path).toList(),
          bgmLoop: input.bgmLoop,
        ),
      );
    }
  }

  void updateTargetDurationMs(int value) {
    final ({bool canUndo, bool canRedo}) ur = _pushUndo(state.project);
    final int safe = value.clamp(5000, 120000);
    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: state.project.clips,
        beats: state.project.beats,
        highlights: state.project.highlights,
        targetDurationMs: safe,
      ),
      canUndo: ur.canUndo,
      canRedo: ur.canRedo,
    );
  }

  void setBeatSnapEnabled(bool enabled) {
    state = state.copyWith(beatSnapEnabled: enabled);
  }

  void setBeatSnapThresholdMs(int thresholdMs) {
    final int safe = thresholdMs.clamp(20, 400);
    state = state.copyWith(beatSnapThresholdMs: safe);
  }

  void toggleBoundaryLock(int clipIndex) {
    if (clipIndex < 0 || clipIndex >= state.project.clips.length - 1) {
      return;
    }

    final Set<int> locked = state.lockedBoundaryIndices.toSet();
    if (locked.contains(clipIndex)) {
      locked.remove(clipIndex);
    } else {
      locked.add(clipIndex);
    }
    state = state.copyWith(lockedBoundaryIndices: locked);
  }

  void dragCutPoint({required int clipIndex, required int deltaMs}) {
    if (clipIndex < 0 || clipIndex >= state.project.clips.length - 1) {
      return;
    }
    if (state.lockedBoundaryIndices.contains(clipIndex)) {
      return;
    }

    _pushUndo(state.project);

    final List<TimelineClip> clips = state.project.clips.toList();
    final TimelineClip left = clips[clipIndex];
    final TimelineClip right = clips[clipIndex + 1];

    final int minBoundary = left.timelineInMs + 500;
    final int maxBoundary = right.timelineOutMs - 500;
    int newBoundary = (left.timelineOutMs + deltaMs).clamp(minBoundary, maxBoundary);

    if (state.beatSnapEnabled) {
      newBoundary = _snapper.snapToNearestBeat(
        boundaryMs: newBoundary,
        beats: state.project.beats,
        thresholdMs: state.beatSnapThresholdMs,
      );
      newBoundary = newBoundary.clamp(minBoundary, maxBoundary);
    }

    clips[clipIndex] = left.copyWith(
      srcOutMs: newBoundary,
      timelineOutMs: newBoundary,
    );

    clips[clipIndex + 1] = right.copyWith(
      srcInMs: newBoundary,
      timelineInMs: newBoundary,
    );

    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: clips,
        beats: state.project.beats,
        highlights: state.project.highlights,
        targetDurationMs: state.project.targetDurationMs,
      ),
      canUndo: true,
      canRedo: false,
    );
  }

  void updateClipOptions({
    required int clipIndex,
    bool? audioDucking,
    ClipFilterEffect? filterEffect,
    ClipTextPreset? textPreset,
  }) {
    if (clipIndex < 0 || clipIndex >= state.project.clips.length) {
      return;
    }

    final ({bool canUndo, bool canRedo}) ur = _pushUndo(state.project);
    final List<TimelineClip> clips = state.project.clips.toList();
    clips[clipIndex] = clips[clipIndex].copyWith(
      audioDucking: audioDucking,
      filterEffect: filterEffect,
      textPreset: textPreset,
    );

    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: clips,
        beats: state.project.beats,
        highlights: state.project.highlights,
        targetDurationMs: state.project.targetDurationMs,
        bgmPaths: state.project.bgmPaths,
        bgmLoop: state.project.bgmLoop,
      ),
      canUndo: ur.canUndo,
      canRedo: ur.canRedo,
    );
  }

  void removeClip(int clipIndex) {
    if (clipIndex < 0 || clipIndex >= state.project.clips.length) {
      return;
    }

    final ({bool canUndo, bool canRedo}) ur = _pushUndo(state.project);
    final List<TimelineClip> sourceClips = state.project.clips.toList();
    final TimelineClip removedClip = sourceClips.removeAt(clipIndex);
    final int removedDuration = removedClip.durationMs;

    int timelineCursor = 0;
    final List<TimelineClip> clips = sourceClips
        .map((TimelineClip clip) {
          final int duration = clip.durationMs;
          final TimelineClip shifted = clip.copyWith(
            timelineInMs: timelineCursor,
            timelineOutMs: timelineCursor + duration,
          );
          timelineCursor += duration;
          return shifted;
        })
        .toList();

    final List<BeatMarker> beats = state.project.beats
        .where((BeatMarker beat) =>
            beat.tsMs < removedClip.timelineInMs || beat.tsMs >= removedClip.timelineOutMs)
        .map((BeatMarker beat) {
          if (beat.tsMs > removedClip.timelineOutMs) {
            return BeatMarker(
              tsMs: beat.tsMs - removedDuration,
              strength: beat.strength,
              confidence: beat.confidence,
            );
          }
          return beat;
        })
        .toList();

    final List<HighlightSegment> highlights = state.project.highlights
        .where((HighlightSegment segment) =>
            segment.endMs <= removedClip.timelineInMs ||
            segment.startMs >= removedClip.timelineOutMs)
        .map((HighlightSegment segment) {
          if (segment.startMs >= removedClip.timelineOutMs) {
            return HighlightSegment(
              startMs: segment.startMs - removedDuration,
              endMs: segment.endMs - removedDuration,
              score: segment.score,
              reasons: segment.reasons,
            );
          }
          return segment;
        })
        .toList();

    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: clips,
        beats: beats,
        highlights: highlights,
        targetDurationMs: state.project.targetDurationMs,
        bgmPaths: state.project.bgmPaths,
        bgmLoop: state.project.bgmLoop,
      ),
      selectedCutIndex: clips.isEmpty ? -1 : clipIndex.clamp(0, clips.length - 1),
      canUndo: ur.canUndo,
      canRedo: ur.canRedo,
    );
  }

  void duplicateClip(int clipIndex) {
    if (clipIndex < 0 || clipIndex >= state.project.clips.length) {
      return;
    }

    final ({bool canUndo, bool canRedo}) ur = _pushUndo(state.project);
    final List<TimelineClip> sourceClips = state.project.clips.toList();
    final TimelineClip source = sourceClips[clipIndex];
    final int duplicateDuration = source.durationMs;

    // Insert duplicate right after the selected clip.
    sourceClips.insert(
      clipIndex + 1,
      source.copyWith(
        timelineInMs: source.timelineOutMs,
        timelineOutMs: source.timelineOutMs + duplicateDuration,
      ),
    );

    // Reflow the full timeline to keep clips contiguous.
    int timelineCursor = 0;
    final List<TimelineClip> clips = sourceClips.map((TimelineClip clip) {
      final int duration = clip.durationMs;
      final TimelineClip shifted = clip.copyWith(
        timelineInMs: timelineCursor,
        timelineOutMs: timelineCursor + duration,
      );
      timelineCursor += duration;
      return shifted;
    }).toList();

    final int insertAtMs = source.timelineOutMs;

    final List<BeatMarker> beats = <BeatMarker>[];
    for (final BeatMarker beat in state.project.beats) {
      if (beat.tsMs >= insertAtMs) {
        beats.add(BeatMarker(
          tsMs: beat.tsMs + duplicateDuration,
          strength: beat.strength,
          confidence: beat.confidence,
        ));
      } else {
        beats.add(beat);
      }

      if (beat.tsMs >= source.timelineInMs && beat.tsMs < source.timelineOutMs) {
        beats.add(BeatMarker(
          tsMs: beat.tsMs + duplicateDuration,
          strength: beat.strength,
          confidence: beat.confidence,
        ));
      }
    }
    beats.sort((BeatMarker a, BeatMarker b) => a.tsMs.compareTo(b.tsMs));

    final List<HighlightSegment> highlights = <HighlightSegment>[];
    for (final HighlightSegment segment in state.project.highlights) {
      HighlightSegment shifted = segment;
      if (segment.startMs >= insertAtMs) {
        shifted = HighlightSegment(
          startMs: segment.startMs + duplicateDuration,
          endMs: segment.endMs + duplicateDuration,
          score: segment.score,
          reasons: segment.reasons,
        );
      }
      highlights.add(shifted);

      if (segment.startMs >= source.timelineInMs && segment.endMs <= source.timelineOutMs) {
        highlights.add(HighlightSegment(
          startMs: shifted.startMs + duplicateDuration,
          endMs: shifted.endMs + duplicateDuration,
          score: shifted.score,
          reasons: shifted.reasons,
        ));
      }
    }
    highlights.sort((HighlightSegment a, HighlightSegment b) => a.startMs.compareTo(b.startMs));

    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: clips,
        beats: beats,
        highlights: highlights,
        targetDurationMs: state.project.targetDurationMs,
        bgmPaths: state.project.bgmPaths,
        bgmLoop: state.project.bgmLoop,
      ),
      selectedCutIndex: (clipIndex + 1).clamp(0, clips.length - 1),
      canUndo: ur.canUndo,
      canRedo: ur.canRedo,
    );
  }

  void moveClip({required int oldIndex, required int newIndex}) {
    final int count = state.project.clips.length;
    if (oldIndex < 0 || oldIndex >= count || newIndex < 0 || newIndex >= count) {
      return;
    }
    if (oldIndex == newIndex) {
      return;
    }

    final ({bool canUndo, bool canRedo}) ur = _pushUndo(state.project);
    final List<TimelineClip> source = state.project.clips.toList();
    final TimelineClip moved = source.removeAt(oldIndex);
    source.insert(newIndex, moved);

    int cursor = 0;
    final List<TimelineClip> clips = source.map((TimelineClip clip) {
      final int duration = clip.durationMs;
      final TimelineClip shifted = clip.copyWith(
        timelineInMs: cursor,
        timelineOutMs: cursor + duration,
      );
      cursor += duration;
      return shifted;
    }).toList(growable: false);

    state = state.copyWith(
      project: TimelineProject(
        id: state.project.id,
        clips: clips,
        beats: state.project.beats,
        highlights: state.project.highlights,
        targetDurationMs: state.project.targetDurationMs,
        bgmPaths: state.project.bgmPaths,
        bgmLoop: state.project.bgmLoop,
      ),
      canUndo: ur.canUndo,
      canRedo: ur.canRedo,
    );
  }
}
