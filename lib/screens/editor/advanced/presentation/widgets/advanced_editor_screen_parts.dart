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

class _TogglePlaybackIntent extends Intent {
  const _TogglePlaybackIntent();
}

typedef _ApplyTextOverlay = void Function({
  required ClipTextPreset preset,
  required String textPrimary,
  required String textSecondary,
  required double textScale,
  required ClipTextTheme textTheme,
});

String _textThemeLabel(ClipTextTheme theme) {
  return switch (theme) {
    ClipTextTheme.clean => 'Clean',
    ClipTextTheme.warm => 'Warm',
    ClipTextTheme.ocean => 'Ocean',
    ClipTextTheme.punch => 'Punch',
  };
}

({String primary, String secondary}) _textTemplateForPreset(
  ClipTextPreset preset,
) {
  return switch (preset) {
    ClipTextPreset.none => (primary: '', secondary: ''),
    ClipTextPreset.titleCard => (
        primary: 'New Chapter',
        secondary: 'Add a subtitle',
      ),
    ClipTextPreset.lowerThird => (
        primary: 'Speaker Name',
        secondary: 'Role or topic',
      ),
    ClipTextPreset.caption => (
        primary: 'Add a punchy caption',
        secondary: '',
      ),
  };
}

ClipTextTheme _defaultThemeForPreset(ClipTextPreset preset) {
  return switch (preset) {
    ClipTextPreset.none => ClipTextTheme.clean,
    ClipTextPreset.titleCard => ClipTextTheme.warm,
    ClipTextPreset.lowerThird => ClipTextTheme.ocean,
    ClipTextPreset.caption => ClipTextTheme.punch,
  };
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
    required this.onOpenTextComposer,
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
  final VoidCallback? onOpenTextComposer;
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.text_fields, size: 18),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          clip!.hasTextOverlay
                              ? clip!.textPrimary
                              : 'No overlay copy yet. Open composer to add a title or caption.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  if (clip!.hasTextOverlay && clip!.textSecondary.trim().isNotEmpty) ...<Widget>[
                    const SizedBox(height: 4),
                    Text(
                      clip!.textSecondary,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.tonalIcon(
                      onPressed: onOpenTextComposer,
                      icon: const Icon(Icons.edit_note),
                      label: Text(
                        clip!.hasTextOverlay
                            ? 'Edit Overlay Copy'
                            : 'Compose Text Overlay',
                      ),
                    ),
                  ),
                ],
              ),
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

class _TextOverlayComposer extends StatefulWidget {
  const _TextOverlayComposer({
    required this.clip,
    required this.textLabel,
    required this.onApply,
  });

  final TimelineClip clip;
  final String Function(ClipTextPreset) textLabel;
  final _ApplyTextOverlay onApply;

  @override
  State<_TextOverlayComposer> createState() => _TextOverlayComposerState();
}

class _TextOverlayComposerState extends State<_TextOverlayComposer> {
  late final TextEditingController _primaryController;
  late final TextEditingController _secondaryController;
  late ClipTextPreset _preset;
  late ClipTextTheme _theme;
  late double _scale;

  @override
  void initState() {
    super.initState();
    _primaryController = TextEditingController(text: widget.clip.textPrimary)
      ..addListener(_handleDraftChanged);
    _secondaryController = TextEditingController(text: widget.clip.textSecondary)
      ..addListener(_handleDraftChanged);
    _preset = widget.clip.textPreset == ClipTextPreset.none
        ? ClipTextPreset.titleCard
        : widget.clip.textPreset;
    _theme = widget.clip.textTheme == ClipTextTheme.clean && !widget.clip.hasTextOverlay
        ? _defaultThemeForPreset(_preset)
        : widget.clip.textTheme;
    _scale = widget.clip.textScale.clamp(0.8, 1.6).toDouble();

    if (_primaryController.text.trim().isEmpty &&
        _secondaryController.text.trim().isEmpty) {
      final ({String primary, String secondary}) template = _textTemplateForPreset(_preset);
      _primaryController.text = template.primary;
      _secondaryController.text = template.secondary;
    }
  }

  @override
  void dispose() {
    _primaryController
      ..removeListener(_handleDraftChanged)
      ..dispose();
    _secondaryController
      ..removeListener(_handleDraftChanged)
      ..dispose();
    super.dispose();
  }

  void _handleDraftChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  void _setPreset(ClipTextPreset preset) {
    setState(() {
      _preset = preset;
      if (_primaryController.text.trim().isEmpty &&
          _secondaryController.text.trim().isEmpty) {
        final ({String primary, String secondary}) template = _textTemplateForPreset(preset);
        _primaryController.text = template.primary;
        _secondaryController.text = template.secondary;
      }
      if (_theme == ClipTextTheme.clean) {
        _theme = _defaultThemeForPreset(preset);
      }
    });
  }

  void _applyTemplate({
    required ClipTextPreset preset,
    required String primary,
    required String secondary,
  }) {
    setState(() {
      _preset = preset;
      _theme = _defaultThemeForPreset(preset);
      _primaryController.text = primary;
      _secondaryController.text = secondary;
    });
  }

  TimelineClip get _previewClip => widget.clip.copyWith(
        textPreset: _preset,
        textPrimary: _primaryController.text.trim(),
        textSecondary: _secondaryController.text.trim(),
        textScale: _scale,
        textTheme: _theme,
      );

  void _saveOverlay() {
    widget.onApply(
      preset: _preset,
      textPrimary: _primaryController.text.trim(),
      textSecondary: _secondaryController.text.trim(),
      textScale: _scale,
      textTheme: _theme,
    );
    Navigator.of(context).pop();
  }

  void _hideOverlay() {
    widget.onApply(
      preset: ClipTextPreset.none,
      textPrimary: _primaryController.text.trim(),
      textSecondary: _secondaryController.text.trim(),
      textScale: _scale,
      textTheme: _theme,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Text Overlay', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 6),
          Text(
            'Compose a title card, lower third, or caption directly on the selected clip.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 14),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF141B2D),
                    Color(0xFF2A314D),
                    Color(0xFF0B1220),
                  ],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: _ClipTextOverlay(
                  clip: _previewClip,
                  compact: true,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('Layout', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: ClipTextPreset.values
                .where((ClipTextPreset preset) => preset != ClipTextPreset.none)
                .map(
                  (ClipTextPreset preset) => ChoiceChip(
                    label: Text(widget.textLabel(preset)),
                    selected: _preset == preset,
                    onSelected: (_) => _setPreset(preset),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Text('Quick Starts', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              ActionChip(
                avatar: const Icon(Icons.play_circle_fill, size: 18),
                label: const Text('Intro'),
                onPressed: () => _applyTemplate(
                  preset: ClipTextPreset.titleCard,
                  primary: 'New Chapter',
                  secondary: 'Tell them what this section is about',
                ),
              ),
              ActionChip(
                avatar: const Icon(Icons.person_pin, size: 18),
                label: const Text('Name Tag'),
                onPressed: () => _applyTemplate(
                  preset: ClipTextPreset.lowerThird,
                  primary: 'Speaker Name',
                  secondary: 'Role or key topic',
                ),
              ),
              ActionChip(
                avatar: const Icon(Icons.campaign, size: 18),
                label: const Text('Hook'),
                onPressed: () => _applyTemplate(
                  preset: ClipTextPreset.caption,
                  primary: 'This is the line that should stop the scroll.',
                  secondary: '',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _primaryController,
            maxLength: _preset == ClipTextPreset.caption ? 72 : 48,
            maxLines: _preset == ClipTextPreset.caption ? 3 : 2,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: _preset == ClipTextPreset.caption ? 'Caption copy' : 'Primary text',
              hintText: _preset == ClipTextPreset.lowerThird
                  ? 'Speaker Name'
                  : _preset == ClipTextPreset.titleCard
                      ? 'Main title'
                      : 'Write the key line',
              border: const OutlineInputBorder(),
            ),
          ),
          if (_preset != ClipTextPreset.caption) ...<Widget>[
            const SizedBox(height: 12),
            TextField(
              controller: _secondaryController,
              maxLength: 56,
              maxLines: 2,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Secondary text',
                hintText: 'Subtitle, role, or context',
                border: OutlineInputBorder(),
              ),
            ),
          ],
          const SizedBox(height: 16),
          Text('Color Theme', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: ClipTextTheme.values
                .map(
                  (ClipTextTheme theme) => ChoiceChip(
                    label: Text(_textThemeLabel(theme)),
                    selected: _theme == theme,
                    onSelected: (_) => setState(() => _theme = theme),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Text(
            'Scale ${(100 * _scale).round()}%',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Slider(
            min: 0.8,
            max: 1.6,
            divisions: 8,
            value: _scale,
            onChanged: (double value) => setState(() => _scale = value),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _hideOverlay,
                  icon: const Icon(Icons.visibility_off),
                  label: const Text('Hide Text'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton.icon(
                  onPressed: _saveOverlay,
                  icon: const Icon(Icons.check),
                  label: const Text('Apply Overlay'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ClipTextOverlay extends StatelessWidget {
  const _ClipTextOverlay({
    required this.clip,
    this.compact = false,
  });

  final TimelineClip clip;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    if (!clip.hasTextOverlay) {
      return const SizedBox.shrink();
    }

    final ({Color foreground, Color secondary, Color accent, Color surface}) palette =
        _paletteFor(clip.textTheme);
    final double scale = clip.textScale * (compact ? 0.92 : 1.0);
    final String secondaryText = clip.textSecondary.trim();

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black.withValues(alpha: clip.textPreset == ClipTextPreset.titleCard ? 0.16 : 0.04),
            Colors.black.withValues(alpha: clip.textPreset == ClipTextPreset.caption ? 0.26 : 0.18),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(compact ? 16 : 22),
        child: switch (clip.textPreset) {
          ClipTextPreset.none => const SizedBox.shrink(),
          ClipTextPreset.titleCard => Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: compact ? 260 : 420),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 56,
                      height: 4,
                      decoration: BoxDecoration(
                        color: palette.accent,
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                    SizedBox(height: 14 * scale),
                    AutoSizeText(
                      clip.textPrimary,
                      maxLines: 3,
                      minFontSize: 16,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: palette.foreground,
                        fontSize: 30 * scale,
                        fontWeight: FontWeight.w800,
                        height: 1.05,
                        letterSpacing: 0.2,
                        shadows: <Shadow>[
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.35),
                            blurRadius: 18,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                    ),
                    if (secondaryText.isNotEmpty) ...<Widget>[
                      SizedBox(height: 10 * scale),
                      AutoSizeText(
                        secondaryText,
                        maxLines: 2,
                        minFontSize: 12,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: palette.secondary,
                          fontSize: 14 * scale,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.3,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ClipTextPreset.lowerThird => Align(
              alignment: Alignment.bottomLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: compact ? 260 : 420),
                child: Container(
                  padding: EdgeInsets.fromLTRB(14, 12, 16, 12 + (compact ? 0 : 2)),
                  decoration: BoxDecoration(
                    color: palette.surface.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: palette.accent.withValues(alpha: 0.7),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.18),
                        blurRadius: 24,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 4,
                        height: 48 * scale,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: palette.accent,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AutoSizeText(
                              clip.textPrimary,
                              maxLines: 2,
                              minFontSize: 15,
                              style: TextStyle(
                                color: palette.foreground,
                                fontSize: 20 * scale,
                                fontWeight: FontWeight.w800,
                                height: 1.05,
                              ),
                            ),
                            if (secondaryText.isNotEmpty) ...<Widget>[
                              SizedBox(height: 4 * scale),
                              AutoSizeText(
                                secondaryText,
                                maxLines: 2,
                                minFontSize: 11,
                                style: TextStyle(
                                  color: palette.secondary,
                                  fontSize: 12.5 * scale,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ClipTextPreset.caption => Align(
              alignment: Alignment.bottomCenter,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: compact ? 280 : 520),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18 * scale,
                    vertical: 10 * scale,
                  ),
                  decoration: BoxDecoration(
                    color: palette.surface.withValues(alpha: 0.88),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: palette.accent.withValues(alpha: 0.65),
                    ),
                  ),
                  child: AutoSizeText(
                    clip.textPrimary,
                    maxLines: 3,
                    minFontSize: 14,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: palette.foreground,
                      fontSize: 18 * scale,
                      fontWeight: FontWeight.w800,
                      height: 1.15,
                    ),
                  ),
                ),
              ),
            ),
        },
      ),
    );
  }

  ({Color foreground, Color secondary, Color accent, Color surface}) _paletteFor(
    ClipTextTheme theme,
  ) {
    return switch (theme) {
      ClipTextTheme.clean => (
          foreground: Colors.white,
          secondary: const Color(0xFFE6EEF8),
          accent: const Color(0xFF75B7FF),
          surface: const Color(0xCC0C1624),
        ),
      ClipTextTheme.warm => (
          foreground: const Color(0xFFFFF6E5),
          secondary: const Color(0xFFFFD8A8),
          accent: const Color(0xFFFFB454),
          surface: const Color(0xCC281A0F),
        ),
      ClipTextTheme.ocean => (
          foreground: const Color(0xFFF4FEFF),
          secondary: const Color(0xFFBDEBF2),
          accent: const Color(0xFF4FD1C5),
          surface: const Color(0xCC10252B),
        ),
      ClipTextTheme.punch => (
          foreground: Colors.white,
          secondary: const Color(0xFFFFD6DE),
          accent: const Color(0xFFFF5E7A),
          surface: const Color(0xCC220D14),
        ),
    };
  }
}
