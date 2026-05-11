import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/editor_session_input.dart';
import '../../../core/providers/session_provider.dart';

class GuideScreen extends ConsumerWidget {
  const GuideScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EditorSessionInput? session = ref.watch(currentSessionProvider);
    final bool hasSession = session != null;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        Text(
          'BeatClip Guide',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          'Use this page as the main quick-reference for the overall workflow, import behavior, and clip editing rules.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        const _GuideSection(
          title: 'Workflow',
          points: <String>[
            'Project tab is where you create a new project, open an existing file, or save the current session.',
            'Import is where source media and BGM are prepared before the first auto-edit timeline is built.',
            'Clip Editor is the fast cleanup pass for reviewing rhythm, trims, and generated clip order.',
            'Advanced and Pro are for more detailed finishing work after the first pass is stable.',
          ],
        ),
        const SizedBox(height: 12),
        const _GuideSection(
          title: 'Import Basics',
          points: <String>[
            'Videos and photos can be mixed in one project.',
            'BGM helps beat-based cut planning and still-image timing decisions.',
            'Photo clips become still segments on the timeline rather than video clips.',
            'Import settings such as edit pace, clip range, ratio, and default filter carry into editing and export.',
          ],
        ),
        const SizedBox(height: 12),
        const _GuideSection(
          title: 'Clip Editor Basics',
          points: <String>[
            'Tap the monitor to play or pause the full timeline.',
            'Swipe on the monitor to move between neighboring clips.',
            'Beat ruler markers show regular beats, bass-heavy hits, and stronger bar or phrase anchors.',
            'Storyboard thumbnails show the exact duration currently used by each clip.',
          ],
        ),
        const SizedBox(height: 12),
        const _GuideSection(
          title: 'Beat Ruler Legend',
          points: <String>[
            'Small blue dots are regular beats.',
            'Larger orange dots are stronger hits, and red dots are peak impact beats.',
            'Amber square markers are bass or kick-heavy hits.',
            'A blue outer ring marks a bar anchor, which is a stronger structural beat.',
            'A purple outer ring with a vertical purple line marks a phrase anchor, which is a larger musical section boundary.',
            'Faded markers are outside the currently selected clip range.',
          ],
        ),
        const SizedBox(height: 12),
        const _GuideSection(
          title: 'BGM Notes',
          points: <String>[
            'BGM order is taken from the import list.',
            'A single BGM track repeats automatically across the edited timeline.',
            'Multiple BGM tracks are chained in list order and repeat automatically if more music is needed.',
            'If you set a BGM start point during import, playback and export start from that selected point.',
          ],
        ),
        const SizedBox(height: 18),
        Row(
          children: <Widget>[
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: () => context.go('/import'),
                icon: const Icon(Icons.upload_file),
                label: const Text('Open Import'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: () {
                  if (session != null) {
                    context.go('/editor', extra: session);
                  } else {
                    context.go('/import');
                  }
                },
                icon: Icon(hasSession ? Icons.movie_edit : Icons.upload_file),
                label: Text(hasSession ? 'Open Clip Editor' : 'Import First'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _GuideSection extends StatelessWidget {
  const _GuideSection({
    required this.title,
    required this.points,
  });

  final String title;
  final List<String> points;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ...points.map(
            (String point) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.circle, size: 7),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(point)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
