import 'package:flutter/material.dart';

import 'app_drawer.dart';

/// Shared top-level layout used by the main app screens.
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.activeRoute,
    required this.title,
    required this.body,
    this.actions,
    this.bottomNavigationBar,
    super.key,
  });

  final String activeRoute;
  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        title: Text(title),
        actions: actions,
      ),
      drawer: AppDrawer(activeRoute: activeRoute),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}