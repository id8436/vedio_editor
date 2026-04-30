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

class StartupProjectScreen extends ConsumerStatefulWidget {
  const StartupProjectScreen({super.key});

  @override
  ConsumerState<StartupProjectScreen> createState() => _StartupProjectScreenState();
}

class _StartupProjectScreenState extends ConsumerState<StartupProjectScreen> {
  bool _working = false;

  String _defaultSuggestedTitle() {
    final DateTime now = DateTime.now();
    final String y = now.year.toString().padLeft(4, '0');
    final String m = now.month.toString().padLeft(2, '0');
    final String d = now.day.toString().padLeft(2, '0');
    final String hh = now.hour.toString().padLeft(2, '0');
    final String mm = now.minute.toString().padLeft(2, '0');
    return 'Project_$y$m${d}_$hh$mm';
  }

  Future<void> _promptTitleAndStartProject() async {
    final String suggestedTitle = _defaultSuggestedTitle();
    final TextEditingController controller = TextEditingController(text: suggestedTitle);
    controller.selection = TextSelection(baseOffset: 0, extentOffset: controller.text.length);
    final String? title = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('New Project Title'),
          content: TextField(
            controller: controller,
            autofocus: true,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              hintText: 'e.g. Travel Reel April',
            ),
            onSubmitted: (String value) => Navigator.of(context).pop(value),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(controller.text),
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );

    final String resolved = (title ?? '').trim().isNotEmpty
        ? (title ?? '').trim()
        : suggestedTitle;
    if (resolved.isEmpty || !mounted) {
      return;
    }

    ref.read(currentProjectTitleProvider.notifier).setTitle(resolved);
    context.go('/import');
  }

  String _formatRecentDate(DateTime value) {
    final String y = value.year.toString().padLeft(4, '0');
    final String m = value.month.toString().padLeft(2, '0');
    final String d = value.day.toString().padLeft(2, '0');
    final String hh = value.hour.toString().padLeft(2, '0');
    final String mm = value.minute.toString().padLeft(2, '0');
    return '$y-$m-$d $hh:$mm';
  }

  Future<void> _loadFromPath(String path) async {
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

  Future<void> _openPickerAndLoad() async {
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

      await _loadFromPath(path);
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

  Future<void> _saveCurrentProject() async {
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

      ref.read(currentProjectTitleProvider.notifier).setTitle(saved.document.name);
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

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<RecentProjectRecord>> recent = ref.watch(recentProjectsProvider);
    final bool hasSession = ref.watch(currentSessionProvider) != null;

    return AppScaffold(
      activeRoute: '/home',
      title: 'Choose Project',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Start with a recent project, open a project file, or create a new one.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: FilledButton.icon(
                    onPressed: _working ? null : _promptTitleAndStartProject,
                    icon: const Icon(Icons.upload_file),
                    label: const Text('Start New Project'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _working ? null : _openPickerAndLoad,
                    icon: _working
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.folder_open),
                    label: const Text('Open Project File'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: (_working || !hasSession) ? null : _saveCurrentProject,
                    icon: const Icon(Icons.save_outlined),
                    label: const Text('Save Current Project'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text('Recent Projects', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(
              child: switch (recent) {
                AsyncData<List<RecentProjectRecord>>(value: final List<RecentProjectRecord> items)
                    when items.isEmpty => const Center(
                        child: Text('No recent projects yet.'),
                      ),
                AsyncData<List<RecentProjectRecord>>(value: final List<RecentProjectRecord> items) =>
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final RecentProjectRecord item = items[index];
                      final DateTime stamp = item.lastSavedAt ?? item.lastOpenedAt;
                      return Card(
                        child: ListTile(
                          leading: const Icon(Icons.history),
                          title: Text(item.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                          subtitle: Text(
                            'Updated ${_formatRecentDate(stamp)}\n${item.path}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          isThreeLine: true,
                          onTap: _working
                              ? null
                              : () async {
                                  try {
                                    setState(() => _working = true);
                                    await _loadFromPath(item.path);
                                  } catch (_) {
                                    if (!context.mounted) return;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Could not open selected recent project.'),
                                      ),
                                    );
                                  } finally {
                                    if (mounted) {
                                      setState(() => _working = false);
                                    }
                                  }
                                },
                        ),
                      );
                    },
                  ),
                AsyncError() => const Center(
                    child: Text('Failed to load recent projects.'),
                  ),
                _ => const Center(child: CircularProgressIndicator()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
