import 'package:go_router/go_router.dart';

import '../core/models/editor_session_input.dart';
import '../screens/editor/advanced/presentation/advanced_editor_screen.dart';
import '../screens/editor/pro/presentation/pro_editor_screen.dart';
import '../screens/editor/clip/presentation/clip_editor_screen.dart';
import '../screens/home/presentation/boot_loading_screen.dart';
import '../screens/home/presentation/home_screen.dart';
import '../screens/import/presentation/import_screen.dart';
import '../screens/encode/presentation/encode_screen.dart';
import '../screens/options/presentation/options_screen.dart';
import 'app_shell_layout.dart';

EditorSessionInput? _asEditorInput(Object? extra) {
  if (extra is EditorSessionInput) {
    return extra;
  }
  return null;
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/boot',
  routes: <RouteBase>[
    GoRoute(
      path: '/boot',
      name: 'boot',
      builder: (context, state) => const BootLoadingScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        final String location = state.uri.toString();
        final String activeRoute = location.split('?').first;
        return AppShellLayout(
          currentRoute: activeRoute,
          child: child,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/startup',
          name: 'startup',
          redirect: (context, state) => '/home',
        ),
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
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
            final EditorSessionInput? input = _asEditorInput(state.extra);
            return ClipEditorScreen(input: input);
          },
        ),
        GoRoute(
          path: '/editor-advanced',
          name: 'editor-advanced',
          builder: (context, state) {
            final EditorSessionInput? input = _asEditorInput(state.extra);
            final bool preserve = state.uri.queryParameters['preserve'] == '1';
            return AdvancedEditorScreen(input: input, preserveCurrentProject: preserve);
          },
        ),
        GoRoute(
          path: '/editor-pro',
          name: 'editor-pro',
          builder: (context, state) {
            final EditorSessionInput? input = _asEditorInput(state.extra);
            final bool preserve = state.uri.queryParameters['preserve'] == '1';
            return ProEditorScreen(input: input, preserveCurrentProject: preserve);
          },
        ),
        GoRoute(
          path: '/export',
          name: 'export',
          builder: (context, state) {
            final EditorSessionInput? input = _asEditorInput(state.extra);
            return EncodeScreen(input: input);
          },
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          builder: (context, state) => const OptionsScreen(),
        ),
      ],
    ),
  ],
);
