import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';
import '../../../core/providers/session_provider.dart';
import '../../../app/widgets/page_scaffold.dart';
import 'widgets/bgm_tile.dart';
import 'widgets/media_tile.dart';
import 'widgets/section_header.dart';

class ImportScreen extends ConsumerStatefulWidget {
  const ImportScreen({super.key});

  @override
  ConsumerState<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends ConsumerState<ImportScreen> {
  static const String _firstRunGuideSeenKey = 'first_run_guide_seen_v1';

  final List<MediaItem> _mediaItems = <MediaItem>[];
  final List<BgmItem> _bgmItems = <BgmItem>[];
  bool _bgmLoop = true;
  int _importBottomTabIndex = 0;
  int _editPaceLevel = 3;
  bool _applyDuckingToAllClips = false;
  int _minClipMs = 1200;
  int _maxClipMs = 4800;
  CanvasAspectPreset _canvasAspectPreset = CanvasAspectPreset.ratio9x16;
  ImportTransitionPreset _transitionPreset = ImportTransitionPreset.cut;
  ImportAudioMixPreset _audioMixPreset = ImportAudioMixPreset.balanced;
  ClipFilterEffect _defaultFilterEffect = ClipFilterEffect.none;
  static const Set<String> _photoExts = <String>{
    'jpg',
    'jpeg',
    'png',
    'webp',
    'bmp',
    'gif',
    'heic',
    'heif',
  };
  static const List<String> _mediaAllowedExts = <String>[
    'mp4',
    'mov',
    'm4v',
    'mkv',
    'webm',
    'avi',
    'wmv',
    'flv',
    '3gp',
    'mts',
    'm2ts',
    'jpg',
    'jpeg',
    'png',
    'webp',
    'bmp',
    'gif',
    'heic',
    'heif',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showFirstRunGuideIfNeeded();
    });
  }

  Future<void> _showFirstRunGuideIfNeeded() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool seen = prefs.getBool(_firstRunGuideSeenKey) ?? false;
    if (seen || !mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Welcome to BeatClip'),
          content: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Quick start (tablet/mobile workflow):'),
                SizedBox(height: 8),
                Text('1. Add media (video/photo) and audio tracks.'),
                Text('2. Set auto-edit pace and defaults.'),
                Text('3. Open Editor for quick clip composition.'),
                Text('4. Open Advanced Editor for timeline edits.'),
                Text('5. Open Pro Editor for desktop-level finishing.'),
                Text('6. Encode from Export screen.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Start Editing'),
            ),
          ],
        );
      },
    );

    await prefs.setBool(_firstRunGuideSeenKey, true);
  }

  Future<void> _pickMedia() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: _mediaAllowedExts,
      allowMultiple: true,
      withData: true,
    );
    if (result == null) return;
    final List<MediaItem> picked = result.files
        .map((PlatformFile f) {
          final bool isPhoto = _isPhotoFile(f);
          return MediaItem(
            path: f.path ?? (f.name.isNotEmpty ? 'web://${f.name}' : ''),
            name: f.name,
            bytes: f.bytes,
            isPhoto: isPhoto,
          );
        })
        .where((MediaItem m) => m.path.isNotEmpty)
        .toList();
    if (picked.isEmpty) return;
    setState(() => _mediaItems.addAll(picked));
  }

  bool _isPhotoFile(PlatformFile file) {
    final String ext =
        _normalizedExt(file.extension) ??
        _normalizedExt(_extFromName(file.name)) ??
        _normalizedExt(_extFromName(file.path ?? '')) ??
        '';
    return _photoExts.contains(ext);
  }

  String? _extFromName(String input) {
    final int dot = input.lastIndexOf('.');
    if (dot < 0 || dot == input.length - 1) {
      return null;
    }
    return input.substring(dot + 1);
  }

  String? _normalizedExt(String? ext) {
    if (ext == null) {
      return null;
    }
    final String cleaned = ext.trim().toLowerCase();
    if (cleaned.isEmpty) {
      return null;
    }
    return cleaned.startsWith('.') ? cleaned.substring(1) : cleaned;
  }

  Future<void> _pickAudio() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.audio,
      allowMultiple: true,
      withData: true,
    );
    if (result == null) return;
    final List<BgmItem> picked = result.files
        .map(
          (PlatformFile f) => BgmItem(
            path: f.path ?? (f.name.isNotEmpty ? 'web://${f.name}' : ''),
            name: f.name,
            bytes: f.bytes,
          ),
        )
        .where((BgmItem b) => b.path.isNotEmpty)
        .toList();
    if (picked.isEmpty) return;
    setState(() => _bgmItems.addAll(picked));
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
        return ColorFilter.mode(Colors.orange.withValues(alpha: 0.22), BlendMode.softLight);
      case ClipFilterEffect.cool:
        return ColorFilter.mode(Colors.blue.withValues(alpha: 0.2), BlendMode.softLight);
      case ClipFilterEffect.cinematic:
        return ColorFilter.mode(Colors.teal.withValues(alpha: 0.24), BlendMode.multiply);
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

  Future<void> _confirmAndOpenEditor() async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Open Editor (Clip)?'),
          content: const Text(
            'You can still tweak these options in Editor (Clip), but Import screen settings are not persisted.\n\n'
            'If you come back to Import later, values may be reset.',
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
    if (confirmed != true || !mounted) return;

    final EditorSessionInput session = EditorSessionInput(
      mediaItems: List<MediaItem>.unmodifiable(_mediaItems),
      bgmItems: List<BgmItem>.unmodifiable(_bgmItems),
      bgmLoop: _bgmLoop,
      editPaceLevel: _editPaceLevel,
      applyDuckingToAllClips: _applyDuckingToAllClips,
      minClipMs: _minClipMs,
      maxClipMs: _maxClipMs,
      canvasAspectPreset: _canvasAspectPreset,
      transitionPreset: _transitionPreset,
      audioMixPreset: _audioMixPreset,
      defaultFilterEffect: _defaultFilterEffect,
    );
    ref.read(currentSessionProvider.notifier).setSession(session);
    context.go('/editor', extra: session);
  }

  @override
  Widget build(BuildContext context) {
    final bool canProceed = _mediaItems.isNotEmpty && _bgmItems.isNotEmpty;
    final bool mediaTab = _importBottomTabIndex == 0;

    return PageScaffold(
      activeRoute: '/import',
      title: 'BeatClip - Import',
      bottomNavigationBar: NavigationBar(
        selectedIndex: _importBottomTabIndex,
        onDestinationSelected: (int index) {
          setState(() => _importBottomTabIndex = index);
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.perm_media_outlined), label: 'Media Import'),
          NavigationDestination(icon: Icon(Icons.tune), label: 'Auto Edit Settings'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mediaTab
                  ? 'Media Import tab: add source media and required BGM for beat-sync.'
                  : 'Auto Edit Settings tab: set defaults before opening editor.',
            ),
            const SizedBox(height: 12),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (mediaTab) ...<Widget>[
                      ImportSectionHeader(
                        title: 'Source Media',
                        badge: _mediaItems.isNotEmpty ? '${_mediaItems.length}' : null,
                      ),
                      const SizedBox(height: 8),
                      if (_mediaItems.isNotEmpty) ...<Widget>[
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 176,
                            mainAxisExtent: 166,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: _mediaItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            final MediaItem item = _mediaItems[index];
                            return ImportMediaTile(
                              index: index,
                              item: item,
                              onRemove: () => setState(() => _mediaItems.removeAt(index)),
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                      ],
                      Text(
                        'Tip: tap × on each card to remove it.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 6),
                      OutlinedButton.icon(
                        onPressed: _pickMedia,
                        icon: const Icon(Icons.perm_media_outlined),
                        label: const Text('Add Media'),
                      ),
                      const SizedBox(height: 24),
                      ImportSectionHeader(
                        title: 'BGM / Audio',
                        badge: _bgmItems.isNotEmpty ? '${_bgmItems.length}' : null,
                      ),
                      const SizedBox(height: 8),
                      if (_bgmItems.isNotEmpty) ...<Widget>[
                        Column(
                          children: List<Widget>.generate(_bgmItems.length, (int index) {
                            final BgmItem item = _bgmItems[index];
                            return ImportBgmTile(
                              key: ObjectKey(item),
                              index: index,
                              item: item,
                              onRemove: () => setState(() => _bgmItems.removeAt(index)),
                            );
                          }),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            const Text('BGM mode:'),
                            const SizedBox(width: 8),
                            ChoiceChip(
                              label: const Text('Loop'),
                              selected: _bgmLoop,
                              onSelected: (_) => setState(() => _bgmLoop = true),
                            ),
                            const SizedBox(width: 6),
                            ChoiceChip(
                              label: const Text('Chain tracks'),
                              selected: !_bgmLoop,
                              onSelected: (_) => setState(() => _bgmLoop = false),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                      OutlinedButton.icon(
                        onPressed: _pickAudio,
                        icon: const Icon(Icons.music_note_outlined),
                        label: const Text('Add Audio'),
                      ),
                      if (_bgmItems.isEmpty) const Padding(padding: EdgeInsets.only(top: 6)),
                    ] else ...<Widget>[
                      const ImportSectionHeader(title: 'Edit Defaults'),
                      const SizedBox(height: 8),
                      Text('Editing pace: ${_editPaceLabel(_editPaceLevel)}'),
                      Slider(
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: _editPaceLabel(_editPaceLevel),
                        value: _editPaceLevel.toDouble(),
                        onChanged: (double value) {
                          setState(() => _editPaceLevel = value.round());
                        },
                      ),
                      SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Apply audio ducking to all clips'),
                        subtitle: const Text('You can still change per clip in editor'),
                        value: _applyDuckingToAllClips,
                        onChanged: (bool value) {
                          setState(() => _applyDuckingToAllClips = value);
                        },
                      ),
                      const SizedBox(height: 8),
                      Text('Clip duration range: ${_minClipMs}ms - ${_maxClipMs}ms'),
                      Slider(
                        min: 400,
                        max: 3000,
                        divisions: 26,
                        label: '${_minClipMs}ms',
                        value: _minClipMs.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            _minClipMs = value.round();
                            if (_maxClipMs < _minClipMs) _maxClipMs = _minClipMs;
                          });
                        },
                      ),
                      Slider(
                        min: 1200,
                        max: 10000,
                        divisions: 44,
                        label: '${_maxClipMs}ms',
                        value: _maxClipMs.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            _maxClipMs = value.round();
                            if (_maxClipMs < _minClipMs) _minClipMs = _maxClipMs;
                          });
                        },
                      ),
                      const SizedBox(height: 8),
                      Text('Canvas ratio: ${_aspectLabel(_canvasAspectPreset)}'),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: CanvasAspectPreset.values
                            .map(
                              (CanvasAspectPreset value) => ChoiceChip(
                                label: Text(_aspectLabel(value)),
                                selected: _canvasAspectPreset == value,
                                onSelected: (_) {
                                  setState(() => _canvasAspectPreset = value);
                                },
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 8),
                      Text('Transition default: ${_transitionLabel(_transitionPreset)}'),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ImportTransitionPreset.values
                            .map(
                              (ImportTransitionPreset value) => ChoiceChip(
                                label: Text(_transitionLabel(value)),
                                selected: _transitionPreset == value,
                                onSelected: (_) {
                                  setState(() => _transitionPreset = value);
                                },
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 8),
                      Text('Audio mix: ${_audioMixLabel(_audioMixPreset)}'),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ImportAudioMixPreset.values
                            .map(
                              (ImportAudioMixPreset value) => ChoiceChip(
                                label: Text(_audioMixLabel(value)),
                                selected: _audioMixPreset == value,
                                onSelected: (_) {
                                  setState(() => _audioMixPreset = value);
                                },
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 8),
                      Text('Default filter: ${_filterLabel(_defaultFilterEffect)}'),
                      const SizedBox(height: 6),
                      Text('Filter preview examples', style: Theme.of(context).textTheme.bodySmall),
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
                            final bool selected = _defaultFilterEffect == value;
                            final ColorFilter? cf = _previewColorFilter(value);
                            return InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                setState(() => _defaultFilterEffect = value);
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
                                          colorFilter:
                                              cf ??
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
                                    Text(_filterLabel(value), style: const TextStyle(fontSize: 11)),
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
                                selected: _defaultFilterEffect == value,
                                onSelected: (_) {
                                  setState(() => _defaultFilterEffect = value);
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: canProceed ? _confirmAndOpenEditor : null,
                child: const Text('Analyze & Open Editor'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
