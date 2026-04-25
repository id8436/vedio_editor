import 'package:flutter/material.dart';

import 'router.dart';

class BeatClipApp extends StatelessWidget {
  const BeatClipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BeatClip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E6F5C)),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
