import 'package:flutter/material.dart';

import '../../../app/widgets/page_scaffold.dart';
import 'guide_screen.dart';
import 'project_screen.dart';

enum _HomeTab { project, guide }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Widget _buildBottomMenu() {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() => _selectedIndex = index);
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.folder_copy_outlined),
          selectedIcon: Icon(Icons.folder_copy),
          label: 'Project',
        ),
        NavigationDestination(
          icon: Icon(Icons.menu_book_outlined),
          selectedIcon: Icon(Icons.menu_book),
          label: 'Guide',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _HomeTab activeTab = _HomeTab.values[_selectedIndex];

    return PageScaffold(
      activeRoute: '/home',
      title: activeTab == _HomeTab.project
          ? 'BeatClip - Project'
          : 'BeatClip - Guide',
      bottomNavigationBar: _buildBottomMenu(),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          ProjectScreen(),
          GuideScreen(),
        ],
      ),
    );
  }
}
