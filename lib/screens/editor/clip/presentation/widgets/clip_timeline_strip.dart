import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../../core/models/import_media_item.dart';
import '../../../../../core/models/timeline_models.dart';
import '../../../../import/data/video_thumbnailer.dart';

/// Premiere Clip-like storyboard editor surface.
///
/// The top ruler supports scrubbing and boundary dragging. The lower area
/// shows clip thumbnails as selectable cards instead of a single flat strip.
class ClipTimelineStrip extends StatefulWidget {
  const ClipTimelineStrip({
    super.key,
    required this.clips,
    required this.beats,
    required this.selectedClipIndex,
    required this.onSelectClip,
    this.onDeleteClip,
    this.onDuplicateClip,
    this.onMoveClip,
    this.sourceMediaItems = const <MediaItem>[],
    this.playheadMs,
    this.lockedBoundaryIndices = const <int>{},
    this.onBoundaryDragStart,
    this.onBoundaryDrag,
    this.onBoundaryDragEnd,
    this.onScrubMsChanged,
    this.onScrubEnd,
  });

  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final int selectedClipIndex;
  final ValueChanged<int> onSelectClip;
  final ValueChanged<int>? onDeleteClip;
  final ValueChanged<int>? onDuplicateClip;
  final void Function(int oldIndex, int newIndex)? onMoveClip;
  final List<MediaItem> sourceMediaItems;
  final int? playheadMs;
  final Set<int> lockedBoundaryIndices;
  final ValueChanged<int>? onBoundaryDragStart;
  final void Function(int boundaryIndex, int deltaMs)? onBoundaryDrag;
  final ValueChanged<int>? onBoundaryDragEnd;
  final ValueChanged<int>? onScrubMsChanged;
  final VoidCallback? onScrubEnd;

  static const List<Color> _palette = <Color>[
    Color(0xFF7D43C8),
    Color(0xFF8D6AD8),
    Color(0xFF5888D6),
    Color(0xFF5FB7C7),
  ];

  @override
  State<ClipTimelineStrip> createState() => _ClipTimelineStripState();
}

class _ClipTimelineStripState extends State<ClipTimelineStrip> {
  int? _draggingIndex;

  @override
  Widget build(BuildContext context) {
    if (widget.clips.isEmpty) {
      return const Center(
        child: Text(
          'No clips',
          style: TextStyle(color: Colors.white30, fontSize: 12),
        ),
      );
    }

    final int selectedIndex = widget.selectedClipIndex.clamp(
      0,
      widget.clips.length - 1,
    );
    final TimelineClip selectedClip = widget.clips[selectedIndex];
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double rulerWidth = constraints.maxWidth.clamp(280.0, 1400.0);
        final int crossAxisCount = constraints.maxWidth >= 520 ? 4 : 3;

        return Column(
          children: <Widget>[
            _BeatRuler(
              rulerWidth: rulerWidth,
              selectedClipIndex: selectedIndex,
              selectedClip: selectedClip,
              clips: widget.clips,
              beats: widget.beats,
              playheadMs: widget.playheadMs,
              lockedBoundaryIndices: widget.lockedBoundaryIndices,
              onBoundaryDragStart: widget.onBoundaryDragStart,
              onBoundaryDrag: widget.onBoundaryDrag,
              onBoundaryDragEnd: widget.onBoundaryDragEnd,
              onScrubMsChanged: widget.onScrubMsChanged,
              onScrubEnd: widget.onScrubEnd,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.92,
                ),
                itemCount: widget.clips.length,
                itemBuilder: (BuildContext context, int index) {
                  final TimelineClip clip = widget.clips[index];
                  final MediaItem? media = widget.sourceMediaItems.cast<MediaItem?>().firstWhere(
                    (MediaItem? item) => item?.path == clip.assetId,
                    orElse: () => null,
                  );
                  final bool selected = index == widget.selectedClipIndex;
                  final Color accent = ClipTimelineStrip._palette[
                      index % ClipTimelineStrip._palette.length];
                  final Widget tile = _StoryboardClipTile(
                    key: ValueKey<String>(
                      '${clip.assetId}:${clip.srcInMs}:${clip.srcOutMs}',
                    ),
                    clip: clip,
                    mediaItem: media,
                    index: index,
                    accent: accent,
                    selected: selected,
                    isDragging: _draggingIndex == index,
                    onTap: () {
                      widget.onSelectClip(index);
                    },
                    onDuplicateTap: widget.onDuplicateClip == null
                        ? null
                        : () => widget.onDuplicateClip!(index),
                    onDeleteTap: widget.onDeleteClip == null
                        ? null
                        : () => widget.onDeleteClip!(index),
                    onLeftTrimDragStart: index > 0
                        ? () => widget.onBoundaryDragStart?.call(index - 1)
                        : null,
                    onLeftTrimDragUpdate: index > 0
                        ? (int deltaMs) => widget.onBoundaryDrag?.call(index - 1, deltaMs)
                        : null,
                    onLeftTrimDragEnd: index > 0
                        ? () => widget.onBoundaryDragEnd?.call(index - 1)
                        : null,
                    onRightTrimDragStart: index < widget.clips.length - 1
                        ? () => widget.onBoundaryDragStart?.call(index)
                        : null,
                    onRightTrimDragUpdate: index < widget.clips.length - 1
                        ? (int deltaMs) => widget.onBoundaryDrag?.call(index, deltaMs)
                        : null,
                    onRightTrimDragEnd: index < widget.clips.length - 1
                        ? () => widget.onBoundaryDragEnd?.call(index)
                        : null,
                  );

                  return DragTarget<int>(
                    onWillAcceptWithDetails: (DragTargetDetails<int> details) {
                      return details.data != index;
                    },
                    onAcceptWithDetails: (DragTargetDetails<int> details) {
                      if (widget.onMoveClip != null && details.data != index) {
                        widget.onMoveClip!(details.data, index);
                      }
                    },
                    builder: (
                      BuildContext context,
                      List<int?> candidateData,
                      List<dynamic> rejectedData,
                    ) {
                      final bool isDropTarget = candidateData.isNotEmpty;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 120),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: isDropTarget
                              ? Border.all(
                                  color: const Color(0xFF7B3FC9).withValues(alpha: 0.65),
                                  width: 2,
                                )
                              : null,
                        ),
                        child: LongPressDraggable<int>(
                          data: index,
                          onDragStarted: () {
                            setState(() => _draggingIndex = index);
                          },
                          onDragEnd: (_) {
                            setState(() => _draggingIndex = null);
                          },
                          onDraggableCanceled: (Velocity velocity, Offset offset) {
                            setState(() => _draggingIndex = null);
                          },
                          feedback: SizedBox(
                            width: 110,
                            height: 132,
                            child: Opacity(opacity: 0.92, child: tile),
                          ),
                          childWhenDragging: Opacity(
                            opacity: 0.35,
                            child: tile,
                          ),
                          child: tile,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _BeatRuler extends StatefulWidget {
  const _BeatRuler({
    required this.rulerWidth,
    required this.selectedClipIndex,
    required this.selectedClip,
    required this.clips,
    required this.beats,
    required this.playheadMs,
    required this.lockedBoundaryIndices,
    required this.onBoundaryDragStart,
    required this.onBoundaryDrag,
    required this.onBoundaryDragEnd,
    required this.onScrubMsChanged,
    required this.onScrubEnd,
  });

  final double rulerWidth;
  final int selectedClipIndex;
  final TimelineClip selectedClip;
  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final int? playheadMs;
  final Set<int> lockedBoundaryIndices;
  final ValueChanged<int>? onBoundaryDragStart;
  final void Function(int boundaryIndex, int deltaMs)? onBoundaryDrag;
  final ValueChanged<int>? onBoundaryDragEnd;
  final ValueChanged<int>? onScrubMsChanged;
  final VoidCallback? onScrubEnd;

  @override
  State<_BeatRuler> createState() => _BeatRulerState();
}

class _BeatRulerState extends State<_BeatRuler> {
  // Trim state
  int? _activeBoundaryIndex;
  double _pendingTrimPx = 0;
  bool _isSnapped = false;
  int _snapBeatMs = -1;

  // Frozen view during a trim drag: keeps the ruler background still
  // while the handles visually move.
  int? _frozenViewStartMs;
  int? _frozenTotalViewMs;

  static const double _handleGrabWidth = 30.0;
  static const int _snapThresholdMs = 50;

  int? get _leftBoundaryIndex =>
      widget.selectedClipIndex > 0 ? widget.selectedClipIndex - 1 : null;
  int? get _rightBoundaryIndex =>
      widget.selectedClipIndex < widget.clips.length - 1
          ? widget.selectedClipIndex
          : null;

  // ── Trim drag helpers ──────────────────────────────────────────────

  int _nearestBeatMs(int timelineTsMs) {
    if (widget.beats.isEmpty) return -1;
    int minDist = 1 << 30;
    int bestMs = -1;
    for (final BeatMarker beat in widget.beats) {
      final int dist = (beat.tsMs - timelineTsMs).abs();
      if (dist < minDist) {
        minDist = dist;
        bestMs = beat.tsMs;
      }
    }
    return minDist <= _snapThresholdMs ? bestMs : -1;
  }

  void _startTrim(int boundaryIndex) {
    if (widget.lockedBoundaryIndices.contains(boundaryIndex)) return;
    widget.onBoundaryDragStart?.call(boundaryIndex);
    // Snapshot the current view window so the background stays fixed.
    final int clipMs = widget.selectedClip.durationMs.clamp(1, 999999999);
    final int ctxMs = (clipMs * 0.4).round().clamp(500, 3000);
    setState(() {
      _activeBoundaryIndex = boundaryIndex;
      _pendingTrimPx = 0;
      _isSnapped = false;
      _snapBeatMs = -1;
      _frozenViewStartMs = widget.selectedClip.timelineInMs - ctxMs;
      _frozenTotalViewMs = clipMs + 2 * ctxMs;
    });
  }

  void _updateTrim(int boundaryIndex, double deltaPx) {
    if (widget.lockedBoundaryIndices.contains(boundaryIndex)) return;
    if (widget.onBoundaryDrag == null || widget.rulerWidth <= 0) return;
    _pendingTrimPx += deltaPx;
    // Use the frozen view so the scale stays constant during the drag.
    final int totalViewMs = _frozenTotalViewMs ?? () {
      final int clipMs = widget.selectedClip.durationMs.clamp(1, 999999999);
      final int ctxMs = (clipMs * 0.4).round().clamp(500, 3000);
      return clipMs + 2 * ctxMs;
    }();
    final double msPerPx = totalViewMs / widget.rulerWidth;
    final int deltaMs = (_pendingTrimPx * msPerPx).round();
    if (deltaMs != 0) {
      // Compute proposed boundary to detect snap
      final int proposedMs =
          widget.clips[boundaryIndex].timelineOutMs + deltaMs;
      final int beatMs = _nearestBeatMs(proposedMs);
      final bool nowSnapped = beatMs != -1;
      // Haptic on entering a snap zone
      if (nowSnapped && beatMs != _snapBeatMs) {
        HapticFeedback.mediumImpact();
      }
      widget.onBoundaryDrag!(boundaryIndex, deltaMs);
      _pendingTrimPx -= deltaMs / msPerPx;
      setState(() {
        _isSnapped = nowSnapped;
        _snapBeatMs = beatMs;
      });
    }
  }

  void _endTrim(int boundaryIndex) {
    widget.onBoundaryDragEnd?.call(boundaryIndex);
    setState(() {
      _activeBoundaryIndex = null;
      _pendingTrimPx = 0;
      _isSnapped = false;
      _snapBeatMs = -1;
      _frozenViewStartMs = null;
      _frozenTotalViewMs = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int clipMs = widget.selectedClip.durationMs.clamp(1, 999999999);
    // Context wing: 40% of clip duration on each side, capped at 3 s
    final int ctxMs = (clipMs * 0.4).round().clamp(500, 3000);
    // During a trim drag, use the frozen view so the ruler background stays
    // still while handles visually move. Otherwise recompute normally.
    final int totalViewMs = _frozenTotalViewMs ?? (clipMs + 2 * ctxMs);
    final int viewStartMs =
        _frozenViewStartMs ?? (widget.selectedClip.timelineInMs - ctxMs);
    final double w = widget.rulerWidth.clamp(1.0, 9999.0);
    final int? left = _leftBoundaryIndex;
    final int? right = _rightBoundaryIndex;
    final int? activeBoundaryIndex = _activeBoundaryIndex;

    // Map any timeline-absolute ms → ruler pixel.
    double msToPx(int timelineMs) =>
        (timelineMs - viewStartMs) / totalViewMs * w;

    // Pixel positions of the clip boundary handles
    final double leftHandlePx = msToPx(widget.selectedClip.timelineInMs);
    final double rightHandlePx = msToPx(widget.selectedClip.timelineOutMs);

    // Beats in the full view range
    final int viewEndMs = widget.selectedClip.timelineOutMs + ctxMs;
    final List<BeatMarker> viewBeats = widget.beats
        .where((BeatMarker b) => b.tsMs >= viewStartMs && b.tsMs <= viewEndMs)
        .toList()
      ..sort((BeatMarker a, BeatMarker b) => a.tsMs.compareTo(b.tsMs));

    return SizedBox(
      height: 52,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          // ── Dim background (context wings)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD0D0D0),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),

          // ── White region for the selected clip
          Positioned(
            left: leftHandlePx.clamp(0.0, w),
            width: (rightHandlePx - leftHandlePx).clamp(0.0, w),
            top: 0,
            bottom: 0,
            child: const ColoredBox(color: Colors.white),
          ),

          // ── Beat dots across full view range
          ...List<Widget>.generate(viewBeats.length, (int index) {
            final BeatMarker beat = viewBeats[index];
            final bool isBass = beat.type == BeatType.bass;
            final bool isPeak = beat.energyLevel == BeatEnergyLevel.peak;
            final bool isHigh = beat.energyLevel == BeatEnergyLevel.high;
            final bool isBarAnchor = beat.isBarAnchor;
            final bool isPhraseAnchor = beat.isPhraseAnchor;
            // Dim beats outside the selected clip
            final bool inClip = beat.tsMs >= widget.selectedClip.timelineInMs &&
                beat.tsMs <= widget.selectedClip.timelineOutMs;

            // Size: bass > peak > high > medium/low
            final double size = isBass
                ? 16.0
                : isPeak
                    ? 14.0
                    : isHigh
                        ? 10.0
                        : 5.0 + beat.strength * 5.0;

            // Color: bass = amber, peak = orange-red, high = orange, normal = blue-purple
            final Color dotColor = isBass
                ? const Color(0xFFFFB300)
                : isPeak
                    ? const Color(0xFFFF5252)
                    : isHigh
                        ? const Color(0xFFFFC24D)
                        : const Color(0xFF8FB3FF);

            final double cx = msToPx(beat.tsMs);
            final double vertCenter = 26.0;
            final double ringSize = isPhraseAnchor
                ? size + 12.0
                : isBarAnchor
                    ? size + 8.0
                    : size;
            final double markerWidth = ringSize > 12.0 ? ringSize : 12.0;
            final double markerHeight = isPhraseAnchor
                ? 34.0
                : ringSize;
            final Color anchorColor = isPhraseAnchor
                ? const Color(0xFF6F52FF)
                : const Color(0xFF4B6BFB);
            return Positioned(
              left: (cx - markerWidth / 2).clamp(0.0, w - markerWidth),
              top: (vertCenter - markerHeight / 2).clamp(0.0, 52.0 - markerHeight),
              child: IgnorePointer(
                child: SizedBox(
                  width: markerWidth,
                  height: markerHeight,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      if (isPhraseAnchor)
                        Container(
                          width: 2.0,
                          height: 34.0,
                          decoration: BoxDecoration(
                            color: anchorColor.withValues(alpha: inClip ? 0.65 : 0.22),
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                      if (isBarAnchor || isPhraseAnchor)
                        Container(
                          width: ringSize,
                          height: ringSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: anchorColor.withValues(alpha: inClip ? 0.9 : 0.32),
                              width: isPhraseAnchor ? 1.6 : 1.1,
                            ),
                          ),
                        ),
                      Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                          color: dotColor.withValues(alpha: inClip ? 1.0 : 0.35),
                          shape: isBass ? BoxShape.rectangle : BoxShape.circle,
                          borderRadius: isBass ? BorderRadius.circular(3) : null,
                          border: Border.all(
                            color: (isBass
                                    ? const Color(0xFFFF8F00)
                                    : const Color(0xFF9AA2AA))
                                .withValues(alpha: inClip ? 0.9 : 0.3),
                            width: isBass ? 1.5 : 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),

          // ── Seek gesture (clamped to clip region)
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTapDown: (TapDownDetails d) {
                if (_activeBoundaryIndex != null) return;
                if (widget.onScrubMsChanged == null) return;
                final int absMs =
                    (viewStartMs + (d.localPosition.dx / w * totalViewMs).round())
                        .clamp(widget.selectedClip.timelineInMs,
                            widget.selectedClip.timelineOutMs);
                widget.onScrubMsChanged!(absMs);
              },
              onHorizontalDragUpdate: widget.onScrubMsChanged == null
                  ? null
                  : (DragUpdateDetails d) {
                      if (_activeBoundaryIndex != null) return;
                      final int absMs = (viewStartMs +
                              (d.localPosition.dx / w * totalViewMs).round())
                          .clamp(widget.selectedClip.timelineInMs,
                              widget.selectedClip.timelineOutMs);
                      widget.onScrubMsChanged!(absMs);
                    },
              onHorizontalDragEnd: widget.onScrubMsChanged == null
                  ? null
                  : (_) {
                      if (_activeBoundaryIndex != null) return;
                      widget.onScrubEnd?.call();
                    },
            ),
          ),

          // ── Playhead
          if (widget.playheadMs != null)
            Positioned(
              left: msToPx(widget.playheadMs!).clamp(0.0, w),
              top: 0,
              bottom: 0,
              child: IgnorePointer(
                child: SizedBox(
                  width: 2,
                  child: ColoredBox(color: const Color(0xFF7B3FC9)),
                ),
              ),
            ),

          // ── Left trim handle at actual clip-start x position
          if (left != null)
            Positioned(
              left: (leftHandlePx - _handleGrabWidth / 2).clamp(0.0, w - _handleGrabWidth),
              top: 0,
              bottom: 0,
              width: _handleGrabWidth,
              child: Listener(
                behavior: HitTestBehavior.opaque,
                onPointerDown: widget.lockedBoundaryIndices.contains(left)
                    ? null
                    : (_) => _startTrim(left),
                onPointerMove: widget.lockedBoundaryIndices.contains(left)
                    ? null
                    : (PointerMoveEvent e) => _updateTrim(left, e.delta.dx),
                onPointerUp: widget.lockedBoundaryIndices.contains(left)
                    ? null
                    : (_) => _endTrim(left),
                onPointerCancel: widget.lockedBoundaryIndices.contains(left)
                    ? null
                    : (_) => _endTrim(left),
                child: _TrimHandle(
                  isLeft: true,
                  isActive: activeBoundaryIndex == left,
                  locked: widget.lockedBoundaryIndices.contains(left),
                  isSnapped: activeBoundaryIndex == left && _isSnapped,
                ),
              ),
            ),

          // ── Right trim handle at actual clip-end x position
          if (right != null)
            Positioned(
              left: (rightHandlePx - _handleGrabWidth / 2).clamp(0.0, w - _handleGrabWidth),
              top: 0,
              bottom: 0,
              width: _handleGrabWidth,
              child: Listener(
                behavior: HitTestBehavior.opaque,
                onPointerDown: widget.lockedBoundaryIndices.contains(right)
                    ? null
                    : (_) => _startTrim(right),
                onPointerMove: widget.lockedBoundaryIndices.contains(right)
                    ? null
                    : (PointerMoveEvent e) => _updateTrim(right, e.delta.dx),
                onPointerUp: widget.lockedBoundaryIndices.contains(right)
                    ? null
                    : (_) => _endTrim(right),
                onPointerCancel: widget.lockedBoundaryIndices.contains(right)
                    ? null
                    : (_) => _endTrim(right),
                child: _TrimHandle(
                  isLeft: false,
                  isActive: activeBoundaryIndex == right,
                  locked: widget.lockedBoundaryIndices.contains(right),
                  isSnapped: activeBoundaryIndex == right && _isSnapped,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _TrimHandle extends StatelessWidget {
  const _TrimHandle({
    required this.isLeft,
    required this.isActive,
    required this.locked,
    this.isSnapped = false,
  });

  final bool isLeft;
  final bool isActive;
  final bool locked;
  final bool isSnapped;

  @override
  Widget build(BuildContext context) {
    final Color color = locked
        ? const Color(0xFFBE7E2D)
        : isSnapped
            ? const Color(0xFF4CAF50)
            : const Color(0xFF7B3FC9);

    return MouseRegion(
      cursor: locked
          ? SystemMouseCursors.forbidden
          : SystemMouseCursors.resizeLeftRight,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Vertical bar (full height)
          Positioned.fill(
            child: Center(
              child: Container(
                width: 4,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: isActive ? 1.0 : 0.7),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          // Top grip circle
          Positioned(
            top: 4,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: isActive
                    ? <BoxShadow>[
                        BoxShadow(
                          color: color.withValues(alpha: 0.45),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ]
                    : null,
              ),
              child: const Icon(Icons.drag_handle, size: 14, color: Colors.white),
            ),
          ),
          // Snap indicator dot
          if (isActive && isSnapped)
            Positioned(
              bottom: 5,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFF4CAF50),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _StoryboardClipTile extends StatefulWidget {
  const _StoryboardClipTile({
    super.key,
    required this.clip,
    required this.mediaItem,
    required this.index,
    required this.accent,
    required this.selected,
    this.isDragging = false,
    required this.onTap,
    this.onDuplicateTap,
    this.onDeleteTap,
    this.onLeftTrimDragStart,
    this.onLeftTrimDragUpdate,
    this.onLeftTrimDragEnd,
    this.onRightTrimDragStart,
    this.onRightTrimDragUpdate,
    this.onRightTrimDragEnd,
  });

  final TimelineClip clip;
  final MediaItem? mediaItem;
  final int index;
  final Color accent;
  final bool selected;
  final bool isDragging;
  final VoidCallback onTap;
  final VoidCallback? onDuplicateTap;
  final VoidCallback? onDeleteTap;
  final VoidCallback? onLeftTrimDragStart;
  final ValueChanged<int>? onLeftTrimDragUpdate;
  final VoidCallback? onLeftTrimDragEnd;
  final VoidCallback? onRightTrimDragStart;
  final ValueChanged<int>? onRightTrimDragUpdate;
  final VoidCallback? onRightTrimDragEnd;

  @override
  State<_StoryboardClipTile> createState() => _StoryboardClipTileState();
}

class _StoryboardClipTileState extends State<_StoryboardClipTile> {
  Uint8List? _thumbnail;
  bool _loading = true;

  String _formatClipUsageDuration(int durationMs) {
    final int totalMs = durationMs.clamp(0, 1 << 31);
    final int minutes = totalMs ~/ 60000;
    final int seconds = (totalMs % 60000) ~/ 1000;
    final int centiseconds = (totalMs % 1000) ~/ 10;

    if (minutes > 0) {
      return '$minutes:${seconds.toString().padLeft(2, '0')}.${centiseconds.toString().padLeft(2, '0')}';
    }
    return '${seconds}.${centiseconds.toString().padLeft(2, '0')}s';
  }

  @override
  void initState() {
    super.initState();
    _loadThumbnail();
  }

  @override
  void didUpdateWidget(covariant _StoryboardClipTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.clip.assetId != widget.clip.assetId ||
        oldWidget.clip.srcInMs != widget.clip.srcInMs ||
        oldWidget.mediaItem?.path != widget.mediaItem?.path) {
      _loadThumbnail();
    }
  }

  Future<void> _loadThumbnail() async {
    setState(() {
      _loading = true;
    });

    Uint8List? result;
    final MediaItem? media = widget.mediaItem;
    try {
      if (media?.isPhoto == true) {
        result = media?.bytes;
      } else if (kIsWeb) {
        final Uint8List? bytes = media?.bytes;
        if (bytes != null && bytes.isNotEmpty) {
          result = await extractWebVideoThumbnail(bytes, media!.displayName);
        }
      } else {
        result = await VideoThumbnail.thumbnailData(
          video: widget.clip.assetId,
          imageFormat: ImageFormat.JPEG,
          maxWidth: 220,
          quality: 72,
          timeMs: widget.clip.srcInMs.clamp(0, widget.clip.srcOutMs),
        );
      }
    } catch (_) {
      result = null;
    }

    if (!mounted) {
      return;
    }
    setState(() {
      _thumbnail = result;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double msPerPx = widget.clip.durationMs / constraints.maxWidth.clamp(1, 10000);
        return Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(6),
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: widget.selected ? const Color(0xFF7B3FC9) : const Color(0xFFD0D0D0),
                  width: widget.selected ? 3 : 1,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  if (widget.isDragging)
                    const Positioned.fill(
                      child: ColoredBox(color: Color(0x22000000)),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(child: _buildPreview()),
                            Positioned(
                              left: 4,
                              bottom: 4,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                color: Colors.black.withValues(alpha: 0.45),
                                child: Text(
                                  _formatClipUsageDuration(widget.clip.durationMs),
                                  style: const TextStyle(color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ),
                            if (widget.selected)
                              Positioned(
                                top: 4,
                                left: 4,
                                child: GestureDetector(
                                  onTap: widget.onDuplicateTap,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF6B6B6B),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.copy, size: 12, color: Colors.white),
                                  ),
                                ),
                              ),
                            if (widget.selected)
                              Positioned(
                                top: 4,
                                right: 4,
                                child: GestureDetector(
                                  onTap: widget.onDeleteTap,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF7B3FC9),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.close, size: 14, color: Colors.white),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 4, 6, 6),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: widget.accent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                '${widget.index + 1}',
                                style: const TextStyle(
                                  color: Color(0xFF202020),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (widget.selected && widget.onLeftTrimDragUpdate != null)
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      width: 18,
                      child: _ClipTrimHandle(
                        alignment: Alignment.centerLeft,
                        icon: Icons.chevron_left,
                        onDragStart: widget.onLeftTrimDragStart,
                        onDragUpdate: (DragUpdateDetails details) {
                          widget.onLeftTrimDragUpdate!((details.delta.dx * msPerPx).round());
                        },
                        onDragEnd: widget.onLeftTrimDragEnd,
                      ),
                    ),
                  if (widget.selected && widget.onRightTrimDragUpdate != null)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      width: 18,
                      child: _ClipTrimHandle(
                        alignment: Alignment.centerRight,
                        icon: Icons.chevron_right,
                        onDragStart: widget.onRightTrimDragStart,
                        onDragUpdate: (DragUpdateDetails details) {
                          widget.onRightTrimDragUpdate!((details.delta.dx * msPerPx).round());
                        },
                        onDragEnd: widget.onRightTrimDragEnd,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPreview() {
    if (_loading) {
      return const ColoredBox(
        color: Color(0xFFE2E2E2),
        child: Center(
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    }

    if (_thumbnail != null) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
        child: Image.memory(_thumbnail!, fit: BoxFit.cover),
      );
    }

    return const ColoredBox(
      color: Color(0xFFD7D7D7),
      child: Center(
        child: Icon(Icons.movie_creation_outlined, color: Color(0xFF6A6A6A), size: 24),
      ),
    );
  }
}

class _ClipTrimHandle extends StatelessWidget {
  const _ClipTrimHandle({
    required this.alignment,
    required this.icon,
    this.onDragStart,
    this.onDragUpdate,
    this.onDragEnd,
  });

  final Alignment alignment;
  final IconData icon;
  final VoidCallback? onDragStart;
  final ValueChanged<DragUpdateDetails>? onDragUpdate;
  final VoidCallback? onDragEnd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onHorizontalDragStart: onDragUpdate == null ? null : (_) => onDragStart?.call(),
      onHorizontalDragUpdate: onDragUpdate,
      onHorizontalDragEnd: onDragUpdate == null ? null : (_) => onDragEnd?.call(),
      onHorizontalDragCancel: onDragEnd,
      child: Align(
        alignment: alignment,
        child: Container(
          width: 12,
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color(0xFF7B3FC9).withValues(alpha: 0.92),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.white, size: 12),
        ),
      ),
    );
  }
}
