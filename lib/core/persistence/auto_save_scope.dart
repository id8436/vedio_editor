import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/editor_session_input.dart';
import '../providers/project_meta_provider.dart';
import '../providers/project_persistence_provider.dart';
import '../providers/session_provider.dart';
import 'project_storage_service.dart';

class AutoSaveScope extends ConsumerStatefulWidget {
  const AutoSaveScope({required this.child, super.key});

  final Widget child;

  @override
  ConsumerState<AutoSaveScope> createState() => _AutoSaveScopeState();
}

class _AutoSaveScopeState extends ConsumerState<AutoSaveScope> {
  static const Duration _autoSaveInterval = Duration(seconds: 30);

  Timer? _timer;
  bool _saving = false;
  String? _lastFingerprint;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_autoSaveInterval, (_) {
      _runAutoSave();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _runAutoSave() async {
    if (_saving || kIsWeb) {
      return;
    }

    final EditorSessionInput? session = ref.read(currentSessionProvider);
    if (session == null) {
      _lastFingerprint = null;
      return;
    }

    final String? title = ref.read(currentProjectTitleProvider);
    final String? path = ref.read(currentProjectPathProvider);
    final String fingerprint = _fingerprint(session, title, path);
    if (_lastFingerprint == fingerprint) {
      return;
    }

    _saving = true;
    try {
      final ProjectStorageService storage = ref.read(projectStorageServiceProvider);
      final SaveProjectResult saved = await storage.saveSession(
        session: session,
        path: path,
        name: title,
      );
      ref.read(currentProjectPathProvider.notifier).setPath(saved.path);
      ref.read(currentProjectTitleProvider.notifier).setTitle(saved.document.name);
      ref.invalidate(recentProjectsProvider);
      _lastFingerprint = _fingerprint(session, title, saved.path);
    } catch (_) {
      // Best-effort autosave: ignore errors to avoid disrupting editing.
    } finally {
      _saving = false;
    }
  }

  String _fingerprint(EditorSessionInput session, String? title, String? path) {
    final String media = session.mediaItems
        .map((m) => '${m.path}|${m.name}|${m.isPhoto}')
        .join(';');
    final String bgm = session.bgmItems.map((b) => '${b.path}|${b.name}').join(';');
    return <Object?>[
      title,
      path,
      media,
      bgm,
      session.bgmLoop,
      session.editPaceLevel,
      session.applyDuckingToAllClips,
      session.minClipMs,
      session.maxClipMs,
      session.canvasAspectPreset.name,
      session.transitionPreset.name,
      session.audioMixPreset.name,
      session.defaultFilterEffect.name,
    ].join('|');
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
