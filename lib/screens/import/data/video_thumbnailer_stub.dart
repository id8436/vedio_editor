import 'dart:typed_data';

/// Stub for non-web platforms.
/// On native, thumbnail extraction is handled by the video_thumbnail plugin
/// inside media_tile.dart, so this stub always returns null.
Future<Uint8List?> extractWebVideoThumbnail(
  Uint8List bytes,
  String fileName,
) async =>
    null;
