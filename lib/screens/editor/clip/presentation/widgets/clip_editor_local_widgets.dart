import 'package:flutter/material.dart';

import '../../../../../core/models/timeline_models.dart';

class ClipSequenceStrip extends StatelessWidget {
  const ClipSequenceStrip({
    required this.clips,
    required this.beats,
    required this.selectedClipIndex,
    required this.onSelectClip,
    super.key,
  });

  final List<TimelineClip> clips;
  final List<BeatMarker> beats;
  final int selectedClipIndex;
  final ValueChanged<int> onSelectClip;

  @override
  Widget build(BuildContext context) {
    if (clips.isEmpty) {
      return const SizedBox.shrink();
    }

    // Responsive grid: 2-4 columns depending on screen width
    final int crossAxisCount = MediaQuery.of(context).size.width > 800 ? 4 : 3;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 1.2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: clips.length,
        itemBuilder: (BuildContext context, int index) {
          final bool selected = index == selectedClipIndex;
          final TimelineClip clip = clips[index];
          final int beatHits = beats
              .where((BeatMarker beat) => beat.tsMs >= clip.timelineInMs && beat.tsMs <= clip.timelineOutMs)
              .length;

          return GestureDetector(
            onTap: () => onSelectClip(index),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E2126),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: selected ? const Color(0xFFFF8A3D) : const Color(0xFF40454D),
                  width: selected ? 2.0 : 1.2,
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: <Widget>[
                  // THUMBNAIL BACKGROUND (Premiere Clip style)
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: selected
                            ? const <Color>[Color(0xFF4A5563), Color(0xFF252B34)]
                            : const <Color>[Color(0xFF32363D), Color(0xFF1E2126)],
                      ),
                    ),
                  ),
                  // THUMBNAIL PLACEHOLDER (actual frames would render here)
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.grey.shade700,
                            Colors.grey.shade900,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.videocam_outlined,
                          color: Colors.white.withValues(alpha: 0.3),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  // OVERLAY WITH INFO
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // TOP ACCENT BAR
                        Container(
                          height: 4,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: selected ? const Color(0xFFFF8A3D) : const Color(0xFF6A7380),
                          ),
                        ),
                        // CENTER: CLIP LABEL
                        Center(
                          child: Text(
                            'C${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        // BOTTOM: BEAT COUNT + DURATION
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '$beatHits beat${beatHits == 1 ? '' : 's'}',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '${(clip.durationMs / 1000).toStringAsFixed(1)}s',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CompactOptionDock extends StatelessWidget {
  const CompactOptionDock({
    required this.clip,
    required this.onTrimShorter,
    required this.onTrimLonger,
    required this.onTapAudio,
    required this.onTapFilter,
    required this.onTapText,
    required this.onTapMore,
    super.key,
  });

  final TimelineClip clip;
  final VoidCallback onTrimShorter;
  final VoidCallback onTrimLonger;
  final VoidCallback onTapAudio;
  final VoidCallback onTapFilter;
  final VoidCallback onTapText;
  final VoidCallback onTapMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: const BoxDecoration(
        color: Color(0xFF171A1F),
        border: Border(
          top: BorderSide(color: Color(0xFF2B3038), width: 1),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _DockIconButton(
              icon: Icons.remove,
              label: 'Shorter',
              active: false,
              onTap: onTrimShorter,
            ),
            _DockIconButton(
              icon: Icons.add,
              label: 'Longer',
              active: false,
              onTap: onTrimLonger,
            ),
            Container(
              width: 1,
              height: 18,
              color: Colors.white10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
            ),
            _DockIconButton(
              icon: clip.audioDucking ? Icons.graphic_eq : Icons.music_note,
              label: 'Audio',
              active: clip.audioDucking,
              onTap: onTapAudio,
            ),
            _DockIconButton(
              icon: Icons.tune,
              label: 'Filter',
              active: clip.filterEffect != ClipFilterEffect.none,
              onTap: onTapFilter,
            ),
            _DockIconButton(
              icon: Icons.text_fields,
              label: 'Text',
              active: clip.textPreset != ClipTextPreset.none,
              onTap: onTapText,
            ),
            const SizedBox(width: 6),
            FilledButton.tonalIcon(
              onPressed: onTapMore,
              icon: const Icon(Icons.tune, size: 17),
              label: const Text('More'),
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF2A2F37),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DockIconButton extends StatelessWidget {
  const _DockIconButton({
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: IconButton(
        visualDensity: VisualDensity.compact,
        iconSize: 18,
        color: active ? const Color(0xFFFF8A3D) : Colors.white70,
        onPressed: onTap,
        icon: Icon(icon),
      ),
    );
  }
}
