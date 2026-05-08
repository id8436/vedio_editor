import 'package:flutter/material.dart';

/// A simple labelled section header used on the import screen.
class ImportSectionHeader extends StatelessWidget {
  const ImportSectionHeader({required this.title, this.badge, super.key});

  final String title;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        if (badge != null) ...<Widget>[
          const SizedBox(width: 6),
          Badge(label: Text(badge!)),
        ],
      ],
    );
  }
}
