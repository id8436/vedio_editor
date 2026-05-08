import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/persistence/persistence_bootstrap.dart';

class BootLoadingScreen extends StatefulWidget {
  const BootLoadingScreen({super.key});

  @override
  State<BootLoadingScreen> createState() => _BootLoadingScreenState();
}

class _BootLoadingScreenState extends State<BootLoadingScreen> {
  Object? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      await Future.wait(<Future<void>>[
        PersistenceBootstrap.initialize(),
        Future<void>.delayed(const Duration(milliseconds: 500)),
      ]);
      if (!mounted) {
        return;
      }
      context.go('/home');
    } catch (e) {
      if (!mounted) {
        return;
      }
      setState(() {
        _error = e;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 360),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: cs.primaryContainer,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    Icons.movie_creation_outlined,
                    color: cs.onPrimaryContainer,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'BeatClip',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Preparing your project workspace...',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                if (_loading) ...<Widget>[
                  const CircularProgressIndicator(),
                ] else ...<Widget>[
                  Text(
                    'Startup failed. Please try again.',
                    style: TextStyle(color: cs.error),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  FilledButton.icon(
                    onPressed: _bootstrap,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                  if (_error != null) ...<Widget>[
                    const SizedBox(height: 8),
                    Text(
                      _error.toString(),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
