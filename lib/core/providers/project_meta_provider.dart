import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentProjectTitleNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void setTitle(String? title) {
    final String? cleaned = title?.trim();
    state = (cleaned == null || cleaned.isEmpty) ? null : cleaned;
  }
}

final NotifierProvider<CurrentProjectTitleNotifier, String?> currentProjectTitleProvider =
    NotifierProvider<CurrentProjectTitleNotifier, String?>(
      CurrentProjectTitleNotifier.new,
    );

class CurrentProjectPathNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void setPath(String? path) {
    final String? cleaned = path?.trim();
    state = (cleaned == null || cleaned.isEmpty) ? null : cleaned;
  }
}

final NotifierProvider<CurrentProjectPathNotifier, String?> currentProjectPathProvider =
    NotifierProvider<CurrentProjectPathNotifier, String?>(
      CurrentProjectPathNotifier.new,
    );
