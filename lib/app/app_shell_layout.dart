import 'package:flutter/material.dart';

import 'widgets/shell_drawer.dart';

/// Root shell layout that provides drawer navigation for all main screens.
class AppShellLayout extends StatelessWidget {
  const AppShellLayout({
    required this.child,
    required this.currentRoute,
    super.key,
  });

  final Widget child;
  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ShellDrawer(activeRoute: currentRoute),
      body: child,
    );
  }
}
