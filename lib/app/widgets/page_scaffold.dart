import 'package:flutter/material.dart';

/// Shared top-level layout used by the main app screens.
class PageScaffold extends StatelessWidget {
  const PageScaffold({
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
              onPressed: () {
                final ScaffoldState? rootScaffold =
                    context.findRootAncestorStateOfType<ScaffoldState>();
                if (rootScaffold != null && rootScaffold.hasDrawer) {
                  rootScaffold.openDrawer();
                  return;
                }
                final ScaffoldState? localScaffold = Scaffold.maybeOf(context);
                if (localScaffold != null && localScaffold.hasDrawer) {
                  localScaffold.openDrawer();
                }
              },
            );
          },
        ),
        title: Text(title),
        actions: actions,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}