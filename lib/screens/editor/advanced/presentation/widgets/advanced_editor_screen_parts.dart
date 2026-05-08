part of '../advanced_editor_screen.dart';

class _RemoveSelectedClipIntent extends Intent {
  const _RemoveSelectedClipIntent();
}

class _DuplicateSelectedClipIntent extends Intent {
  const _DuplicateSelectedClipIntent();
}

class _NudgeBoundaryIntent extends Intent {
  const _NudgeBoundaryIntent(this.direction);

  final int direction;
}

class _SelectRelativeClipIntent extends Intent {
  const _SelectRelativeClipIntent(this.delta);

  final int delta;
}

class _SourceTray extends StatelessWidget {
  const _SourceTray({
    required this.mediaItems,
    required this.bgmItems,
    required this.activeAssetPath,
    required this.onMediaTap,
  });

  final List<MediaItem> mediaItems;
  final List<BgmItem> bgmItems;
  final String? activeAssetPath;
  final ValueChanged<String> onMediaTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ...mediaItems.map(
          (MediaItem item) {
            final bool active = item.path == activeAssetPath;
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () => onMediaTap(item.path),
                child: Container(
                  width: 140,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: active
                        ? const Color(0xFFE8DAF8)
                        : Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      color: active
                          ? const Color(0xFF7A32C5)
                          : Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(item.isPhoto ? Icons.photo : Icons.movie, size: 18),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          item.displayName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        ...bgmItems.map(
          (BgmItem bgm) => Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Container(
              width: 140,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.surface,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.music_note, size: 18),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      bgm.displayName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _TransportStrip extends StatelessWidget {
  const _TransportStrip({
    required this.selectedClipIndex,
    required this.selectedClip,
    required this.canMoveBoundary,
    required this.boundaryIndex,
    required this.nudgeStepMs,
    required this.onNudgeStepChanged,
    required this.onNudgeLeft,
    required this.onNudgeRight,
    required this.onBoundaryChanged,
    required this.boundaryCount,
  });

  final int selectedClipIndex;
  final TimelineClip? selectedClip;
  final bool canMoveBoundary;
  final int boundaryIndex;
  final int nudgeStepMs;
  final ValueChanged<int> onNudgeStepChanged;
  final VoidCallback? onNudgeLeft;
  final VoidCallback? onNudgeRight;
  final ValueChanged<int>? onBoundaryChanged;
  final int boundaryCount;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        Chip(
          label: Text(
            selectedClip == null
                ? 'No clip selected'
                : 'Clip ${selectedClipIndex + 1} · ${(selectedClip!.durationMs / 1000).toStringAsFixed(1)}s',
          ),
        ),
        if (canMoveBoundary) ...<Widget>[
          DropdownButton<int>(
            value: boundaryIndex,
            items: List<DropdownMenuItem<int>>.generate(
              boundaryCount,
              (int index) => DropdownMenuItem<int>(
                value: index,
                child: Text('Cut ${index + 1}'),
              ),
            ),
            onChanged: (int? value) {
              if (value != null && onBoundaryChanged != null) {
                onBoundaryChanged!(value);
              }
            },
          ),
          DropdownButton<int>(
            value: nudgeStepMs,
            items: const <DropdownMenuItem<int>>[
              DropdownMenuItem<int>(value: 50, child: Text('50ms')),
              DropdownMenuItem<int>(value: 100, child: Text('100ms')),
              DropdownMenuItem<int>(value: 250, child: Text('250ms')),
              DropdownMenuItem<int>(value: 500, child: Text('500ms')),
              DropdownMenuItem<int>(value: 1000, child: Text('1s')),
            ],
            onChanged: (int? value) {
              if (value != null) onNudgeStepChanged(value);
            },
          ),
          IconButton(
            tooltip: 'Nudge cut left',
            onPressed: onNudgeLeft,
            icon: const Icon(Icons.chevron_left),
          ),
          IconButton(
            tooltip: 'Nudge cut right',
            onPressed: onNudgeRight,
            icon: const Icon(Icons.chevron_right),
          ),
        ],
      ],
    );
  }
}

class _InspectorPanel extends StatelessWidget {
  const _InspectorPanel({
    required this.clip,
    required this.selectedClipIndex,
    required this.targetDurationMs,
    required this.beatSnapEnabled,
    required this.beatSnapThresholdMs,
    required this.filterLabel,
    required this.textLabel,
    required this.onTargetDurationChanged,
    required this.onBeatSnapEnabledChanged,
    required this.onBeatSnapThresholdChanged,
    required this.onDuckingChanged,
    required this.onFilterChanged,
    required this.onTextChanged,
    required this.onDuplicate,
    required this.onRemove,
  });

  final TimelineClip? clip;
  final int selectedClipIndex;
  final int targetDurationMs;
  final bool beatSnapEnabled;
  final int beatSnapThresholdMs;
  final String Function(ClipFilterEffect) filterLabel;
  final String Function(ClipTextPreset) textLabel;
  final ValueChanged<double> onTargetDurationChanged;
  final ValueChanged<bool> onBeatSnapEnabledChanged;
  final ValueChanged<double> onBeatSnapThresholdChanged;
  final ValueChanged<bool> onDuckingChanged;
  final ValueChanged<ClipFilterEffect> onFilterChanged;
  final ValueChanged<ClipTextPreset> onTextChanged;
  final VoidCallback? onDuplicate;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Project timing', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          Text('Target: ${(targetDurationMs / 1000).toStringAsFixed(0)}s'),
          Slider(
            min: 5,
            max: 240,
            divisions: 235,
            value: targetDurationMs / 1000,
            onChanged: onTargetDurationChanged,
          ),
          Row(
            children: <Widget>[
              const Text('Beat snap'),
              const SizedBox(width: 8),
              Switch(
                value: beatSnapEnabled,
                onChanged: onBeatSnapEnabledChanged,
              ),
              const Spacer(),
              Text('${beatSnapThresholdMs}ms'),
            ],
          ),
          Slider(
            min: 20,
            max: 400,
            divisions: 38,
            value: beatSnapThresholdMs.toDouble(),
            onChanged: beatSnapEnabled ? onBeatSnapThresholdChanged : null,
          ),
          const Divider(height: 20),
          Text('Selected clip', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          if (clip == null)
            const Text('Select a clip in the timeline to edit details.')
          else ...<Widget>[
            Text('Clip ${selectedClipIndex + 1}'),
            Text('Range ${clip!.timelineInMs} - ${clip!.timelineOutMs}ms'),
            const SizedBox(height: 6),
            Row(
              children: <Widget>[
                const Text('Ducking'),
                const SizedBox(width: 8),
                Switch(
                  value: clip!.audioDucking,
                  onChanged: onDuckingChanged,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text('Filter: ${filterLabel(clip!.filterEffect)}'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ClipFilterEffect.values
                  .map(
                    (ClipFilterEffect fx) => ChoiceChip(
                      label: Text(filterLabel(fx)),
                      selected: clip!.filterEffect == fx,
                      onSelected: (_) => onFilterChanged(fx),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            Text('Text: ${textLabel(clip!.textPreset)}'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ClipTextPreset.values
                  .map(
                    (ClipTextPreset preset) => ChoiceChip(
                      label: Text(textLabel(preset)),
                      selected: clip!.textPreset == preset,
                      onSelected: (_) => onTextChanged(preset),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: onDuplicate,
                    icon: const Icon(Icons.copy),
                    label: const Text('Duplicate'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: onRemove,
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Remove'),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
