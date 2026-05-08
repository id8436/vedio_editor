import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  double _rulerZoom = 1.0;

  void _adjustRulerZoom(double nextZoom) {
    setState(() {
      _rulerZoom = nextZoom.clamp(1.0, 3.0);
    });
  }

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
    final int selectedDurationMs = selectedClip.durationMs.clamp(1, 999999999);

    final List<int> localBeatMs = widget.beats
        .map((BeatMarker beat) => beat.tsMs)
        .where(
          (int tsMs) =>
              tsMs >= selectedClip.timelineInMs && tsMs <= selectedClip.timelineOutMs,
        )
        .map((int tsMs) => tsMs - selectedClip.timelineInMs)
        .toList()
      ..sort();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double baseWidth = constraints.maxWidth.clamp(280.0, 1400.0);
        final double totalWidth = baseWidth * _rulerZoom;
        final int crossAxisCount = constraints.maxWidth >= 520 ? 4 : 3;

        return Column(
          children: <Widget>[
            _BeatRuler(
              totalWidth: totalWidth,
              selectedClipIndex: selectedIndex,
              selectedClip: selectedClip,
              clipDurationMs: selectedDurationMs,
              localBeatMs: localBeatMs,
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
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.zoom_out, size: 14, color: Color(0xFF676767)),
                  Expanded(
                    child: Slider(
                      min: 1.0,
                      max: 3.0,
                      divisions: 8,
                      value: _rulerZoom,
                      onChanged: _adjustRulerZoom,
                    ),
                  ),
                  const Icon(Icons.zoom_in, size: 14, color: Color(0xFF676767)),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                      widget.onScrubMsChanged?.call(clip.timelineInMs);
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
    required this.totalWidth,
    required this.selectedClipIndex,
    required this.selectedClip,
    required this.clipDurationMs,
    required this.localBeatMs,
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

  final double totalWidth;
  final int selectedClipIndex;
  final TimelineClip selectedClip;
  final int clipDurationMs;
  final List<int> localBeatMs;
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
  final Map<int, double> _pendingDeltaPx = <int, double>{};
  int? _activeBoundaryIndex;
  int _dragDeltaMs = 0;

  void _handleBoundaryDragUpdate({
    required int boundaryIndex,
    required double deltaPx,
  }) {
    if (widget.onBoundaryDrag == null || widget.totalWidth <= 0) {
      return;
    }

    final double carried = (_pendingDeltaPx[boundaryIndex] ?? 0) + deltaPx;
    final double msPerPx = widget.clipDurationMs / widget.totalWidth;
    final int deltaMs = (carried * msPerPx).round();

    if (deltaMs == 0) {
      _pendingDeltaPx[boundaryIndex] = carried;
      return;
    }

    widget.onBoundaryDrag!(boundaryIndex, deltaMs);
    _pendingDeltaPx[boundaryIndex] = carried - (deltaMs / msPerPx);
    setState(() {
      _dragDeltaMs += deltaMs;
    });
  }

  int _nearestBeatDistanceMs(int timelineTsMs) {
    if (widget.beats.isEmpty) {
      return 1 << 30;
    }
    int minDist = 1 << 30;
    for (final BeatMarker beat in widget.beats) {
      final int dist = (beat.tsMs - timelineTsMs).abs();
      if (dist < minDist) {
        minDist = dist;
      }
    }
    return minDist;
  }

  void _finishBoundaryDrag(int boundaryIndex) {
    _pendingDeltaPx.remove(boundaryIndex);
    widget.onBoundaryDragEnd?.call(boundaryIndex);
    setState(() {
      _activeBoundaryIndex = null;
      _dragDeltaMs = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int localPlayheadMs = widget.playheadMs == null
        ? 0
        : (widget.playheadMs! - widget.selectedClip.timelineInMs).clamp(
            0,
            widget.clipDurationMs,
          );

    final int? leftBoundaryIndex =
        widget.selectedClipIndex > 0 ? widget.selectedClipIndex - 1 : null;
    final int? rightBoundaryIndex =
        widget.selectedClipIndex < widget.clips.length - 1
            ? widget.selectedClipIndex
            : null;

    final int? activeBoundary = _activeBoundaryIndex;
    final int? activeTimelineTs = activeBoundary == null
        ? null
        : widget.clips[activeBoundary].timelineOutMs + _dragDeltaMs;
    final int nearestBeatMs = activeTimelineTs == null
        ? 1 << 30
        : _nearestBeatDistanceMs(activeTimelineTs);
    final bool nearBeat = nearestBeatMs <= 70;
    final String deltaLabel = _dragDeltaMs == 0
        ? '0 ms'
      : '${_dragDeltaMs > 0 ? '+' : ''}$_dragDeltaMs ms';

    return Container(
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        child: SizedBox(
          width: widget.totalWidth,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: widget.onScrubMsChanged == null
                ? null
                : (TapDownDetails details) {
                    final double ratio = (details.localPosition.dx / widget.totalWidth)
                        .clamp(0.0, 1.0);
                    final int localMs = (ratio * widget.clipDurationMs).round();
                    widget.onScrubMsChanged!(widget.selectedClip.timelineInMs + localMs);
                  },
            onHorizontalDragUpdate: widget.onScrubMsChanged == null
                ? null
                : (DragUpdateDetails details) {
                    final double ratio = (details.localPosition.dx / widget.totalWidth)
                        .clamp(0.0, 1.0);
                    final int localMs = (ratio * widget.clipDurationMs).round();
                    widget.onScrubMsChanged!(widget.selectedClip.timelineInMs + localMs);
                  },
            onHorizontalDragEnd: widget.onScrubMsChanged == null
                ? null
                : (_) => widget.onScrubEnd?.call(),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                ...widget.localBeatMs.map((int localMs) {
                  final double x = widget.totalWidth * localMs / widget.clipDurationMs;
                  return Positioned(
                    left: (x - 4).clamp(0.0, widget.totalWidth - 8),
                    top: 8,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBFC3C8),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFF9AA2AA)),
                      ),
                    ),
                  );
                }),
                Positioned(
                  left: 8,
                  bottom: 6,
                  child: Text(
                    'Selected Clip • Drag handles to trim',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (widget.playheadMs != null)
                  Positioned(
                    left: (widget.totalWidth * localPlayheadMs / widget.clipDurationMs)
                        .clamp(0, widget.totalWidth),
                    top: -2,
                    bottom: -2,
                    child: IgnorePointer(
                      child: Container(
                        width: 2,
                        color: const Color(0xFF7B3FC9),
                      ),
                    ),
                  ),
                if (leftBoundaryIndex != null)
                  _buildBoundaryHandle(
                    boundaryIndex: leftBoundaryIndex,
                    color: const Color(0xFF7B3FC9),
                  ),
                if (rightBoundaryIndex != null)
                  _buildBoundaryHandle(
                    boundaryIndex: rightBoundaryIndex,
                    color: const Color(0xFF7B3FC9),
                  ),
                if (activeBoundary != null)
                  Positioned(
                    top: -22,
                    left: (widget.totalWidth *
                                (widget.clips[activeBoundary].timelineOutMs -
                                        widget.selectedClip.timelineInMs +
                                        _dragDeltaMs)
                                    .clamp(0, widget.clipDurationMs) /
                                widget.clipDurationMs -
                            58)
                        .clamp(0, widget.totalWidth - 116),
                    child: Container(
                      width: 116,
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xEE1E1E1E),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            deltaLabel,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            nearBeat ? 'Snap' : '${nearestBeatMs}ms',
                            style: TextStyle(
                              color: nearBeat
                                  ? const Color(0xFF94F39A)
                                  : Colors.white70,
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBoundaryHandle({
    required int boundaryIndex,
    required Color color,
  }) {
    final bool locked = widget.lockedBoundaryIndices.contains(boundaryIndex);
    final int localBoundaryMs =
        widget.clips[boundaryIndex].timelineOutMs - widget.selectedClip.timelineInMs;
    final double x = widget.totalWidth * localBoundaryMs / widget.clipDurationMs;

    return Positioned(
      left: (x - 10).clamp(0.0, widget.totalWidth - 20),
      top: -1,
      bottom: -1,
      width: 20,
      child: MouseRegion(
        cursor: locked
            ? SystemMouseCursors.forbidden
            : SystemMouseCursors.resizeColumn,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragStart: locked
              ? null
              : (_) {
                  widget.onBoundaryDragStart?.call(boundaryIndex);
                  setState(() {
                    _activeBoundaryIndex = boundaryIndex;
                    _dragDeltaMs = 0;
                  });
                },
          onHorizontalDragUpdate: locked
              ? null
              : (DragUpdateDetails details) {
                  _handleBoundaryDragUpdate(
                    boundaryIndex: boundaryIndex,
                    deltaPx: details.delta.dx,
                  );
                },
          onHorizontalDragEnd: locked
              ? null
              : (_) => _finishBoundaryDrag(boundaryIndex),
          onHorizontalDragCancel: () {
            if (!locked) {
              _finishBoundaryDrag(boundaryIndex);
            }
          },
          child: Center(
            child: Container(
              width: 6,
              decoration: BoxDecoration(
                color: locked ? const Color(0xFFBE7E2D) : color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
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
                                  '< ${(widget.clip.durationMs / 1000).toStringAsFixed(0)}s',
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
