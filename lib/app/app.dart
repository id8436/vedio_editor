import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/persistence/auto_save_scope.dart';
import '../core/providers/settings_provider.dart';
import 'router.dart';

class BeatClipApp extends ConsumerWidget {
  const BeatClipApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(settingsProvider.select((s) => s.themeMode));
    return MaterialApp.router(
      title: 'BeatClip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E6F5C)),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E6F5C),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: themeMode,
      routerConfig: appRouter,
      builder: (BuildContext context, Widget? child) {
        return AutoSaveScope(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
