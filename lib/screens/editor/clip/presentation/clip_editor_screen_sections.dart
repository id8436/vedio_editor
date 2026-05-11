part of 'clip_editor_screen.dart';

extension _ClipEditorScreenSections on _ClipEditorScreenState {
  Widget _buildAnalysisBanner(EditorState state, EditorController controller) {
    if (state.analysisNotice == null) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.amber.shade700,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: <Widget>[
          const Icon(Icons.warning, color: Colors.white, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              state.analysisNotice!,
              style: const TextStyle(fontSize: 11, color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            visualDensity: VisualDensity.compact,
            tooltip: 'Dismiss',
            onPressed: controller.clearAnalysisNotice,
            icon: const Icon(Icons.close, size: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildPreviewArea({
    required EditorState state,
    required TimelineClip? selectedClip,
    required int safeSelectedClipIndex,
    required List<TimelineClip> clips,
  }) {
    final int totalDurationMs = clips.isEmpty ? 0 : clips.last.timelineOutMs;
    final MediaItem? selectedMediaItem = selectedClip == null
        ? null
        : (widget.input?.mediaItems.cast<MediaItem?>().firstWhere(
              (MediaItem? item) => item?.path == selectedClip.assetId,
              orElse: () => null,
            ));

    return Expanded(
      flex: 40,
      child: widget.input != null && selectedClip != null
          ? GestureDetector(
              behavior: HitTestBehavior.opaque,
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.primaryVelocity! > 0) {
                  if (safeSelectedClipIndex > 0) {
                    _selectClip(
                      safeSelectedClipIndex - 1,
                      clips[safeSelectedClipIndex - 1],
                    );
                  }
                } else if (details.primaryVelocity! < 0) {
                  if (safeSelectedClipIndex < clips.length - 1) {
                    _selectClip(
                      safeSelectedClipIndex + 1,
                      clips[safeSelectedClipIndex + 1],
                    );
                  }
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                ),
                margin: const EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: VideoPreview(
                        key: _previewKey,
                        videoPath: selectedClip.assetId,
                        isPhoto: selectedMediaItem?.isPhoto ?? false,
                        mediaBytes: selectedMediaItem?.bytes,
                        startMs: selectedClip.srcInMs,
                        endMs: selectedClip.srcOutMs,
                        onTap: _togglePlayback,
                        onIsPlayingChanged: (bool value) {
                          _setPlaybackState(value);
                        },
                        showControls: false,
                        showPausedOverlay: true,
                        showProgressOverlay: false,
                        onPositionChanged: (int ms) =>
                            _handlePreviewPositionChanged(clips, ms),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: 12,
                      child: Text(
                        formatClock(totalDurationMs),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontFeatures: <FontFeature>[
                            FontFeature.tabularFigures(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.zero,
              ),
              margin: const EdgeInsets.all(0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(
                      Icons.video_collection_outlined,
                      color: Colors.white54,
                      size: 40,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'No clips loaded',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    FilledButton.tonalIcon(
                      onPressed: () => context.go('/import'),
                      icon: const Icon(Icons.upload_file),
                      label: const Text('Import Media'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildTimelineArea({
    required EditorState state,
    required EditorController controller,
    required TimelineClip? selectedClip,
    required int safeSelectedClipIndex,
    required List<TimelineClip> clips,
    required int clipElapsedMs,
  }) {
    return Expanded(
      flex: 60,
      child: Container(
        color: const Color(0xFF0F0F0F),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ClipTimelineStrip(
                clips: clips,
                beats: state.project.beats,
                sourceMediaItems: widget.input?.mediaItems ?? const [],
                selectedClipIndex: safeSelectedClipIndex,
                playheadMs: _playheadMs,
                lockedBoundaryIndices: state.lockedBoundaryIndices,
                onSelectClip: (int index) {
                  _selectClip(index, clips[index]);
                },
                onDeleteClip: (int index) {
                  controller.removeClip(index);
                  final List<TimelineClip> updatedClips = ref
                      .read(editorControllerProvider)
                      .project
                      .clips;
                  if (updatedClips.isEmpty) {
                    _resetSelectionState();
                    return;
                  }
                  final int nextIndex = index.clamp(0, updatedClips.length - 1);
                  _selectClip(nextIndex, updatedClips[nextIndex]);
                },
                onDuplicateClip: (int index) {
                  controller.duplicateClip(index);
                  final List<TimelineClip> updatedClips = ref
                      .read(editorControllerProvider)
                      .project
                      .clips;
                  if (updatedClips.isEmpty) {
                    return;
                  }
                  final int nextIndex = (index + 1).clamp(
                    0,
                    updatedClips.length - 1,
                  );
                  _selectClip(nextIndex, updatedClips[nextIndex]);
                },
                onMoveClip: (int oldIndex, int newIndex) {
                  final int currentSelected = safeSelectedClipIndex;
                  controller.moveClip(oldIndex: oldIndex, newIndex: newIndex);

                  final List<TimelineClip> updatedClips = ref
                      .read(editorControllerProvider)
                      .project
                      .clips;
                  if (updatedClips.isEmpty) {
                    return;
                  }

                  int nextSelected = currentSelected;
                  if (currentSelected == oldIndex) {
                    nextSelected = newIndex;
                  } else if (oldIndex < currentSelected &&
                      newIndex >= currentSelected) {
                    nextSelected = currentSelected - 1;
                  } else if (oldIndex > currentSelected &&
                      newIndex <= currentSelected) {
                    nextSelected = currentSelected + 1;
                  }

                  nextSelected = nextSelected.clamp(0, updatedClips.length - 1);
                  _selectClip(nextSelected, updatedClips[nextSelected]);
                },
                onBoundaryDragStart: (int boundaryIndex) {
                  controller.beginBoundaryDrag(boundaryIndex);
                },
                onBoundaryDrag: (int boundaryIndex, int deltaMs) {
                  controller.dragCutPoint(
                    clipIndex: boundaryIndex,
                    deltaMs: deltaMs,
                    recordHistory: false,
                  );
                },
                onBoundaryDragEnd: (_) {
                  controller.endBoundaryDrag();
                },
                onScrubMsChanged: (int absoluteMs) {
                  _handleTimelineScrub(clips, absoluteMs);
                },
                onScrubEnd: () {
                  HapticFeedback.selectionClick();
                },
              ),
            ),
            Container(
              color: const Color(0xFF1A1A1A),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(
                children: <Widget>[
                  Text(
                    '${clips.length} clips • ${(clips.fold<int>(0, (int sum, TimelineClip c) => sum + c.durationMs) / 1000).toStringAsFixed(1)}s',
                    style: const TextStyle(color: Colors.white60, fontSize: 11),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF1A1A1A),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: selectedClip != null
                  ? CompactOptionDock(
                      clip: selectedClip,
                      onTapAudio: () {
                        openOptionSheet(
                          tab: _ClipOptionTab.audio,
                          clip: selectedClip,
                          clipIndex: safeSelectedClipIndex,
                          state: state,
                          controller: controller,
                        );
                      },
                      onTapFilter: () {
                        openOptionSheet(
                          tab: _ClipOptionTab.filter,
                          clip: selectedClip,
                          clipIndex: safeSelectedClipIndex,
                          state: state,
                          controller: controller,
                        );
                      },
                      onTapText: () {
                        openOptionSheet(
                          tab: _ClipOptionTab.text,
                          clip: selectedClip,
                          clipIndex: safeSelectedClipIndex,
                          state: state,
                          controller: controller,
                        );
                      },
                      onTapMore: () {
                        openOptionSheet(
                          tab: _ClipOptionTab.timing,
                          clip: selectedClip,
                          clipIndex: safeSelectedClipIndex,
                          state: state,
                          controller: controller,
                        );
                      },
                      onTapExport: () {
                        context.go('/export', extra: widget.input);
                      },
                      onTapAdvanced: () {
                        context.go('/editor-advanced?preserve=1', extra: widget.input);
                      },
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomActions() {
    return const SizedBox.shrink();
  }
}
