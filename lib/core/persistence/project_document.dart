import '../models/editor_session_input.dart';
import '../models/import_media_item.dart';
import '../models/timeline_models.dart';

class ProjectDocument {
  const ProjectDocument({
    required this.schemaVersion,
    required this.projectId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.session,
  });

  final int schemaVersion;
  final String projectId;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final EditorSessionInput session;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'schemaVersion': schemaVersion,
      'projectId': projectId,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'mediaItems': session.mediaItems
          .map(
            (MediaItem item) => <String, dynamic>{
              'path': item.path,
              if (item.name != null) 'name': item.name,
              'isPhoto': item.isPhoto,
            },
          )
          .toList(growable: false),
      'bgmItems': session.bgmItems
          .map(
            (BgmItem item) => <String, dynamic>{
              'path': item.path,
              if (item.name != null) 'name': item.name,
            },
          )
          .toList(growable: false),
      'bgmLoop': session.bgmLoop,
      'editPaceLevel': session.editPaceLevel,
      'applyDuckingToAllClips': session.applyDuckingToAllClips,
      'minClipMs': session.minClipMs,
      'maxClipMs': session.maxClipMs,
      'canvasAspectPreset': session.canvasAspectPreset.name,
      'transitionPreset': session.transitionPreset.name,
      'audioMixPreset': session.audioMixPreset.name,
      'defaultFilterEffect': session.defaultFilterEffect.name,
    };
  }

  static const Set<String> _photoExts = <String>{
    'jpg',
    'jpeg',
    'png',
    'webp',
    'bmp',
    'gif',
    'heic',
    'heif',
  };

  static ProjectDocument? fromJson(Map<String, dynamic> json) {
    final List<MediaItem> mediaItems = _parseMediaItems(json['mediaItems']);
    if (mediaItems.isEmpty) {
      return null;
    }

    final DateTime now = DateTime.now();
    final EditorSessionInput session = EditorSessionInput(
      mediaItems: mediaItems,
      bgmItems: _parseBgmItems(json['bgmItems']),
      bgmLoop: json['bgmLoop'] is bool ? json['bgmLoop'] as bool : true,
      editPaceLevel: _clampInt(json['editPaceLevel'], fallback: 3, min: 1, max: 5),
      applyDuckingToAllClips: json['applyDuckingToAllClips'] is bool
          ? json['applyDuckingToAllClips'] as bool
          : false,
      minClipMs: _clampInt(json['minClipMs'], fallback: 1200, min: 300, max: 20000),
      maxClipMs: _clampInt(json['maxClipMs'], fallback: 4800, min: 300, max: 60000),
      canvasAspectPreset: _enumByName(
        CanvasAspectPreset.values,
        json['canvasAspectPreset']?.toString(),
        CanvasAspectPreset.ratio9x16,
      ),
      transitionPreset: _enumByName(
        ImportTransitionPreset.values,
        json['transitionPreset']?.toString(),
        ImportTransitionPreset.cut,
      ),
      audioMixPreset: _enumByName(
        ImportAudioMixPreset.values,
        json['audioMixPreset']?.toString(),
        ImportAudioMixPreset.balanced,
      ),
      defaultFilterEffect: _enumByName(
        ClipFilterEffect.values,
        json['defaultFilterEffect']?.toString(),
        ClipFilterEffect.none,
      ),
    );

    return ProjectDocument(
      schemaVersion: _clampInt(json['schemaVersion'], fallback: 1, min: 1, max: 999),
      projectId: json['projectId']?.toString().trim().isNotEmpty == true
          ? json['projectId'].toString().trim()
          : 'project_${now.millisecondsSinceEpoch}',
      name: json['name']?.toString().trim().isNotEmpty == true
          ? json['name'].toString().trim()
          : 'Untitled Project',
      createdAt: _parseDateTime(json['createdAt']) ?? now,
      updatedAt: _parseDateTime(json['updatedAt']) ?? now,
      session: session,
    );
  }

  static DateTime? _parseDateTime(Object? source) {
    if (source is! String || source.isEmpty) {
      return null;
    }
    return DateTime.tryParse(source);
  }

  static List<MediaItem> _parseMediaItems(Object? source) {
    if (source is! List<dynamic>) {
      return const <MediaItem>[];
    }
    return source
        .whereType<Map<dynamic, dynamic>>()
        .map((Map<dynamic, dynamic> raw) {
          final String path = raw['path']?.toString() ?? '';
          if (path.isEmpty) {
            return null;
          }
          final String? name = raw['name']?.toString();
          final bool isPhoto = raw['isPhoto'] is bool
              ? raw['isPhoto'] as bool
              : _looksLikePhoto(path, name);
          return MediaItem(path: path, name: name, isPhoto: isPhoto);
        })
        .whereType<MediaItem>()
        .toList(growable: false);
  }

  static List<BgmItem> _parseBgmItems(Object? source) {
    if (source is! List<dynamic>) {
      return const <BgmItem>[];
    }
    return source
        .whereType<Map<dynamic, dynamic>>()
        .map((Map<dynamic, dynamic> raw) {
          final String path = raw['path']?.toString() ?? '';
          if (path.isEmpty) {
            return null;
          }
          return BgmItem(path: path, name: raw['name']?.toString());
        })
        .whereType<BgmItem>()
        .toList(growable: false);
  }

  static bool _looksLikePhoto(String path, String? name) {
    final String? extFromName = _extractExt(name ?? '');
    final String? extFromPath = _extractExt(path);
    final String ext = (extFromName ?? extFromPath ?? '').toLowerCase();
    return _photoExts.contains(ext);
  }

  static String? _extractExt(String value) {
    final int dot = value.lastIndexOf('.');
    if (dot < 0 || dot == value.length - 1) {
      return null;
    }
    return value.substring(dot + 1);
  }

  static int _clampInt(
    Object? value, {
    required int fallback,
    required int min,
    required int max,
  }) {
    final int parsed = switch (value) {
      int i => i,
      String s => int.tryParse(s) ?? fallback,
      _ => fallback,
    };
    return parsed.clamp(min, max);
  }

  static T _enumByName<T extends Enum>(List<T> values, String? rawName, T fallback) {
    if (rawName == null || rawName.isEmpty) {
      return fallback;
    }
    for (final T value in values) {
      if (value.name == rawName) {
        return value;
      }
    }
    return fallback;
  }
}
