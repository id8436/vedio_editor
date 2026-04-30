import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/widgets/app_scaffold.dart';
import '../../../core/models/editor_session_input.dart';
import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';
import 'editor_controller.dart';
import 'widgets/timeline_view.dart';
import 'widgets/video_preview.dart';

/// Pro editor stage intended as desktop-level finishing pass after Advanced Editor.
class ProEditorScreen extends ConsumerStatefulWidget {
  const ProEditorScreen({
    super.key,
    this.input,
    this.preserveCurrentProject = false,
  });

  final EditorSessionInput? input;
  final bool preserveCurrentProject;

  @override
  ConsumerState<ProEditorScreen> createState() => _ProEditorScreenState();
}

class _ProEditorScreenState extends ConsumerState<ProEditorScreen> {
  int _selectedBoundaryClipIndex = 0;
  int _selectedClipIndex = 0;
  int _nudgeStepMs = 100;
  int? _playheadMs;

  final GlobalKey<VideoPreviewState> _previewKey = GlobalKey<VideoPreviewState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final EditorSessionInput? input = widget.input;
      if (input == null || widget.preserveCurrentProject) {
        return;
      }
      ref.read(editorControllerProvider.notifier).initializeFromImport(input);
    });
  }

  String _filterLabel(ClipFilterEffect effect) {
    switch (effect) {
      case ClipFilterEffect.none:
        return 'None';
      case ClipFilterEffect.warm:
        return 'Warm';
      case ClipFilterEffect.cool:
        return 'Cool';
      case ClipFilterEffect.cinematic:
        return 'Cinema';
      case ClipFilterEffect.mono:
        return 'Mono';
    }
  }

  String _textPresetLabel(ClipTextPreset preset) {
    switch (preset) {
      case ClipTextPreset.none:
        return 'None';
      case ClipTextPreset.titleCard:
        return 'Title Card';
      case ClipTextPreset.lowerThird:
        return 'Lower Third';
      case ClipTextPreset.caption:
        return 'Caption';
    }
  }

  Future<bool> _confirmRemoveClip(BuildContext context, int index) async {
    final bool? decision = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Remove selected clip?'),
          content: Text('Clip ${index + 1} will be deleted from timeline.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Remove'),
            ),
          ],
        );
      },
    );
    return decision ?? false;
  }

  void _nudgeSelectedBoundary(EditorController controller, int deltaMs, int clipsCount) {
    if (clipsCount <= 1) {
      return;
    }
    final int boundaryIndex = _selectedBoundaryClipIndex.clamp(0, clipsCount - 2);
    controller.dragCutPoint(
      clipIndex: boundaryIndex,
      deltaMs: deltaMs,
    );
  }

  void _selectClipRelative(int delta, int clipsCount) {
    if (clipsCount == 0) {
      return;
    }
    setState(() {
      _selectedClipIndex = (_selectedClipIndex + delta).clamp(0, clipsCount - 1);
    });
  }

  Future<void> _removeSelectedClipWithConfirm(
    BuildContext context,
    EditorController controller,
    int selectedClipIndex,
    int clipsCount,
  ) async {
    if (clipsCount <= 1) {
      return;
    }
    final bool confirmed = await _confirmRemoveClip(context, selectedClipIndex);
    if (!confirmed || !mounted) {
      return;
    }
    controller.removeClip(selectedClipIndex);
    if (!mounted) {
      return;
    }
    setState(() {
      _selectedClipIndex = selectedClipIndex > 0 ? selectedClipIndex - 1 : 0;
    });
  }

  Widget _panel({
    required BuildContext context,
    required String title,
    required Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.all(12),
    List<Widget>? actions,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 10, 8),
            child: Row(
              children: <Widget>[
                Text(title, style: Theme.of(context).textTheme.titleSmall),
                const Spacer(),
                if (actions != null) ...actions,
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final EditorState state = ref.watch(editorControllerProvider);
    final EditorController controller = ref.read(editorControllerProvider.notifier);

    final List<TimelineClip> clips = state.project.clips;
    final int safeSelectedClipIndex =
        clips.isEmpty ? 0 : _selectedClipIndex.clamp(0, clips.length - 1);
    final int safeBoundaryIndex = clips.length <= 1
        ? 0
        : _selectedBoundaryClipIndex.clamp(0, clips.length - 2);
    final TimelineClip? selectedClip = clips.isEmpty ? null : clips[safeSelectedClipIndex];

    final int totalDurationMs = clips.fold<int>(0, (int sum, TimelineClip c) => sum + c.durationMs);

    return AppScaffold(
      activeRoute: '/editor-pro',
      title: 'BeatClip - Pro Editor',
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.undo),
          tooltip: 'Undo',
          onPressed: state.canUndo ? controller.undo : null,
        ),
        IconButton(
          icon: const Icon(Icons.redo),
          tooltip: 'Redo',
          onPressed: state.canRedo ? controller.redo : null,
        ),
      ],
      body: Shortcuts(
        shortcuts: const <ShortcutActivator, Intent>{
          SingleActivator(LogicalKeyboardKey.delete): _RemoveSelectedClipIntent(),
          SingleActivator(LogicalKeyboardKey.keyD, control: true): _DuplicateSelectedClipIntent(),
          SingleActivator(LogicalKeyboardKey.arrowLeft): _NudgeBoundaryIntent(-1),
          SingleActivator(LogicalKeyboardKey.arrowRight): _NudgeBoundaryIntent(1),
          SingleActivator(LogicalKeyboardKey.arrowUp): _SelectRelativeClipIntent(-1),
          SingleActivator(LogicalKeyboardKey.arrowDown): _SelectRelativeClipIntent(1),
        },
        child: Actions(
          actions: <Type, Action<Intent>>{
            _RemoveSelectedClipIntent: CallbackAction<_RemoveSelectedClipIntent>(
              onInvoke: (_RemoveSelectedClipIntent intent) {
                _removeSelectedClipWithConfirm(
                  context,
                  controller,
                  safeSelectedClipIndex,
                  clips.length,
                );
                return null;
              },
            ),
            _DuplicateSelectedClipIntent: CallbackAction<_DuplicateSelectedClipIntent>(
              onInvoke: (_DuplicateSelectedClipIntent intent) {
                if (selectedClip == null) {
                  return null;
                }
                controller.duplicateClip(safeSelectedClipIndex);
                setState(() {
                  _selectedClipIndex = safeSelectedClipIndex + 1;
                });
                return null;
              },
            ),
            _NudgeBoundaryIntent: CallbackAction<_NudgeBoundaryIntent>(
              onInvoke: (_NudgeBoundaryIntent intent) {
                _nudgeSelectedBoundary(
                  controller,
                  intent.direction * _nudgeStepMs,
                  clips.length,
                );
                return null;
              },
            ),
            _SelectRelativeClipIntent: CallbackAction<_SelectRelativeClipIntent>(
              onInvoke: (_SelectRelativeClipIntent intent) {
                _selectClipRelative(intent.delta, clips.length);
                return null;
              },
            ),
          },
          child: Focus(
            autofocus: true,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 260,
                        child: _panel(
                          context: context,
                          title: 'Source Bin',
                          child: _ProSourceBin(
                            mediaItems: widget.input?.mediaItems ?? const <MediaItem>[],
                            bgmItems: widget.input?.bgmItems ?? const <BgmItem>[],
                            activeAssetPath: selectedClip?.assetId,
                            onMediaTap: (String assetPath) {
                              final int index = clips.indexWhere((TimelineClip c) => c.assetId == assetPath);
                              if (index >= 0) {
                                setState(() {
                                  _selectedClipIndex = index;
                                });
                                _previewKey.currentState?.seekToMs(clips[index].timelineInMs);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _panel(
                          context: context,
                          title: 'Program Monitor',
                          actions: <Widget>[
                            Chip(
                              label: Text('${clips.length} clips'),
                              visualDensity: VisualDensity.compact,
                            ),
                            const SizedBox(width: 6),
                            Chip(
                              label: Text('${(totalDurationMs / 1000).toStringAsFixed(1)}s'),
                              visualDensity: VisualDensity.compact,
                            ),
                          ],
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    color: Colors.black,
                                    child: widget.input == null
                                        ? const Center(
                                            child: Text(
                                              'No source session loaded',
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          )
                                        : VideoPreview(
                                            key: _previewKey,
                                            videoPath: widget.input!.primaryVideoPath,
                                            startMs: selectedClip?.timelineInMs ?? 0,
                                            endMs: selectedClip?.timelineOutMs,
                                            onPositionChanged: (int ms) {
                                              if (_playheadMs != ms) {
                                                setState(() => _playheadMs = ms);
                                              }
                                            },
                                          ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              _ProTransportStrip(
                                selectedClipIndex: safeSelectedClipIndex,
                                selectedClip: selectedClip,
                                canMoveBoundary: clips.length > 1,
                                boundaryIndex: safeBoundaryIndex,
                                nudgeStepMs: _nudgeStepMs,
                                onNudgeStepChanged: (int value) {
                                  setState(() => _nudgeStepMs = value);
                                },
                                onNudgeLeft: clips.length <= 1
                                    ? null
                                    : () {
                                        controller.dragCutPoint(
                                          clipIndex: safeBoundaryIndex,
                                          deltaMs: -_nudgeStepMs,
                                        );
                                      },
                                onNudgeRight: clips.length <= 1
                                    ? null
                                    : () {
                                        controller.dragCutPoint(
                                          clipIndex: safeBoundaryIndex,
                                          deltaMs: _nudgeStepMs,
                                        );
                                      },
                                onBoundaryChanged: clips.length <= 1
                                    ? null
                                    : (int value) {
                                        setState(() => _selectedBoundaryClipIndex = value);
                                      },
                                boundaryCount: clips.length <= 1 ? 1 : clips.length - 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: 330,
                        child: _panel(
                          context: context,
                          title: 'Inspector',
                          child: _ProInspectorPanel(
                            clip: selectedClip,
                            selectedClipIndex: safeSelectedClipIndex,
                            targetDurationMs: state.project.targetDurationMs,
                            beatSnapEnabled: state.beatSnapEnabled,
                            beatSnapThresholdMs: state.beatSnapThresholdMs,
                            filterLabel: _filterLabel,
                            textLabel: _textPresetLabel,
                            onTargetDurationChanged: (double sec) {
                              controller.updateTargetDurationMs((sec * 1000).round());
                            },
                            onBeatSnapEnabledChanged: controller.setBeatSnapEnabled,
                            onBeatSnapThresholdChanged: (double value) {
                              controller.setBeatSnapThresholdMs(value.round());
                            },
                            onDuckingChanged: (bool value) {
                              if (selectedClip == null) return;
                              controller.updateClipOptions(
                                clipIndex: safeSelectedClipIndex,
                                audioDucking: value,
                              );
                            },
                            onFilterChanged: (ClipFilterEffect fx) {
                              controller.updateClipOptions(
                                clipIndex: safeSelectedClipIndex,
                                filterEffect: fx,
                              );
                            },
                            onTextChanged: (ClipTextPreset preset) {
                              controller.updateClipOptions(
                                clipIndex: safeSelectedClipIndex,
                                textPreset: preset,
                              );
                            },
                            onDuplicate: selectedClip == null
                                ? null
                                : () {
                                    controller.duplicateClip(safeSelectedClipIndex);
                                    setState(() {
                                      _selectedClipIndex = safeSelectedClipIndex + 1;
                                    });
                                  },
                            onRemove: (selectedClip == null || clips.length <= 1)
                                ? null
                                : () async {
                                    final bool confirmed = await _confirmRemoveClip(
                                      context,
                                      safeSelectedClipIndex,
                                    );
                                    if (!confirmed || !context.mounted) return;
                                    controller.removeClip(safeSelectedClipIndex);
                                    if (!mounted) return;
                                    setState(() {
                                      _selectedClipIndex = safeSelectedClipIndex > 0
                                          ? safeSelectedClipIndex - 1
                                          : 0;
                                    });
                                  },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  flex: 4,
                  child: _panel(
                    context: context,
                    title: 'Timeline',
                    actions: <Widget>[
                      const Tooltip(
                        message: 'Shortcuts: Del(remove), Ctrl+D(duplicate), ←/→(nudge), ↑/↓(select clip)',
                        child: Icon(Icons.keyboard, size: 18),
                      ),
                      const SizedBox(width: 8),
                      if (clips.isNotEmpty)
                        Chip(
                          label: Text(
                            'Playhead ${((_playheadMs ?? clips.first.timelineInMs) / 1000).toStringAsFixed(2)}s',
                          ),
                          visualDensity: VisualDensity.compact,
                        ),
                    ],
                    padding: const EdgeInsets.all(8),
                    child: TimelineView(
                      project: state.project,
                      selectedBoundaryClipIndex: safeBoundaryIndex,
                      selectedClipIndex: safeSelectedClipIndex,
                      lockedBoundaryIndices: state.lockedBoundaryIndices,
                      playheadMs: _playheadMs,
                      onSeekRequest: (int ms) {
                        _previewKey.currentState?.seekToMs(ms);
                      },
                      onSelectClip: (int clipIndex) {
                        setState(() {
                          _selectedClipIndex = clipIndex;
                        });
                      },
                      onSelectBoundary: (int clipIndex) {
                        setState(() {
                          _selectedBoundaryClipIndex = clipIndex;
                        });
                      },
                      onToggleBoundaryLock: controller.toggleBoundaryLock,
                      onNudgeBoundary: (int clipIndex, int deltaMs) {
                        controller.dragCutPoint(
                          clipIndex: clipIndex,
                          deltaMs: deltaMs,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => context.go('/editor-advanced?preserve=1', extra: widget.input),
                        child: const Text('Back to Advanced'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: FilledButton(
                        onPressed: () => context.go('/export', extra: widget.input),
                        child: const Text('Continue to Export'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
                ),
                if (state.loading)
                  Positioned.fill(
                    child: ColoredBox(
                      color: Colors.black.withValues(alpha: 0.25),
                      child: const Center(
                        child: CircularProgressIndicator(),
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
}

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

class _ProSourceBin extends StatelessWidget {
  const _ProSourceBin({
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
      children: <Widget>[
        Text('Media', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        ...mediaItems.map(
          (MediaItem item) {
            final bool active = item.path == activeAssetPath;
            return Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () => onMediaTap(item.path),
                child: Container(
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
                      Icon(item.isPhoto ? Icons.photo : Icons.movie),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.displayName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        Text('Soundtrack', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        ...bgmItems.map(
          (BgmItem bgm) => Container(
            margin: const EdgeInsets.only(bottom: 6),
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
                const Icon(Icons.music_note),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    bgm.displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ProTransportStrip extends StatelessWidget {
  const _ProTransportStrip({
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

class _ProInspectorPanel extends StatelessWidget {
  const _ProInspectorPanel({
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
