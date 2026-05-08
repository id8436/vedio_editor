import 'package:flutter/material.dart';

import '../../../../../core/models/editor_session_input.dart';

// ── Enum ──────────────────────────────────────────────────────────────────

/// The three high-level style presets shown in the Quick Styles panel.
enum AutoEditExperiencePreset { story, balanced, energetic }

/// Extension that embeds all label / config logic on the enum itself,
/// removing the need for per-screen helper methods.
extension AutoEditExperiencePresetX on AutoEditExperiencePreset {
  String get label => switch (this) {
        AutoEditExperiencePreset.story     => 'Story',
        AutoEditExperiencePreset.balanced  => 'Balanced',
        AutoEditExperiencePreset.energetic => 'Dynamic',
      };

  String get description => switch (this) {
        AutoEditExperiencePreset.story     => 'Longer shots, softer beat lock for narrative flow',
        AutoEditExperiencePreset.balanced  => 'General use blend of highlights and beat timing',
        AutoEditExperiencePreset.energetic => 'Fast cuts with aggressive beat alignment',
      };

  ({AutoEditProfile profile, BeatSyncStrength strength, int pace}) get config =>
      switch (this) {
        AutoEditExperiencePreset.story => (
          profile: AutoEditProfile.balanced,
          strength: BeatSyncStrength.relaxed,
          pace: 2,
        ),
        AutoEditExperiencePreset.balanced => (
          profile: AutoEditProfile.adaptiveMontage,
          strength: BeatSyncStrength.matched,
          pace: 3,
        ),
        AutoEditExperiencePreset.energetic => (
          profile: AutoEditProfile.beatFocus,
          strength: BeatSyncStrength.aggressive,
          pace: 5,
        ),
      };
}

/// Infer the closest [AutoEditExperiencePreset] from the current session.
AutoEditExperiencePreset presetFromSession(EditorSessionInput? input) {
  final AutoEditProfile profile =
      input?.autoEditProfile ?? AutoEditProfile.adaptiveMontage;
  final BeatSyncStrength strength =
      input?.beatSyncStrength ?? BeatSyncStrength.matched;
  final int pace = input?.editPaceLevel ?? 3;
  if (profile == AutoEditProfile.beatFocus &&
      strength == BeatSyncStrength.aggressive &&
      pace >= 4) {
    return AutoEditExperiencePreset.energetic;
  }
  if (profile == AutoEditProfile.balanced &&
      strength == BeatSyncStrength.relaxed &&
      pace <= 2) {
    return AutoEditExperiencePreset.story;
  }
  return AutoEditExperiencePreset.balanced;
}

// ── AutoEditPanel ─────────────────────────────────────────────────────────

/// Bottom-sheet panel for choosing an edit style and triggering a rebuild.
///
/// Contains Quick Styles cards, Profile/BeatSync chips, a Pace slider, and an
/// Apply button. All label/config logic is self-contained via the enum.
class AutoEditPanel extends StatefulWidget {
  const AutoEditPanel({
    super.key,
    required this.clipCount,
    required this.totalDurationMs,
    this.sessionInput,
    required this.onApply,
  });

  final int clipCount;
  final int totalDurationMs;
  final EditorSessionInput? sessionInput;
  final Future<void> Function({
    required AutoEditProfile profile,
    required BeatSyncStrength beatSyncStrength,
    required int paceLevel,
  }) onApply;

  @override
  State<AutoEditPanel> createState() => _AutoEditPanelState();
}

class _AutoEditPanelState extends State<AutoEditPanel> {
  late AutoEditProfile _profile;
  late BeatSyncStrength _strength;
  late int _paceLevel;

  @override
  void initState() {
    super.initState();
    final EditorSessionInput? s = widget.sessionInput;
    _profile   = s?.autoEditProfile  ?? AutoEditProfile.adaptiveMontage;
    _strength  = s?.beatSyncStrength ?? BeatSyncStrength.matched;
    _paceLevel = s?.editPaceLevel    ?? 3;
  }

  AutoEditExperiencePreset get _currentPreset {
    if (_profile == AutoEditProfile.beatFocus &&
        _strength == BeatSyncStrength.aggressive &&
        _paceLevel >= 4) {
      return AutoEditExperiencePreset.energetic;
    }
    if (_profile == AutoEditProfile.balanced &&
        _strength == BeatSyncStrength.relaxed &&
        _paceLevel <= 2) {
      return AutoEditExperiencePreset.story;
    }
    return AutoEditExperiencePreset.balanced;
  }

  void _applyPreset(AutoEditExperiencePreset preset) {
    final config = preset.config;
    setState(() {
      _profile   = config.profile;
      _strength  = config.strength;
      _paceLevel = config.pace;
    });
  }

  String _profileLabel(AutoEditProfile p) => switch (p) {
        AutoEditProfile.balanced        => 'Balanced',
        AutoEditProfile.adaptiveMontage => 'Adaptive',
        AutoEditProfile.beatFocus       => 'Beat Focus',
      };

  String _syncLabel(BeatSyncStrength s) => switch (s) {
        BeatSyncStrength.relaxed    => 'Relaxed',
        BeatSyncStrength.matched    => 'Matched',
        BeatSyncStrength.aggressive => 'Aggressive',
      };

  @override
  Widget build(BuildContext context) {
    const Color accent = Color(0xFF9752D8);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // ── Context metrics ───────────────────────────────────────────────
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF202226),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: <Widget>[
              const Icon(Icons.insights_outlined, size: 18, color: Colors.white70),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${widget.clipCount} clips · '
                  '${(widget.totalDurationMs / 1000).toStringAsFixed(1)}s total',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Pace $_paceLevel / 5',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // ── Quick Styles ──────────────────────────────────────────────────
        Text('Quick Styles', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: AutoEditExperiencePreset.values.map((AutoEditExperiencePreset p) {
            final bool selected = _currentPreset == p;
            return InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => _applyPreset(p),
              child: Container(
                width: 155,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selected ? accent : Colors.white12,
                  ),
                  color: selected
                      ? accent.withValues(alpha: 0.18)
                      : const Color(0xFF1B1D22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      p.label,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      p.description,
                      style: const TextStyle(fontSize: 11, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),

        // ── Profile chips ─────────────────────────────────────────────────
        Text('Profile', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: AutoEditProfile.values
              .map(
                (AutoEditProfile p) => ChoiceChip(
                  label: Text(_profileLabel(p)),
                  selected: _profile == p,
                  onSelected: (_) => setState(() => _profile = p),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 16),

        // ── Beat Sync chips ───────────────────────────────────────────────
        Text('Beat Sync', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: BeatSyncStrength.values
              .map(
                (BeatSyncStrength s) => ChoiceChip(
                  label: Text(_syncLabel(s)),
                  selected: _strength == s,
                  onSelected: (_) => setState(() => _strength = s),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 16),

        // ── Pace slider ───────────────────────────────────────────────────
        Text(
          'Pace $_paceLevel / 5',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Slider(
          min: 1,
          max: 5,
          divisions: 4,
          value: _paceLevel.toDouble(),
          label: _paceLevel.toString(),
          onChanged: (double v) => setState(() => _paceLevel = v.round()),
        ),
        const SizedBox(height: 8),

        // ── Apply button ──────────────────────────────────────────────────
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: () async {
              await widget.onApply(
                profile: _profile,
                beatSyncStrength: _strength,
                paceLevel: _paceLevel,
              );
            },
            icon: const Icon(Icons.auto_fix_high),
            label: const Text('Apply Style and Rebuild Timeline'),
          ),
        ),
      ],
    );
  }
}
