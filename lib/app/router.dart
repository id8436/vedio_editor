import 'package:go_router/go_router.dart';

import '../core/models/editor_session_input.dart';
import '../features/editor/presentation/advanced_editor_screen.dart';
import '../features/editor/presentation/pro_editor_screen.dart';
import '../features/editor/presentation/clip_editor_screen.dart';
import '../features/home/presentation/boot_loading_screen.dart';
import '../features/home/presentation/startup_project_screen.dart';
import '../features/import/presentation/import_screen.dart';
import '../features/render/presentation/export_screen.dart';
import '../features/settings/presentation/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/boot',
  routes: <RouteBase>[
    GoRoute(
      path: '/boot',
      name: 'boot',
      builder: (context, state) => const BootLoadingScreen(),
    ),
    GoRoute(
      path: '/startup',
      name: 'startup',
      redirect: (context, state) => '/home',
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const StartupProjectScreen(),
    ),
    GoRoute(
      path: '/import',
      name: 'import',
      builder: (context, state) => const ImportScreen(),
    ),
    GoRoute(
      path: '/editor',
      name: 'editor',
      builder: (context, state) {
        final EditorSessionInput? input = state.extra as EditorSessionInput?;
        return ClipEditorScreen(input: input);
      },
    ),
    GoRoute(
      path: '/editor-advanced',
      name: 'editor-advanced',
      builder: (context, state) {
        final EditorSessionInput? input = state.extra as EditorSessionInput?;
        final bool preserve = state.uri.queryParameters['preserve'] == '1';
        return AdvancedEditorScreen(input: input, preserveCurrentProject: preserve);
      },
    ),
    GoRoute(
      path: '/editor-pro',
      name: 'editor-pro',
      builder: (context, state) {
        final EditorSessionInput? input = state.extra as EditorSessionInput?;
        final bool preserve = state.uri.queryParameters['preserve'] == '1';
        return ProEditorScreen(input: input, preserveCurrentProject: preserve);
      },
    ),
    GoRoute(
      path: '/export',
      name: 'export',
      builder: (context, state) {
        final EditorSessionInput? input = state.extra as EditorSessionInput?;
        return ExportScreen(input: input);
      },
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
