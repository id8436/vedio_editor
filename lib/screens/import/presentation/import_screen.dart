import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/models/import_media_item.dart';
import '../../../core/models/timeline_models.dart';
import '../../../core/providers/session_provider.dart';
import '../../../app/widgets/page_scaffold.dart';
import 'widgets/auto_edit_settings_panel.dart';
import 'widgets/bgm_tile.dart';
import 'widgets/bgm_offset_sheet.dart';
import 'widgets/media_tile.dart';
import 'widgets/section_header.dart';

class ImportScreen extends ConsumerStatefulWidget {
  const ImportScreen({super.key});

  @override
  ConsumerState<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends ConsumerState<ImportScreen> {
  static const String _firstRunGuideSeenKey = 'first_run_guide_seen_v1';
  static const String _editPaceLevelKey = 'import_edit_pace_level_v1';
  static const String _applyDuckingKey = 'import_apply_ducking_v1';
  static const String _minClipMsKey = 'import_min_clip_ms_v1';
  static const String _maxClipMsKey = 'import_max_clip_ms_v1';
  static const String _canvasAspectKey = 'import_canvas_aspect_v1';
  static const String _transitionPresetKey = 'import_transition_preset_v1';
  static const String _audioMixPresetKey = 'import_audio_mix_preset_v1';
  static const String _defaultFilterKey = 'import_default_filter_v1';

  final List<MediaItem> _mediaItems = <MediaItem>[];
  final List<BgmItem> _bgmItems = <BgmItem>[];
  Timer? _persistSettingsTimer;
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
    _loadSavedImportSettings();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showFirstRunGuideIfNeeded();
    });
  }

  @override
  void dispose() {
    _persistSettingsTimer?.cancel();
    unawaited(_persistImportSettings());
    super.dispose();
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

  Future<void> _loadSavedImportSettings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int savedEditPaceLevel = (prefs.getInt(_editPaceLevelKey) ?? _editPaceLevel)
        .clamp(1, 5);
    final int savedMinClipMs = (prefs.getInt(_minClipMsKey) ?? _minClipMs)
        .clamp(400, 3000);
    final int savedMaxClipMsRaw = (prefs.getInt(_maxClipMsKey) ?? _maxClipMs)
        .clamp(1200, 10000);
    final int savedMaxClipMs =
        savedMaxClipMsRaw < savedMinClipMs ? savedMinClipMs : savedMaxClipMsRaw;

    if (!mounted) {
      return;
    }

    setState(() {
      _editPaceLevel = savedEditPaceLevel;
      _applyDuckingToAllClips = prefs.getBool(_applyDuckingKey) ?? _applyDuckingToAllClips;
      _minClipMs = savedMinClipMs;
      _maxClipMs = savedMaxClipMs;
      _canvasAspectPreset = _enumByName(
        CanvasAspectPreset.values,
        prefs.getString(_canvasAspectKey),
        CanvasAspectPreset.ratio9x16,
      );
      _transitionPreset = _enumByName(
        ImportTransitionPreset.values,
        prefs.getString(_transitionPresetKey),
        ImportTransitionPreset.cut,
      );
      _audioMixPreset = _enumByName(
        ImportAudioMixPreset.values,
        prefs.getString(_audioMixPresetKey),
        ImportAudioMixPreset.balanced,
      );
      _defaultFilterEffect = _enumByName(
        ClipFilterEffect.values,
        prefs.getString(_defaultFilterKey),
        ClipFilterEffect.none,
      );
    });
  }

  Future<void> _persistImportSettings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_editPaceLevelKey, _editPaceLevel);
    await prefs.setBool(_applyDuckingKey, _applyDuckingToAllClips);
    await prefs.setInt(_minClipMsKey, _minClipMs);
    await prefs.setInt(_maxClipMsKey, _maxClipMs);
    await prefs.setString(_canvasAspectKey, _canvasAspectPreset.name);
    await prefs.setString(_transitionPresetKey, _transitionPreset.name);
    await prefs.setString(_audioMixPresetKey, _audioMixPreset.name);
    await prefs.setString(_defaultFilterKey, _defaultFilterEffect.name);
  }

  void _schedulePersistImportSettings() {
    _persistSettingsTimer?.cancel();
    _persistSettingsTimer = Timer(const Duration(milliseconds: 250), () {
      unawaited(_persistImportSettings());
    });
  }

  T _enumByName<T extends Enum>(List<T> values, String? rawName, T fallback) {
    if (rawName == null || rawName.isEmpty) {
      return fallback;
    }
    for (final T value in values) {
      if (value.name == rawName) {
        return value;
      }
    }
    return fallback;
  }

  void _updateEditPaceLevel(int value) {
    final int safeValue = value.clamp(1, 5);
    setState(() => _editPaceLevel = safeValue);
    _schedulePersistImportSettings();
  }

  void _updateApplyDuckingToAllClips(bool value) {
    setState(() => _applyDuckingToAllClips = value);
    _schedulePersistImportSettings();
  }

  void _updateMinClipMs(int value) {
    final int safeValue = value.clamp(400, 3000);
    setState(() {
      _minClipMs = safeValue;
      if (_maxClipMs < _minClipMs) {
        _maxClipMs = _minClipMs;
      }
    });
    _schedulePersistImportSettings();
  }

  void _updateMaxClipMs(int value) {
    final int safeValue = value.clamp(1200, 10000);
    setState(() {
      _maxClipMs = safeValue;
      if (_maxClipMs < _minClipMs) {
        _minClipMs = _maxClipMs;
      }
    });
    _schedulePersistImportSettings();
  }

  void _updateCanvasAspectPreset(CanvasAspectPreset value) {
    setState(() => _canvasAspectPreset = value);
    _schedulePersistImportSettings();
  }

  void _updateTransitionPreset(ImportTransitionPreset value) {
    setState(() => _transitionPreset = value);
    _schedulePersistImportSettings();
  }

  void _updateAudioMixPreset(ImportAudioMixPreset value) {
    setState(() => _audioMixPreset = value);
    _schedulePersistImportSettings();
  }

  void _updateDefaultFilterEffect(ClipFilterEffect value) {
    setState(() => _defaultFilterEffect = value);
    _schedulePersistImportSettings();
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
      // Web file picker returns reverse order vs Windows file dialog listing.
      final List<MediaItem> ordered =
        kIsWeb ? picked.reversed.toList() : picked;
      setState(() => _mediaItems.addAll(ordered));
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
      // Web file picker returns reverse order vs Windows file dialog listing.
      final List<BgmItem> ordered =
        kIsWeb ? picked.reversed.toList() : picked;
      setState(() => _bgmItems.addAll(ordered));
  }

  void _moveMediaItem(int fromIndex, int toIndex) {
    if (_mediaItems.length < 2 || fromIndex == toIndex) {
      return;
    }
    final int safeFrom = fromIndex.clamp(0, _mediaItems.length - 1);
    final int safeTo = toIndex.clamp(0, _mediaItems.length - 1);
    if (safeFrom == safeTo) {
      return;
    }
    setState(() {
      final MediaItem item = _mediaItems.removeAt(safeFrom);
      final int insertIndex = safeFrom < safeTo ? safeTo - 1 : safeTo;
      _mediaItems.insert(insertIndex, item);
    });
  }

  void _moveBgmItem(int fromIndex, int toIndex) {
    if (_bgmItems.length < 2 || fromIndex == toIndex) {
      return;
    }
    final int safeFrom = fromIndex.clamp(0, _bgmItems.length - 1);
    final int safeTo = toIndex.clamp(0, _bgmItems.length - 1);
    if (safeFrom == safeTo) {
      return;
    }
    setState(() {
      final BgmItem item = _bgmItems.removeAt(safeFrom);
      final int insertIndex = safeFrom < safeTo ? safeTo - 1 : safeTo;
      _bgmItems.insert(insertIndex, item);
    });
  }

  Future<void> _editBgmItem(int index) async {
    if (index < 0 || index >= _bgmItems.length) {
      return;
    }

    final BgmItem current = _bgmItems[index];
    final BgmItem? updated = await showModalBottomSheet<BgmItem>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.86,
          child: ImportBgmOffsetSheet(item: current),
        );
      },
    );

    if (!mounted || updated == null) {
      return;
    }

    setState(() {
      _bgmItems[index] = updated;
    });
  }

  Future<void> _confirmAndOpenEditor() async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Open Editor (Clip)?'),
          content: const Text(
            'You can still tweak these options in Editor (Clip).\n\n'
            'These Import defaults are saved locally for the next time you open the app.',
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
                            final Widget tile = ImportMediaTile(
                              key: ValueKey(item.path),
                              index: index,
                              item: item,
                              onRemove: () => setState(() => _mediaItems.removeAt(index)),
                            );
                            return DragTarget<int>(
                              onWillAcceptWithDetails: (DragTargetDetails<int> details) {
                                return details.data != index;
                              },
                              onAcceptWithDetails: (DragTargetDetails<int> details) {
                                _moveMediaItem(details.data, index);
                              },
                              builder: (
                                BuildContext context,
                                List<int?> candidateData,
                                List<dynamic> rejectedData,
                              ) {
                                final Widget decorated = candidateData.isNotEmpty
                                    ? Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Theme.of(context).colorScheme.primary,
                                            width: 2,
                                          ),
                                        ),
                                        child: tile,
                                      )
                                    : tile;
                                return LongPressDraggable<int>(
                                  data: index,
                                  feedback: Material(
                                    elevation: 6,
                                    color: Colors.transparent,
                                    child: SizedBox(
                                      width: 160,
                                      child: IgnorePointer(
                                        child: ImportMediaTile(
                                          index: index,
                                          item: item,
                                          onRemove: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Opacity(
                                    opacity: 0.4,
                                    child: decorated,
                                  ),
                                  child: decorated,
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                      ],
                      Text(
                        'Tip: long-press and drag to reorder; tap × to remove.',
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
                            final Widget tile = ImportBgmTile(
                              key: ValueKey(item.path),
                              index: index,
                              item: item,
                              onTap: () => _editBgmItem(index),
                              onRemove: () => setState(() => _bgmItems.removeAt(index)),
                            );
                            return DragTarget<int>(
                              onWillAcceptWithDetails: (DragTargetDetails<int> details) {
                                return details.data != index;
                              },
                              onAcceptWithDetails: (DragTargetDetails<int> details) {
                                _moveBgmItem(details.data, index);
                              },
                              builder: (
                                BuildContext context,
                                List<int?> candidateData,
                                List<dynamic> rejectedData,
                              ) {
                                final Widget decorated = candidateData.isNotEmpty
                                    ? Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Theme.of(context).colorScheme.primary,
                                            width: 2,
                                          ),
                                        ),
                                        child: tile,
                                      )
                                    : tile;
                                return LongPressDraggable<int>(
                                  data: index,
                                  feedback: Material(
                                    elevation: 6,
                                    color: Colors.transparent,
                                    child: IgnorePointer(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          minWidth: 240,
                                          maxWidth: 360,
                                        ),
                                        child: ImportBgmTile(
                                          index: index,
                                          item: item,
                                          onTap: null,
                                          onRemove: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Opacity(
                                    opacity: 0.4,
                                    child: decorated,
                                  ),
                                  child: decorated,
                                );
                              },
                            );
                          }),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Tip: tap a track to set its start point; long-press and drag to reorder.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          _bgmItems.length <= 1
                              ? 'Single BGM tracks repeat automatically when the edit runs longer.'
                              : 'Multiple BGM tracks play in order and repeat automatically if the edit runs longer.',
                          style: Theme.of(context).textTheme.bodySmall,
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
                      ImportAutoEditSettingsPanel(
                        editPaceLevel: _editPaceLevel,
                        applyDuckingToAllClips: _applyDuckingToAllClips,
                        minClipMs: _minClipMs,
                        maxClipMs: _maxClipMs,
                        canvasAspectPreset: _canvasAspectPreset,
                        transitionPreset: _transitionPreset,
                        audioMixPreset: _audioMixPreset,
                        defaultFilterEffect: _defaultFilterEffect,
                        onEditPaceLevelChanged: _updateEditPaceLevel,
                        onApplyDuckingChanged: _updateApplyDuckingToAllClips,
                        onMinClipMsChanged: _updateMinClipMs,
                        onMaxClipMsChanged: _updateMaxClipMs,
                        onCanvasAspectChanged: _updateCanvasAspectPreset,
                        onTransitionPresetChanged: _updateTransitionPreset,
                        onAudioMixPresetChanged: _updateAudioMixPreset,
                        onDefaultFilterEffectChanged: _updateDefaultFilterEffect,
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
