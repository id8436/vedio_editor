import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/widgets/app_scaffold.dart';
import '../../../core/models/editor_session_input.dart';
import '../../../core/providers/project_meta_provider.dart';
import '../../../core/providers/project_persistence_provider.dart';
import '../../../core/providers/session_provider.dart';
import '../../../core/persistence/project_storage_service.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _working = false;

  String _formatRecentDate(DateTime value) {
    final String y = value.year.toString().padLeft(4, '0');
    final String m = value.month.toString().padLeft(2, '0');
    final String d = value.day.toString().padLeft(2, '0');
    final String hh = value.hour.toString().padLeft(2, '0');
    final String mm = value.minute.toString().padLeft(2, '0');
    return '$y-$m-$d $hh:$mm';
  }

  Future<void> _loadProjectFromPicker() async {
    if (_working) {
      return;
    }
    if (kIsWeb) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Web file-system loading is not supported yet.')),
      );
      return;
    }

    setState(() => _working = true);
    try {
      final FilePickerResult? result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: const <String>['json', 'beatclip'],
        allowMultiple: false,
      );
      if (result == null || result.files.isEmpty) {
        return;
      }

      final String? path = result.files.single.path;
      if (path == null || path.isEmpty) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not read selected project path.')),
        );
        return;
      }

      await _loadProjectFromPath(path);
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to open selected project file.')),
      );
    } finally {
      if (mounted) {
        setState(() => _working = false);
      }
    }
  }

  Future<void> _loadProjectFromPath(String path) async {
    final ProjectStorageService storage = ref.read(projectStorageServiceProvider);
    final LoadProjectResult loaded = await storage.loadProjectFromPath(path);

    ref.read(currentSessionProvider.notifier).setSession(loaded.session);
    ref.read(currentProjectTitleProvider.notifier).setTitle(loaded.document.name);
    ref.read(currentProjectPathProvider.notifier).setPath(loaded.path);
    ref.invalidate(recentProjectsProvider);

    if (!mounted) {
      return;
    }
    context.go('/editor', extra: loaded.session);
  }

  Future<void> _saveCurrentSession() async {
    if (_working) {
      return;
    }

    final EditorSessionInput? session = ref.read(currentSessionProvider);
    final String? projectTitle = ref.read(currentProjectTitleProvider);
    final String? projectPath = ref.read(currentProjectPathProvider);
    if (session == null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No active session to save.')),
      );
      return;
    }

    setState(() => _working = true);
    try {
      String? pickedPath;
      if (!kIsWeb) {
        pickedPath = await FilePicker.saveFile(
          dialogTitle: 'Save BeatClip Project',
          fileName: 'beatclip_project.beatclip.json',
          type: FileType.custom,
          allowedExtensions: const <String>['json'],
        );
      }

      final ProjectStorageService storage = ref.read(projectStorageServiceProvider);
      final SaveProjectResult saved = await storage.saveSession(
        session: session,
        path: pickedPath ?? projectPath,
        name: projectTitle,
      );

      ref.read(currentProjectPathProvider.notifier).setPath(saved.path);
      ref.invalidate(recentProjectsProvider);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Project saved: ${saved.path}')),
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save project.')),
      );
    } finally {
      if (mounted) {
        setState(() => _working = false);
      }
    }
  }

  Future<void> _removeRecentProject(String path) async {
    final ProjectStorageService storage = ref.read(projectStorageServiceProvider);
    await storage.removeRecentProject(path);
    ref.invalidate(recentProjectsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final EditorSessionInput? session = ref.watch(currentSessionProvider);
    final bool hasSession = session != null;
    final AsyncValue<List<RecentProjectRecord>> recent = ref.watch(recentProjectsProvider);

    return AppScaffold(
      activeRoute: '/home',
      title: 'BeatClip - Home',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Text(
            'BeatClip helps you import media, build rhythm edits, and finish with Advanced/Pro timeline controls.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Workflow'),
                SizedBox(height: 6),
                Text('1. Import source media and BGM'),
                Text('2. Edit in Editor / Advanced / Pro'),
                Text('3. Export final video'),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: _working
                  ? const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.folder_open),
              title: const Text('Load Existing Project'),
              subtitle: const Text('Open a saved BeatClip project file'),
              trailing: const Icon(Icons.chevron_right),
              onTap: _working ? null : _loadProjectFromPicker,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const Icon(Icons.save_outlined),
              title: const Text('Save Current Project'),
              subtitle: Text(
                hasSession
                    ? '${session.mediaItems.length} media item(s) in current session'
                    : 'No active session loaded',
              ),
              trailing: const Icon(Icons.chevron_right),
              enabled: hasSession && !_working,
              onTap: hasSession && !_working ? _saveCurrentSession : null,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const Icon(Icons.upload_file),
              title: const Text('Start New Project'),
              subtitle: const Text('Go to import screen'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.go('/import'),
            ),
          ),
          const SizedBox(height: 14),
          Text('Recent Projects', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          switch (recent) {
            AsyncData<List<RecentProjectRecord>>(value: final List<RecentProjectRecord> items)
                when items.isEmpty => const Text('No recent projects yet.'),
            AsyncData<List<RecentProjectRecord>>(value: final List<RecentProjectRecord> items) =>
              Column(
                children: items
                    .map(
                      (RecentProjectRecord item) => Card(
                        child: ListTile(
                          leading: const Icon(Icons.history),
                          title: Text(item.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                          subtitle: Text(
                            'Updated ${_formatRecentDate(item.lastSavedAt ?? item.lastOpenedAt)}\n${item.path}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          isThreeLine: true,
                          trailing: IconButton(
                            tooltip: 'Remove from recent',
                            onPressed: () => _removeRecentProject(item.path),
                            icon: const Icon(Icons.close),
                          ),
                          onTap: _working
                              ? null
                              : () async {
                                  try {
                                    setState(() => _working = true);
                                    await _loadProjectFromPath(item.path);
                                  } catch (_) {
                                    if (!context.mounted) return;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Could not open recent project file.'),
                                      ),
                                    );
                                  } finally {
                                    if (mounted) {
                                      setState(() => _working = false);
                                    }
                                  }
                                },
                        ),
                      ),
                    )
                    .toList(growable: false),
              ),
            AsyncError() => const Text('Failed to load recent projects.'),
            _ => const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: LinearProgressIndicator(),
              ),
          },
        ],
      ),
    );
  }
}
