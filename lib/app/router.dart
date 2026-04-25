import 'package:go_router/go_router.dart';

import '../core/models/editor_session_input.dart';
import '../features/editor/presentation/editor_screen.dart';
import '../features/import/presentation/import_screen.dart';
import '../features/render/presentation/export_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/import',
  routes: <RouteBase>[
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
        return EditorScreen(input: input);
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
  ],
);
