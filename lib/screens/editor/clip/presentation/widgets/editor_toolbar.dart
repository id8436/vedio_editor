import 'package:flutter/material.dart';

/// Adobe Premiere Clip-style bottom toolbar with five evenly-spaced buttons.
///
/// Buttons: Style · Music · Filter · Text · Export.
/// Active state (when an option is enabled on the current clip) lights the
/// button in the accent color.
class EditorToolbar extends StatelessWidget {
  const EditorToolbar({
    super.key,
    required this.onTapStyle,
    required this.onTapMusic,
    required this.onTapFilter,
    required this.onTapText,
    required this.onTapExport,
    this.audioActive = false,
    this.filterActive = false,
    this.textActive = false,
  });

  final VoidCallback onTapStyle;
  final VoidCallback onTapMusic;
  final VoidCallback onTapFilter;
  final VoidCallback onTapText;
  final VoidCallback onTapExport;

  final bool audioActive;
  final bool filterActive;
  final bool textActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: const Color(0xFF111111),
      child: Row(
        children: <Widget>[
          _ToolbarItem(
            icon: Icons.auto_awesome,
            label: 'Style',
            onTap: onTapStyle,
          ),
          _ToolbarItem(
            icon: Icons.music_note,
            label: 'Music',
            active: audioActive,
            onTap: onTapMusic,
          ),
          _ToolbarItem(
            icon: Icons.palette_outlined,
            label: 'Filter',
            active: filterActive,
            onTap: onTapFilter,
          ),
          _ToolbarItem(
            icon: Icons.text_fields,
            label: 'Text',
            active: textActive,
            onTap: onTapText,
          ),
          _ToolbarItem(
            icon: Icons.ios_share,
            label: 'Export',
            onTap: onTapExport,
          ),
        ],
      ),
    );
  }
}

class _ToolbarItem extends StatelessWidget {
  const _ToolbarItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.active = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool active;

  static const Color _accent = Color(0xFF9752D8);

  @override
  Widget build(BuildContext context) {
    final Color color = active ? _accent : Colors.white60;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        splashColor: _accent.withValues(alpha: 0.15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 10,
                fontWeight: active ? FontWeight.w700 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
