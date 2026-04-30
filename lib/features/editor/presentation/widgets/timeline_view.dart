import 'package:flutter/material.dart';

import '../../../../core/models/timeline_models.dart';

typedef BoundaryDragCallback = void Function(int clipIndex, int deltaMs);
typedef ClipTapCallback = void Function(int clipIndex, TimelineClip clip);

class TimelineView extends StatefulWidget {
  const TimelineView({
    super.key,
    required this.project,
    required this.selectedBoundaryClipIndex,
    required this.selectedClipIndex,
    required this.lockedBoundaryIndices,
    required this.onSelectBoundary,
    required this.onSelectClip,
    required this.onToggleBoundaryLock,
    required this.onNudgeBoundary,
    this.playheadMs,
    this.onSeekRequest,
    this.onClipSettingsTap,
  });

  final TimelineProject project;
  final int selectedBoundaryClipIndex;
  final int selectedClipIndex;
  final Set<int> lockedBoundaryIndices;
  final ValueChanged<int> onSelectBoundary;
  final ValueChanged<int> onSelectClip;
  final ValueChanged<int> onToggleBoundaryLock;
  final BoundaryDragCallback onNudgeBoundary;
  /// Current playback position in ms. Null = hidden.
  final int? playheadMs;
  /// Called when the user taps a clip to seek the video to that position.
  final ValueChanged<int>? onSeekRequest;
  /// Called when the user taps the clip thumbnail region to edit options.
  final ClipTapCallback? onClipSettingsTap;

  @override
  State<TimelineView> createState() => _TimelineViewState();
}

class _TimelineViewState extends State<TimelineView> {
  double _zoom = 1.0; // 1× = 0.06 px/ms base
  static const double _basePxPerMs = 0.06;

  double get _pxPerMs => _basePxPerMs * _zoom;

  final Map<int, double> _dragResidualMs = <int, double>{};

  void _handleDrag(int clipIndex, double deltaDx) {
    if (widget.lockedBoundaryIndices.contains(clipIndex)) {
      return;
    }

    final double msPerPixel = 1 / _pxPerMs;
    final double currentResidual = _dragResidualMs[clipIndex] ?? 0.0;
    final double totalMs = currentResidual + (deltaDx * msPerPixel);
    final int quantizedStep = widget.project.quantizationMs;

    final int stepCount = (totalMs / quantizedStep).truncate();
    if (stepCount == 0) {
      _dragResidualMs[clipIndex] = totalMs;
      return;
    }

    _dragResidualMs[clipIndex] = totalMs - (stepCount * quantizedStep);
    widget.onNudgeBoundary(clipIndex, stepCount * quantizedStep);
  }

  String _assetLabel(String assetId) {
    final int slash = assetId.lastIndexOf(RegExp(r'[/\\]'));
    final String name = slash >= 0 ? assetId.substring(slash + 1) : assetId;
    return name.isEmpty ? 'media' : name;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.project.clips.isEmpty) {
      return const SizedBox(
        height: 180,
        child: Center(child: Text('No clips yet')),
      );
    }

    final int startMs = widget.project.clips.first.timelineInMs;
    final int endMs = widget.project.clips.last.timelineOutMs;
    final int durationMs = (endMs - startMs).clamp(1, 1 << 30);
    final double totalWidth = durationMs * _pxPerMs;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Timeline (${widget.project.quantizationMs}ms step)',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 4),
        // ── Zoom control ───────────────────────────────────────────────
        Row(
          children: <Widget>[
            const Icon(Icons.zoom_out, size: 18),
            Expanded(
              child: Slider(
                min: 0.25,
                max: 8.0,
                value: _zoom,
                onChanged: (double v) => setState(() => _zoom = v),
              ),
            ),
            const Icon(Icons.zoom_in, size: 18),
            const SizedBox(width: 4),
            Text('${_zoom.toStringAsFixed(1)}×',
                style: const TextStyle(fontSize: 12)),
          ],
        ),
        // ── Scrollable canvas with track headers (NLE-style) ─────────
        SizedBox(
          height: 260,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 58,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: const Text('V1', style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: const Text('A1', style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: totalWidth,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          height: 22,
                          child: CustomPaint(
                            size: Size(totalWidth, 22),
                            painter: _RulerPainter(
                              startMs: startMs,
                              durationMs: durationMs,
                              totalWidth: totalWidth,
                              pxPerMs: _pxPerMs,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 22,
                          left: 0,
                          right: 0,
                          height: 16,
                          child: Stack(
                            children: widget.project.beats.map((BeatMarker marker) {
                              final double x = (marker.tsMs - startMs) * _pxPerMs;
                              return Positioned(
                                left: x.clamp(0, totalWidth - 1),
                                top: 0,
                                child: Container(
                                  width: 2,
                                  height: 16,
                                  color: Colors.deepOrange,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Positioned(
                          top: 42,
                          left: 0,
                          right: 0,
                          height: 108,
                          child: Row(
                            children: List<Widget>.generate(widget.project.clips.length, (int index) {
                              final TimelineClip clip = widget.project.clips[index];
                              final bool canMove = index < widget.project.clips.length - 1;
                              final bool selectedBoundary = canMove && index == widget.selectedBoundaryClipIndex;
                              final bool selectedClip = index == widget.selectedClipIndex;
                              final bool locked = widget.lockedBoundaryIndices.contains(index);
                              final double width = (clip.durationMs * _pxPerMs).clamp(70, 420);

                              return GestureDetector(
                                onTap: () {
                                  widget.onSelectClip(index);
                                  widget.onSeekRequest?.call(clip.timelineInMs);
                                },
                                child: Container(
                                  width: width,
                                  margin: const EdgeInsets.only(right: 2),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: selectedClip
                                        ? Colors.deepPurple.withValues(alpha: 0.24)
                                        : selectedBoundary
                                            ? Colors.teal.withValues(alpha: 0.25)
                                            : Colors.teal.withValues(alpha: 0.15),
                                    border: Border.all(
                                      color: selectedClip
                                          ? Colors.deepPurple.shade700
                                          : selectedBoundary
                                              ? Colors.teal.shade700
                                              : Colors.teal.shade300,
                                      width: (selectedClip || selectedBoundary) ? 2 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Clip ${index + 1}',
                                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              _assetLabel(clip.assetId),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(fontSize: 10),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '${(clip.durationMs / 1000).toStringAsFixed(2)}s',
                                              style: const TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (canMove)
                                        GestureDetector(
                                          onTap: () => widget.onSelectBoundary(index),
                                          onHorizontalDragUpdate: (DragUpdateDetails details) {
                                            widget.onSelectBoundary(index);
                                            _handleDrag(index, details.delta.dx);
                                          },
                                          onHorizontalDragEnd: (_) {
                                            _dragResidualMs.remove(index);
                                          },
                                          child: Container(
                                            width: 12,
                                            height: 74,
                                            decoration: BoxDecoration(
                                              color: locked
                                                  ? Colors.grey.shade500
                                                  : selectedBoundary
                                                      ? Colors.teal.shade700
                                                      : Colors.teal.shade500,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.drag_indicator,
                                              size: 11,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        Positioned(
                          top: 156,
                          left: 0,
                          right: 0,
                          height: 80,
                          child: Row(
                            children: List<Widget>.generate(widget.project.clips.length, (int index) {
                              final TimelineClip clip = widget.project.clips[index];
                              final bool selectedClip = index == widget.selectedClipIndex;
                              final double width = (clip.durationMs * _pxPerMs).clamp(70, 420);

                              return Container(
                                width: width,
                                margin: const EdgeInsets.only(right: 2),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                decoration: BoxDecoration(
                                  color: selectedClip
                                      ? Colors.blueGrey.withValues(alpha: 0.25)
                                      : Colors.blueGrey.withValues(alpha: 0.14),
                                  border: Border.all(
                                    color: selectedClip
                                        ? Colors.blueGrey.shade700
                                        : Colors.blueGrey.shade400,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        clip.audioDucking ? Icons.graphic_eq : Icons.audiotrack,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Container(
                                          height: 18,
                                          decoration: BoxDecoration(
                                            color: Colors.black.withValues(alpha: 0.08),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Row(
                                            children: List<Widget>.generate(
                                              10,
                                              (int i) => Expanded(
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Container(
                                                    margin: const EdgeInsets.symmetric(horizontal: 0.5),
                                                    height: 3 + ((i * 7 + index * 3) % 10).toDouble(),
                                                    color: Colors.blueGrey.shade700,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        if (widget.playheadMs != null)
                          Positioned(
                            left: ((widget.playheadMs! - startMs) * _pxPerMs)
                                .clamp(0.0, totalWidth - 2),
                            top: 0,
                            bottom: 0,
                            width: 2,
                            child: ColoredBox(
                              color: Colors.red.withValues(alpha: 0.85),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Ruler painter ─────────────────────────────────────────────────────────
class _RulerPainter extends CustomPainter {
  const _RulerPainter({
    required this.startMs,
    required this.durationMs,
    required this.totalWidth,
    required this.pxPerMs,
  });

  final int startMs;
  final int durationMs;
  final double totalWidth;
  final double pxPerMs;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()
      ..color = Colors.grey.shade600
      ..strokeWidth = 1;
    final Paint majorPaint = Paint()
      ..color = Colors.grey.shade800
      ..strokeWidth = 1.5;
    final TextPainter tp =
        TextPainter(textDirection: TextDirection.ltr);

    final int intervalMs = pxPerMs >= 0.12
        ? 500
        : pxPerMs >= 0.03
            ? 1000
            : 5000;

    final int firstTickMs =
        ((startMs / intervalMs).ceil()) * intervalMs;

    for (int tickMs = firstTickMs;
        tickMs <= startMs + durationMs;
        tickMs += intervalMs) {
      final double x = (tickMs - startMs) * pxPerMs;
      final bool isMajor = tickMs % 5000 == 0;
      final double tickHeight = isMajor ? 14 : 7;
      canvas.drawLine(
        Offset(x, size.height - tickHeight),
        Offset(x, size.height),
        isMajor ? majorPaint : linePaint,
      );
      if (isMajor || intervalMs <= 1000) {
        final double secs = tickMs / 1000.0;
        final String label = secs == secs.truncateToDouble()
            ? '${secs.toInt()}s'
            : '${secs.toStringAsFixed(1)}s';
        tp.text = TextSpan(
          text: label,
          style: TextStyle(color: Colors.grey.shade700, fontSize: 9),
        );
        tp.layout();
        tp.paint(canvas, Offset(x + 2, 0));
      }
    }
    canvas.drawLine(
      Offset(0, size.height - 1),
      Offset(size.width, size.height - 1),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(_RulerPainter old) =>
      old.startMs != startMs ||
      old.durationMs != durationMs ||
      old.pxPerMs != pxPerMs;
}
