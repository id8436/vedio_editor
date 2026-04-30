import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../models/editor_session_input.dart';
import 'persistence_bootstrap.dart';
import 'project_document.dart';

class RecentProjectRecord {
  const RecentProjectRecord({
    required this.path,
    required this.name,
    required this.lastOpenedAt,
    required this.lastSavedAt,
    this.webProjectJson,
  });

  final String path;
  final String name;
  final DateTime lastOpenedAt;
  final DateTime? lastSavedAt;
  final String? webProjectJson;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'name': name,
      'lastOpenedAt': lastOpenedAt.toIso8601String(),
      'lastSavedAt': lastSavedAt?.toIso8601String(),
      if (webProjectJson != null) 'webProjectJson': webProjectJson,
    };
  }

  static RecentProjectRecord? fromMap(Object? source) {
    if (source is! Map) {
      return null;
    }
    final String path = source['path']?.toString() ?? '';
    if (path.isEmpty) {
      return null;
    }

    final DateTime opened =
        DateTime.tryParse(source['lastOpenedAt']?.toString() ?? '') ?? DateTime.now();
    final DateTime? saved = DateTime.tryParse(source['lastSavedAt']?.toString() ?? '');

    return RecentProjectRecord(
      path: path,
      name: source['name']?.toString() ?? _basename(path),
      lastOpenedAt: opened,
      lastSavedAt: saved,
      webProjectJson: source['webProjectJson']?.toString(),
    );
  }

  static String _basename(String fullPath) {
    final int slash = fullPath.lastIndexOf(RegExp(r'[/\\]'));
    return slash >= 0 ? fullPath.substring(slash + 1) : fullPath;
  }
}

class SaveProjectResult {
  const SaveProjectResult({
    required this.path,
    required this.document,
  });

  final String path;
  final ProjectDocument document;
}

class LoadProjectResult {
  const LoadProjectResult({
    required this.path,
    required this.document,
  });

  final String path;
  final ProjectDocument document;

  EditorSessionInput get session => document.session;
}

class ProjectStorageService {
  const ProjectStorageService();

  static const int schemaVersion = 1;

  Future<SaveProjectResult> saveSession({
    required EditorSessionInput session,
    String? path,
    String? name,
  }) async {
    final DateTime now = DateTime.now();
    final String targetPath = path ??
        (kIsWeb
            ? _defaultWebProjectPath(now)
            : await _defaultProjectPath(now));

    final String resolvedName = (name != null && name.trim().isNotEmpty)
        ? name.trim()
        : _nameFromPath(targetPath);

    final ProjectDocument document = ProjectDocument(
      schemaVersion: schemaVersion,
      projectId: const Uuid().v4(),
      name: resolvedName,
      createdAt: now,
      updatedAt: now,
      session: session,
    );

    final String serialized = const JsonEncoder.withIndent('  ').convert(document.toJson());

    if (kIsWeb) {
      await _upsertRecentProject(
        path: targetPath,
        name: resolvedName,
        openedAt: now,
        savedAt: now,
        webProjectJson: serialized,
      );
      return SaveProjectResult(path: targetPath, document: document);
    }

    final File file = File(targetPath);
    await file.parent.create(recursive: true);
    await file.writeAsString(serialized, flush: true);

    await _upsertRecentProject(
      path: targetPath,
      name: resolvedName,
      openedAt: now,
      savedAt: now,
    );

    return SaveProjectResult(path: targetPath, document: document);
  }

  Future<LoadProjectResult> loadProjectFromPath(String path) async {
    Object? decoded;

    if (kIsWeb && path.startsWith('web://')) {
      final Box<dynamic> box = Hive.box<dynamic>(PersistenceBootstrap.recentProjectsBox);
      final RecentProjectRecord? record = RecentProjectRecord.fromMap(box.get(path));
      final String? raw = record?.webProjectJson;
      if (raw == null || raw.isEmpty) {
        throw const FormatException('Web project snapshot was not found.');
      }
      decoded = jsonDecode(raw);
    } else {
      final File file = File(path);
      final String raw = await file.readAsString();
      decoded = jsonDecode(raw);
    }

    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Invalid project JSON structure.');
    }

    final ProjectDocument? doc = ProjectDocument.fromJson(decoded);
    if (doc == null) {
      throw const FormatException('Unsupported or invalid BeatClip project file.');
    }

    await _upsertRecentProject(
      path: path,
      name: doc.name,
      openedAt: DateTime.now(),
      savedAt: doc.updatedAt,
      webProjectJson: (kIsWeb && path.startsWith('web://'))
          ? const JsonEncoder.withIndent('  ').convert(doc.toJson())
          : null,
    );

    return LoadProjectResult(path: path, document: doc);
  }

  Future<List<RecentProjectRecord>> listRecentProjects() async {
    final Box<dynamic> box = Hive.box<dynamic>(PersistenceBootstrap.recentProjectsBox);

    final List<dynamic> staleKeys = <dynamic>[];
    final List<RecentProjectRecord> projects = <RecentProjectRecord>[];

    for (final dynamic key in box.keys) {
      final RecentProjectRecord? record = RecentProjectRecord.fromMap(box.get(key));
      if (record == null) {
        staleKeys.add(key);
        continue;
      }

      if (!kIsWeb) {
        final bool exists = await File(record.path).exists();
        if (!exists) {
          staleKeys.add(key);
          continue;
        }
      }

      projects.add(record);
    }

    if (staleKeys.isNotEmpty) {
      await box.deleteAll(staleKeys);
    }

    projects.sort(
      (RecentProjectRecord a, RecentProjectRecord b) =>
          b.lastOpenedAt.compareTo(a.lastOpenedAt),
    );

    return projects;
  }

  Future<void> removeRecentProject(String path) async {
    final Box<dynamic> box = Hive.box<dynamic>(PersistenceBootstrap.recentProjectsBox);
    await box.delete(path);
  }

  Future<String> _defaultProjectPath(DateTime now) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory dir = Directory('${appDir.path}${Platform.pathSeparator}beatclip_projects');
    await dir.create(recursive: true);

    final String stamp =
        '${now.year.toString().padLeft(4, '0')}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}';

    return '${dir.path}${Platform.pathSeparator}project_$stamp.beatclip.json';
  }

  Future<void> _upsertRecentProject({
    required String path,
    required String name,
    required DateTime openedAt,
    required DateTime? savedAt,
    String? webProjectJson,
  }) async {
    final Box<dynamic> box = Hive.box<dynamic>(PersistenceBootstrap.recentProjectsBox);
    await box.put(
      path,
      RecentProjectRecord(
        path: path,
        name: name,
        lastOpenedAt: openedAt,
        lastSavedAt: savedAt,
        webProjectJson: webProjectJson,
      ).toMap(),
    );
  }

  String _defaultWebProjectPath(DateTime now) {
    final String stamp =
        '${now.year.toString().padLeft(4, '0')}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}';
    return 'web://project_$stamp.beatclip.json';
  }

  String _nameFromPath(String path) {
    final String fileName = _basename(path);
    if (fileName.endsWith('.beatclip.json')) {
      return fileName.substring(0, fileName.length - '.beatclip.json'.length);
    }
    if (fileName.endsWith('.json')) {
      return fileName.substring(0, fileName.length - '.json'.length);
    }
    return fileName;
  }

  String _basename(String fullPath) {
    final int slash = fullPath.lastIndexOf(RegExp(r'[/\\]'));
    return slash >= 0 ? fullPath.substring(slash + 1) : fullPath;
  }
}
