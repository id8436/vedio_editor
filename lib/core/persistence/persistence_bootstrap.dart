import 'package:hive_flutter/hive_flutter.dart';

class PersistenceBootstrap {
  PersistenceBootstrap._();

  static const String recentProjectsBox = 'recent_projects_v1';
  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) {
      return;
    }
    await Hive.initFlutter();
    if (!Hive.isBoxOpen(recentProjectsBox)) {
      await Hive.openBox<dynamic>(recentProjectsBox);
    }
    _initialized = true;
  }
}
