import 'package:flutter/material.dart';

import '../../../../core/models/editor_session_input.dart';
import '../../../../core/models/timeline_models.dart';

class ImportAutoEditSettingsPanel extends StatelessWidget {
  const ImportAutoEditSettingsPanel({
    required this.editPaceLevel,
    required this.applyDuckingToAllClips,
    required this.minClipMs,
    required this.maxClipMs,
    required this.canvasAspectPreset,
    required this.transitionPreset,
    required this.audioMixPreset,
    required this.defaultFilterEffect,
    required this.onEditPaceLevelChanged,
    required this.onApplyDuckingChanged,
    required this.onMinClipMsChanged,
    required this.onMaxClipMsChanged,
    required this.onCanvasAspectChanged,
    required this.onTransitionPresetChanged,
    required this.onAudioMixPresetChanged,
    required this.onDefaultFilterEffectChanged,
    super.key,
  });

  final int editPaceLevel;
  final bool applyDuckingToAllClips;
  final int minClipMs;
  final int maxClipMs;
  final CanvasAspectPreset canvasAspectPreset;
  final ImportTransitionPreset transitionPreset;
  final ImportAudioMixPreset audioMixPreset;
  final ClipFilterEffect defaultFilterEffect;
  final ValueChanged<int> onEditPaceLevelChanged;
  final ValueChanged<bool> onApplyDuckingChanged;
  final ValueChanged<int> onMinClipMsChanged;
  final ValueChanged<int> onMaxClipMsChanged;
  final ValueChanged<CanvasAspectPreset> onCanvasAspectChanged;
  final ValueChanged<ImportTransitionPreset> onTransitionPresetChanged;
  final ValueChanged<ImportAudioMixPreset> onAudioMixPresetChanged;
  final ValueChanged<ClipFilterEffect> onDefaultFilterEffectChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _ImportSettingsGroup(
          title: 'Video Cuts',
          description: 'Controls how the first auto-edit slices highlights into clips.',
          icon: Icons.content_cut_outlined,
          children: <Widget>[
            Text('Editing pace: ${_editPaceLabel(editPaceLevel)}'),
            Slider(
              min: 1,
              max: 5,
              divisions: 4,
              label: _editPaceLabel(editPaceLevel),
              value: editPaceLevel.toDouble(),
              onChanged: (double value) {
                onEditPaceLevelChanged(value.round());
              },
            ),
            const SizedBox(height: 8),
            Text('Clip duration range: ${minClipMs}ms - ${maxClipMs}ms'),
            Slider(
              min: 400,
              max: 3000,
              divisions: 26,
              label: '${minClipMs}ms',
              value: minClipMs.toDouble(),
              onChanged: (double value) {
                onMinClipMsChanged(value.round());
              },
            ),
            Slider(
              min: 1200,
              max: 10000,
              divisions: 44,
              label: '${maxClipMs}ms',
              value: maxClipMs.toDouble(),
              onChanged: (double value) {
                onMaxClipMsChanged(value.round());
              },
            ),
            const SizedBox(height: 8),
            Text('Transition default: ${_transitionLabel(transitionPreset)}'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ImportTransitionPreset.values
                  .map(
                    (ImportTransitionPreset value) => ChoiceChip(
                      label: Text(_transitionLabel(value)),
                      selected: transitionPreset == value,
                      onSelected: (_) {
                        onTransitionPresetChanged(value);
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _ImportSettingsGroup(
          title: 'BGM / Audio',
          description: 'Controls how background music and clip audio are balanced in the edit.',
          icon: Icons.graphic_eq_outlined,
          children: <Widget>[
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Apply audio ducking to all clips'),
              subtitle: const Text('You can still change per clip in editor'),
              value: applyDuckingToAllClips,
              onChanged: onApplyDuckingChanged,
            ),
            const SizedBox(height: 8),
            Text('Audio mix: ${_audioMixLabel(audioMixPreset)}'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ImportAudioMixPreset.values
                  .map(
                    (ImportAudioMixPreset value) => ChoiceChip(
                      label: Text(_audioMixLabel(value)),
                      selected: audioMixPreset == value,
                      onSelected: (_) {
                        onAudioMixPresetChanged(value);
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _ImportSettingsGroup(
          title: 'Video Output',
          description: 'Sets the canvas shape and default look before you move into the editor.',
          icon: Icons.movie_creation_outlined,
          children: <Widget>[
            Text('Canvas ratio: ${_aspectLabel(canvasAspectPreset)}'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: CanvasAspectPreset.values
                  .map(
                    (CanvasAspectPreset value) => ChoiceChip(
                      label: Text(_aspectLabel(value)),
                      selected: canvasAspectPreset == value,
                      onSelected: (_) {
                        onCanvasAspectChanged(value);
                      },
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            Text('Default filter: ${_filterLabel(defaultFilterEffect)}'),
            const SizedBox(height: 6),
            Text(
              'Filter preview examples',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 86,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ClipFilterEffect.values.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 8),
                itemBuilder: (BuildContext context, int index) {
                  final ClipFilterEffect value = ClipFilterEffect.values[index];
                  final bool selected = defaultFilterEffect == value;
                  final ColorFilter? colorFilter = _previewColorFilter(value);
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      onDefaultFilterEffectChanged(value);
                    },
                    child: Container(
                      width: 110,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.outlineVariant,
                          width: selected ? 2 : 1,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: ColorFiltered(
                                colorFilter: colorFilter ??
                                    const ColorFilter.mode(
                                      Colors.transparent,
                                      BlendMode.srcOver,
                                    ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Colors.orange.shade300,
                                        Colors.purple.shade300,
                                        Colors.blue.shade300,
                                      ],
                                    ),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.landscape,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _filterLabel(value),
                            style: const TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ClipFilterEffect.values
                  .map(
                    (ClipFilterEffect value) => ChoiceChip(
                      label: Text(_filterLabel(value)),
                      selected: defaultFilterEffect == value,
                      onSelected: (_) {
                        onDefaultFilterEffectChanged(value);
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }

  String _editPaceLabel(int level) {
    switch (level) {
      case 1:
        return 'Very Slow';
      case 2:
        return 'Slow';
      case 3:
        return 'Normal';
      case 4:
        return 'Fast';
      case 5:
        return 'Very Fast';
      default:
        return 'Normal';
    }
  }

  String _aspectLabel(CanvasAspectPreset value) {
    switch (value) {
      case CanvasAspectPreset.ratio9x16:
        return '9:16';
      case CanvasAspectPreset.ratio1x1:
        return '1:1';
      case CanvasAspectPreset.ratio16x9:
        return '16:9';
    }
  }

  String _transitionLabel(ImportTransitionPreset value) {
    switch (value) {
      case ImportTransitionPreset.cut:
        return 'Cut';
      case ImportTransitionPreset.dissolveShort:
        return 'Short Dissolve';
    }
  }

  String _audioMixLabel(ImportAudioMixPreset value) {
    switch (value) {
      case ImportAudioMixPreset.sourcePriority:
        return 'Source Priority';
      case ImportAudioMixPreset.balanced:
        return 'Balanced';
      case ImportAudioMixPreset.bgmPriority:
        return 'BGM Priority';
    }
  }

  String _filterLabel(ClipFilterEffect value) {
    switch (value) {
      case ClipFilterEffect.none:
        return 'None';
      case ClipFilterEffect.warm:
        return 'Warm';
      case ClipFilterEffect.cool:
        return 'Cool';
      case ClipFilterEffect.cinematic:
        return 'Cinematic';
      case ClipFilterEffect.mono:
        return 'Mono';
    }
  }

  ColorFilter? _previewColorFilter(ClipFilterEffect value) {
    switch (value) {
      case ClipFilterEffect.none:
        return null;
      case ClipFilterEffect.warm:
        return ColorFilter.mode(
          Colors.orange.withValues(alpha: 0.22),
          BlendMode.softLight,
        );
      case ClipFilterEffect.cool:
        return ColorFilter.mode(
          Colors.blue.withValues(alpha: 0.2),
          BlendMode.softLight,
        );
      case ClipFilterEffect.cinematic:
        return ColorFilter.mode(
          Colors.teal.withValues(alpha: 0.24),
          BlendMode.multiply,
        );
      case ClipFilterEffect.mono:
        return const ColorFilter.matrix(<double>[
          0.2126,
          0.7152,
          0.0722,
          0,
          0,
          0.2126,
          0.7152,
          0.0722,
          0,
          0,
          0.2126,
          0.7152,
          0.0722,
          0,
          0,
          0,
          0,
          0,
          1,
          0,
        ]);
    }
  }
}

class _ImportSettingsGroup extends StatelessWidget {
  const _ImportSettingsGroup({
    required this.title,
    required this.description,
    required this.icon,
    required this.children,
  });

  final String title;
  final String description;
  final IconData icon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: colorScheme.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 2),
                Text(description, style: Theme.of(context).textTheme.bodySmall),
                if (children.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 10),
                  ...children,
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}