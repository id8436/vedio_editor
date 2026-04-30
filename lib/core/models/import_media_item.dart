import 'dart:typed_data';

/// A single source media item (video or photo) chosen by the user on the
/// import screen.
class MediaItem {
  const MediaItem({
    required this.path,
    this.name,
    this.bytes,
    this.isPhoto = false,
  });

  final String path;
  final String? name;
  final Uint8List? bytes;

  /// `true` when the item is a still image; `false` for video.
  final bool isPhoto;

  String get displayName {
    if (name != null && name!.isNotEmpty) return name!;
    if (path.startsWith('web://')) return path.substring(6);
    final int slash = path.lastIndexOf(RegExp(r'[/\\]'));
    return slash >= 0 ? path.substring(slash + 1) : path;
  }
}

/// A background music track chosen by the user on the import screen.
class BgmItem {
  const BgmItem({
    required this.path,
    this.name,
    this.bytes,
  });

  final String path;
  final String? name;
  final Uint8List? bytes;

  String get displayName {
    if (name != null && name!.isNotEmpty) return name!;
    if (path.startsWith('web://')) return path.substring(6);
    final int slash = path.lastIndexOf(RegExp(r'[/\\]'));
    return slash >= 0 ? path.substring(slash + 1) : path;
  }
}
