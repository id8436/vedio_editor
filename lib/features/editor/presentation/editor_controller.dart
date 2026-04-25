import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/timeline_models.dart';
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

  String _buildAnalysisDebugInfo({
    required EditorSessionInput input,
    String? analysisMode,
    String? source,
    String? fallbackReason,
  }) {
    final String mediaLabel = input.videoName?.trim().isNotEmpty == true
        ? input.videoName!
        : input.videoPath;
    final String mediaExt = _extractExtension(mediaLabel);

    return <String>[
      'app=beat_clip',
      if (analysisMode != null) 'analysis_mode=$analysisMode',
      if (source != null) 'source=$source',
      if (fallbackReason != null) 'fallback_reason=$fallbackReason',
      'video_path=${input.videoPath}',
      if (input.videoName != null) 'video_name=${input.videoName}',
      'video_ext=$mediaExt',
      'video_bytes=${input.videoBytes?.length ?? 0}',
      if (input.bgmPath != null) 'bgm_path=${input.bgmPath}',
      if (input.bgmName != null) 'bgm_name=${input.bgmName}',
      'bgm_bytes=${input.bgmBytes?.length ?? 0}',
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
    try {
      final Map<String, dynamic> raw = await _bridge.analyzeMedia(
        input.videoPath,
        mediaBytes: input.videoBytes,
        mediaName: input.videoName,
      );
      final String? fallbackReason = raw['fallback_reason'] as String?;
      final String? analysisMode = raw['analysis_mode'] as String?;
      final String? source = raw['source'] as String?;
      final NativeAnalysisData analysis = _mapper.fromMap(raw);
      final List<CutPoint> cuts = const AutoCutPlanner().generateCutPoints(
        highlights: analysis.highlights,
        beats: analysis.beats,
        minClipMs: 1200,
        maxClipMs: 4800,
        mediaDurationMs: analysis.durationMs,
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
            assetId: input.videoPath,
            srcInMs: inMs,
            srcOutMs: outMs,
            timelineInMs: inMs,
            timelineOutMs: outMs,
          ),
        );
      }

      state = state.copyWith(
        loading: false,
        analysisNotice: analysisMode == 'demo'
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
          clips: clips,
          beats: analysis.beats,
          highlights: analysis.highlights,
          targetDurationMs: state.project.targetDurationMs,
        ),
      );
    } catch (_) {
      final EditorState seeded = _createDemoState(state);
      final List<TimelineClip> clips = seeded.project.clips
          .map(
            (TimelineClip clip) => TimelineClip(
              assetId: input.videoPath,
              srcInMs: clip.srcInMs,
              srcOutMs: clip.srcOutMs,
              timelineInMs: clip.timelineInMs,
              timelineOutMs: clip.timelineOutMs,
              speed: clip.speed,
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

    clips[clipIndex] = TimelineClip(
      assetId: left.assetId,
      srcInMs: left.srcInMs,
      srcOutMs: newBoundary,
      timelineInMs: left.timelineInMs,
      timelineOutMs: newBoundary,
      speed: left.speed,
    );

    clips[clipIndex + 1] = TimelineClip(
      assetId: right.assetId,
      srcInMs: newBoundary,
      srcOutMs: right.srcOutMs,
      timelineInMs: newBoundary,
      timelineOutMs: right.timelineOutMs,
      speed: right.speed,
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
}
