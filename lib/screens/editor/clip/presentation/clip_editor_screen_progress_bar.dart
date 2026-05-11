// ignore_for_file: unused_element

part of 'clip_editor_screen.dart';

extension _ClipEditorProgressBar on _ClipEditorScreenState {
  Widget buildDraggableProgressBar({
    required TimelineClip selectedClip,
    required int safeSelectedClipIndex,
    required List<TimelineClip> clips,
  }) {
    final EditorState state = ref.watch(editorControllerProvider);
    final EditorController controller = ref.read(editorControllerProvider.notifier);
    
    final int currentMs = _playheadMs ?? selectedClip.timelineInMs;
    final int clipDurationMs = selectedClip.durationMs;
    final double progress = clipDurationMs > 0
        ? ((currentMs - selectedClip.timelineInMs) / clipDurationMs)
            .clamp(0.0, 1.0)
        : 0.0;

    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        controller.beginBoundaryDrag(safeSelectedClipIndex);
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        _handleProgressBarDrag(
          details: details,
          selectedClip: selectedClip,
          safeSelectedClipIndex: safeSelectedClipIndex,
          clips: clips,
          state: state,
          controller: controller,
        );
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        controller.endBoundaryDrag();
      },
      child: _buildProgressBarStack(
        progress: progress,
        selectedClip: selectedClip,
        safeSelectedClipIndex: safeSelectedClipIndex,
        clips: clips,
      ),
    );
  }

  void _handleProgressBarDrag({
    required DragUpdateDetails details,
    required TimelineClip selectedClip,
    required int safeSelectedClipIndex,
    required List<TimelineClip> clips,
    required EditorState state,
    required EditorController controller,
  }) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final double availableWidth = renderBox.size.width;
    final double newDx = details.globalPosition.dx -
        renderBox.localToGlobal(Offset.zero).dx;
    final double ratio = (newDx / availableWidth).clamp(0.0, 1.0);

    final int clipDurationMs = selectedClip.durationMs;
    const double trimHandleWidth = 0.08;

    if (ratio < trimHandleWidth) {
      // 왼쪽 trim 핸들
      _handleLeftTrimDrag(
        ratio: ratio,
        selectedClip: selectedClip,
        safeSelectedClipIndex: safeSelectedClipIndex,
        clipDurationMs: clipDurationMs,
        state: state,
        controller: controller,
      );
    } else if (ratio > (1 - trimHandleWidth)) {
      // 오른쪽 trim 핸들
      _handleRightTrimDrag(
        ratio: ratio,
        selectedClip: selectedClip,
        safeSelectedClipIndex: safeSelectedClipIndex,
        clipDurationMs: clipDurationMs,
        clips: clips,
        state: state,
        controller: controller,
      );
    } else {
      // 중간 영역: Seek
      _handleProgressBarSeek(
        ratio: ratio,
        selectedClip: selectedClip,
        clipDurationMs: clipDurationMs,
        clips: clips,
        state: state,
      );
    }
  }

  void _handleLeftTrimDrag({
    required double ratio,
    required TimelineClip selectedClip,
    required int safeSelectedClipIndex,
    required int clipDurationMs,
    required EditorState state,
    required EditorController controller,
  }) {
    int newStartMs = selectedClip.timelineInMs + (clipDurationMs * ratio).round();
    newStartMs = _snapToNearestBeat(newStartMs, state);
    final int deltaMs = newStartMs - selectedClip.timelineInMs;
    controller.dragCutPoint(
      clipIndex: safeSelectedClipIndex > 0 ? safeSelectedClipIndex - 1 : 0,
      deltaMs: deltaMs,
      recordHistory: false,
    );
  }

  void _handleRightTrimDrag({
    required double ratio,
    required TimelineClip selectedClip,
    required int safeSelectedClipIndex,
    required int clipDurationMs,
    required List<TimelineClip> clips,
    required EditorState state,
    required EditorController controller,
  }) {
    if (safeSelectedClipIndex >= clips.length - 1) return;
    int newEndMs = selectedClip.timelineInMs + (clipDurationMs * ratio).round();
    newEndMs = _snapToNearestBeat(newEndMs, state);
    final int deltaMs = newEndMs - selectedClip.timelineOutMs;
    controller.dragCutPoint(
      clipIndex: safeSelectedClipIndex,
      deltaMs: deltaMs,
      recordHistory: false,
    );
  }

  void _handleProgressBarSeek({
    required double ratio,
    required TimelineClip selectedClip,
    required int clipDurationMs,
    required List<TimelineClip> clips,
    required EditorState state,
  }) {
    int newMs = selectedClip.timelineInMs + (clipDurationMs * ratio).round();
    newMs = _snapToNearestBeat(newMs, state);
    _handleTimelineScrub(clips, newMs);
  }

  int _snapToNearestBeat(int targetMs, EditorState state) {
    if (!state.beatSnapEnabled || state.project.beats.isEmpty) {
      return targetMs;
    }
    
    int nearestBeat = targetMs;
    int minDistance = state.beatSnapThresholdMs;
    
    for (final BeatMarker beat in state.project.beats) {
      final int distance = (beat.tsMs - targetMs).abs();
      if (distance < minDistance) {
        minDistance = distance;
        nearestBeat = beat.tsMs;
      }
    }
    
    return nearestBeat;
  }

  Widget _buildProgressBarStack({
    required double progress,
    required TimelineClip selectedClip,
    required int safeSelectedClipIndex,
    required List<TimelineClip> clips,
  }) {
    return Stack(
      children: <Widget>[
        // Background bar
        Positioned.fill(
          child: Container(
            color: Colors.white.withValues(alpha: 0.1),
          ),
        ),
        // Progress bar
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: progress,
              child: Container(
                color: Colors.white.withValues(alpha: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
