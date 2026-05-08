import 'package:flutter/material.dart';

import '../../../../core/models/import_media_item.dart';

/// List tile for a single background music track on the import screen.
class ImportBgmTile extends StatelessWidget {
  const ImportBgmTile({
    required this.index,
    required this.item,
    required this.onRemove,
    super.key,
  });

  final int index;
  final BgmItem item;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        dense: true,
        leading: const Icon(Icons.music_note),
        title: Text(item.displayName, overflow: TextOverflow.ellipsis),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
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
