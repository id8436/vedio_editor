import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/widgets/app_scaffold.dart';
import '../../../core/providers/settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppSettings settings = ref.watch(settingsProvider);
    final SettingsNotifier notifier = ref.read(settingsProvider.notifier);

    return AppScaffold(
      activeRoute: '/settings',
      title: 'Settings',
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: <Widget>[
          // ── Appearance ─────────────────────────────────────────────────
          _SectionTitle('Appearance'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Theme'),
                SegmentedButton<ThemeMode>(
                  segments: const <ButtonSegment<ThemeMode>>[
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.system,
                      icon: Icon(Icons.brightness_auto, size: 18),
                      label: Text('System'),
                    ),
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.light,
                      icon: Icon(Icons.light_mode, size: 18),
                      label: Text('Light'),
                    ),
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.dark,
                      icon: Icon(Icons.dark_mode, size: 18),
                      label: Text('Dark'),
                    ),
                  ],
                  selected: <ThemeMode>{settings.themeMode},
                  onSelectionChanged: (Set<ThemeMode> selected) {
                    notifier.setThemeMode(selected.first);
                  },
                ),
              ],
            ),
          ),

          const Divider(height: 24),

          // ── Media ───────────────────────────────────────────────────────
          _SectionTitle('Media'),
          ListTile(
            title: const Text('Photo clip duration'),
            subtitle: Text('${settings.photoDurationSec} seconds per photo'),
            trailing: SizedBox(
              width: 180,
              child: Slider(
                min: 1,
                max: 10,
                divisions: 9,
                value: settings.photoDurationSec.toDouble(),
                label: '${settings.photoDurationSec}s',
                onChanged: (double v) => notifier.setPhotoDurationSec(v.round()),
              ),
            ),
          ),

          const Divider(height: 24),

          // ── Export ──────────────────────────────────────────────────────
          _SectionTitle('Export'),
          RadioListTile<String>(
            title: const Text('HD 720p'),
            subtitle: const Text('1280×720 · 5 Mbps video'),
            value: 'hd720',
            groupValue: settings.defaultExportPreset,
            onChanged: (String? v) {
              if (v != null) notifier.setDefaultExportPreset(v);
            },
          ),
          RadioListTile<String>(
            title: const Text('Full HD 1080p'),
            subtitle: const Text('1920×1080 · 10 Mbps video'),
            value: 'fhd1080',
            groupValue: settings.defaultExportPreset,
            onChanged: (String? v) {
              if (v != null) notifier.setDefaultExportPreset(v);
            },
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.primary,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
