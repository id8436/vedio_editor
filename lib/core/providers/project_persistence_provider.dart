import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../persistence/project_storage_service.dart';

final Provider<ProjectStorageService> projectStorageServiceProvider =
    Provider<ProjectStorageService>((Ref ref) => const ProjectStorageService());

final FutureProvider<List<RecentProjectRecord>> recentProjectsProvider =
    FutureProvider<List<RecentProjectRecord>>((Ref ref) async {
      final ProjectStorageService service = ref.watch(projectStorageServiceProvider);
      return service.listRecentProjects();
    });
