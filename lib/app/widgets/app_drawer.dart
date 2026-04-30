import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/models/editor_session_input.dart';
import '../../core/providers/project_meta_provider.dart';
import '../../core/providers/project_persistence_provider.dart';
import '../../core/providers/session_provider.dart';

/// Navigation drawer shared across all main screens.
///
/// Pass [activeRoute] (e.g. `'/import'`) so the active tile is highlighted.
class AppDrawer extends ConsumerWidget {
  const AppDrawer({required this.activeRoute, super.key});

  final String activeRoute;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EditorSessionInput? session = ref.watch(currentSessionProvider);
    final bool hasSession = session != null;
    final ColorScheme cs = Theme.of(context).colorScheme;

    Future<void> saveCurrentProjectFromDrawer() async {
      if (session == null) {
        return;
      }

      try {
        String? targetPath = ref.read(currentProjectPathProvider);
        if (!kIsWeb && targetPath == null) {
          targetPath = await FilePicker.saveFile(
            dialogTitle: 'Save BeatClip Project',
            fileName: 'beatclip_project.beatclip.json',
            type: FileType.custom,
            allowedExtensions: const <String>['json'],
          );
        }

        final saved = await ref.read(projectStorageServiceProvider).saveSession(
              session: session,
              path: targetPath,
              name: ref.read(currentProjectTitleProvider),
            );
        ref.read(currentProjectPathProvider.notifier).setPath(saved.path);
        ref.read(currentProjectTitleProvider.notifier).setTitle(saved.document.name);
        ref.invalidate(recentProjectsProvider);

        if (!context.mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Project saved: ${saved.path}')),
        );
      } catch (_) {
        if (!context.mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to save project.')),
        );
      }
    }

    return Drawer(
      child: Column(
        children: <Widget>[
          // ── Header ───────────────────────────────────────────────────────
          DrawerHeader(
            decoration: BoxDecoration(color: cs.primary),
            padding: const EdgeInsets.fromLTRB(20, 20, 16, 12),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.movie_creation, color: cs.onPrimary, size: 36),
                      const SizedBox(height: 6),
                      Text(
                        'BeatClip',
                        style: TextStyle(
                          color: cs.onPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Beat-synced video editor',
                        style: TextStyle(
                          color: cs.onPrimary.withValues(alpha: 0.8),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    tooltip: hasSession ? 'Save current project' : 'Load or start project first',
                    onPressed: hasSession
                        ? () {
                            saveCurrentProjectFromDrawer();
                          }
                        : null,
                    icon: Icon(Icons.save_outlined, color: cs.onPrimary),
                  ),
                ),
              ],
            ),
          ),

          // ── Navigation tiles ─────────────────────────────────────────────
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _DrawerTile(
                  icon: Icons.home_outlined,
                  label: 'Home',
                  sublabel: 'Project hub and quick actions',
                  route: '/home',
                  activeRoute: activeRoute,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.go('/home');
                  },
                ),
                _DrawerTile(
                  icon: Icons.upload_file,
                  label: 'Source',
                  sublabel: 'Import videos & photos',
                  route: '/import',
                  activeRoute: activeRoute,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.go('/import');
                  },
                ),
                _DrawerTile(
                  icon: Icons.timeline,
                  label: 'Editor (Clip)',
                  sublabel: hasSession
                      ? '${session.mediaItems.length} item(s) loaded'
                      : 'No session — import first',
                  route: '/editor',
                  activeRoute: activeRoute,
                  enabled: hasSession,
                  onTap: hasSession
                      ? () {
                          Navigator.of(context).pop();
                          context.go('/editor', extra: session);
                        }
                      : null,
                ),
                _DrawerTile(
                  icon: Icons.tune,
                  label: 'Editor (Advanced)',
                  sublabel: hasSession
                      ? 'Continue from clip edits'
                      : 'No session — import first',
                  route: '/editor-advanced',
                  activeRoute: activeRoute,
                  enabled: hasSession,
                  onTap: hasSession
                      ? () {
                          Navigator.of(context).pop();
                          context.go('/editor-advanced', extra: session);
                        }
                      : null,
                ),
                _DrawerTile(
                  icon: Icons.desktop_windows,
                  label: 'Editor (Pro)',
                  sublabel: hasSession
                      ? 'Desktop-level finishing stage'
                      : 'No session — import first',
                  route: '/editor-pro',
                  activeRoute: activeRoute,
                  enabled: hasSession,
                  onTap: hasSession
                      ? () {
                          Navigator.of(context).pop();
                          context.go('/editor-pro?preserve=1', extra: session);
                        }
                      : null,
                ),
                _DrawerTile(
                  icon: Icons.video_settings,
                  label: 'Encode',
                  sublabel: hasSession ? 'Export timeline' : 'No session — edit first',
                  route: '/export',
                  activeRoute: activeRoute,
                  enabled: hasSession,
                  onTap: hasSession
                      ? () {
                          Navigator.of(context).pop();
                          context.go('/export', extra: session);
                        }
                      : null,
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                _DrawerTile(
                  icon: Icons.settings_outlined,
                  label: 'Settings',
                  sublabel: 'Theme, defaults',
                  route: '/settings',
                  activeRoute: activeRoute,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.go('/settings');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── _DrawerTile ───────────────────────────────────────────────────────────

class _DrawerTile extends StatelessWidget {
  const _DrawerTile({
    required this.icon,
    required this.label,
    required this.sublabel,
    required this.route,
    required this.activeRoute,
    this.enabled = true,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final String sublabel;
  final String route;
  final String activeRoute;
  final bool enabled;
  final VoidCallback? onTap;

  bool get _isActive => activeRoute == route;

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;

    return ListTile(
      selected: _isActive,
      selectedTileColor: cs.primaryContainer,
      enabled: enabled,
      leading: Icon(
        icon,
        color: _isActive ? cs.primary : null,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: _isActive ? FontWeight.w600 : FontWeight.normal,
          color: _isActive ? cs.primary : null,
        ),
      ),
      subtitle: Text(
        sublabel,
        style: const TextStyle(fontSize: 11),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
