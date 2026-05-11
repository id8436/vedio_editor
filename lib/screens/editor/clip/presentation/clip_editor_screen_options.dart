part of 'clip_editor_screen.dart';

extension _ClipEditorOptions on _ClipEditorScreenState {
  Future<void> openOptionSheet({
    required _ClipOptionTab tab,
    required TimelineClip clip,
    required int clipIndex,
    required EditorState state,
    required EditorController controller,
  }) async {
    final List<Widget> tabContent = switch (tab) {
      _ClipOptionTab.audio => _buildAudioTabContent(
        controller,
        clipIndex,
        clip,
      ),
      _ClipOptionTab.filter => _buildFilterTabContent(
        controller,
        clipIndex,
        clip,
      ),
      _ClipOptionTab.text => _buildTextTabContent(controller, clipIndex, clip),
      _ClipOptionTab.timing => _buildTimingTabContent(
        controller,
        clipIndex,
        clip,
        state,
      ),
    };

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              14,
              8,
              14,
              MediaQuery.of(context).viewInsets.bottom + 12,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(switch (tab) {
                      _ClipOptionTab.audio => 'Audio',
                      _ClipOptionTab.filter => 'Filter',
                      _ClipOptionTab.text => 'Text',
                      _ClipOptionTab.timing => 'Timing',
                    }, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 10),
                    ...tabContent,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildAudioTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Audio ducking'),
        subtitle: const Text('Lower BGM while this clip is playing'),
        value: clip.audioDucking,
        onChanged: (bool value) {
          controller.updateClipOptions(
            clipIndex: clipIndex,
            audioDucking: value,
          );
          _refreshUi();
        },
      ),
    ];
  }

  List<Widget> _buildFilterTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: ClipFilterEffect.values
            .map(
              (ClipFilterEffect fx) => ChoiceChip(
                label: Text(_filterLabel(fx)),
                selected: clip.filterEffect == fx,
                onSelected: (_) {
                  controller.updateClipOptions(
                    clipIndex: clipIndex,
                    filterEffect: fx,
                  );
                  _refreshUi();
                },
              ),
            )
            .toList(),
      ),
    ];
  }

  List<Widget> _buildTextTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
  ) {
    return <Widget>[
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: ClipTextPreset.values
            .map(
              (ClipTextPreset preset) => ChoiceChip(
                label: Text(_textPresetLabel(preset)),
                selected: clip.textPreset == preset,
                onSelected: (_) {
                  controller.updateClipOptions(
                    clipIndex: clipIndex,
                    textPreset: preset,
                  );
                  _refreshUi();
                },
              ),
            )
            .toList(),
      ),
    ];
  }

  List<Widget> _buildTimingTabContent(
    EditorController controller,
    int clipIndex,
    TimelineClip clip,
    EditorState state,
  ) {
    return <Widget>[
      Text(
        'Target duration: ${(state.project.targetDurationMs / 1000).toStringAsFixed(0)}s',
      ),
      Slider(
        min: 5,
        max: 120,
        divisions: 115,
        value: state.project.targetDurationMs / 1000,
        onChanged: (double sec) {
          controller.updateTargetDurationMs((sec * 1000).round());
          _refreshUi();
        },
      ),
      Row(
        children: <Widget>[
          const Text('Beat snap'),
          const SizedBox(width: 8),
          Switch(
            value: state.beatSnapEnabled,
            onChanged: (bool value) {
              controller.setBeatSnapEnabled(value);
              _refreshUi();
            },
          ),
          Text('threshold ${state.beatSnapThresholdMs}ms'),
        ],
      ),
      Slider(
        min: 20,
        max: 400,
        divisions: 38,
        value: state.beatSnapThresholdMs.toDouble(),
        onChanged: state.beatSnapEnabled
            ? (double value) {
                controller.setBeatSnapThresholdMs(value.round());
                _refreshUi();
              }
            : null,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: TextButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
            context.go('/editor-advanced?preserve=1', extra: widget.input);
          },
          icon: const Icon(Icons.tune),
          label: const Text('Open Advanced Editor'),
        ),
      ),
    ];
  }
}
