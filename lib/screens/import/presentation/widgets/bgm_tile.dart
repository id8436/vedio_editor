import 'package:flutter/material.dart';

import '../../../../core/models/import_media_item.dart';

/// List tile for a single background music track on the import screen.
class ImportBgmTile extends StatelessWidget {
  const ImportBgmTile({
    required this.index,
    required this.item,
    required this.onRemove,
    this.onTap,
    super.key,
  });

  final int index;
  final BgmItem item;
  final VoidCallback onRemove;
  final VoidCallback? onTap;

  String _formatOffset(int ms) {
    final int totalSeconds = ms ~/ 1000;
    final int minutes = totalSeconds ~/ 60;
    final int seconds = totalSeconds % 60;
    final int tenths = ((ms % 1000) / 100).floor();
    return '$minutes:${seconds.toString().padLeft(2, '0')}.$tenths';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        onTap: onTap,
        dense: true,
        leading: const Icon(Icons.music_note),
        title: Text(item.displayName, overflow: TextOverflow.ellipsis),
        subtitle: Text(
          item.startOffsetMs > 0
              ? 'Start from ${_formatOffset(item.startOffsetMs)}'
              : 'Tap to set start point',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Icon(Icons.tune, size: 18, color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.drag_handle, size: 18, color: Colors.grey),
            ),
            IconButton(
              visualDensity: VisualDensity.compact,
              icon: const Icon(Icons.close, size: 18),
              tooltip: 'Remove',
              onPressed: onRemove,
            ),
          ],
        ),
      ),
    );
  }
}
