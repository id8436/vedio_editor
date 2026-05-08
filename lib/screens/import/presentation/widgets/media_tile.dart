import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../core/models/import_media_item.dart';
import '../../data/video_thumbnailer.dart';

/// Card widget that shows a video/photo thumbnail plus metadata for one
/// [MediaItem] on the import screen.
///
/// On Chrome the thumbnail is extracted from raw bytes via the browser's
/// HTMLVideoElement + Canvas API. On native platforms the [VideoThumbnail]
/// plugin is used instead.
class ImportMediaTile extends StatefulWidget {
  const ImportMediaTile({
    required this.index,
    required this.item,
    required this.onRemove,
    super.key,
  });

  final int index;
  final MediaItem item;
  final VoidCallback onRemove;

  @override
  State<ImportMediaTile> createState() => _ImportMediaTileState();
}

class _ImportMediaTileState extends State<ImportMediaTile> {
  Uint8List? _thumbnail;
  bool _thumbLoading = true;

  @override
  void initState() {
    super.initState();
    _loadThumbnail();
  }

  Future<void> _loadThumbnail() async {
    Uint8List? result;
    try {
      if (widget.item.isPhoto) {
        // Photos: bytes are always available from FilePicker(withData:true).
        result = widget.item.bytes;
      } else if (kIsWeb) {
        // Web: extract a frame via the browser's video+canvas API.
        final Uint8List? bytes = widget.item.bytes;
        if (bytes != null && bytes.isNotEmpty) {
          result = await extractWebVideoThumbnail(
            bytes,
            widget.item.displayName,
          );
        }
        // If extraction failed, leave result = null → show icon fallback.
      } else {
        // Native platforms: use the video_thumbnail plugin (multi-strategy).
        result = await _nativeThumbnail(widget.item.path);
        result ??= widget.item.bytes;
      }
    } catch (e) {
      debugPrint('Thumbnail error for ${widget.item.displayName}: $e');
      result ??= widget.item.bytes;
    }

    if (mounted) {
      setState(() {
        _thumbnail = result;
        _thumbLoading = false;
      });
    }
  }

  /// Three-strategy native thumbnail extraction via [VideoThumbnail].
  Future<Uint8List?> _nativeThumbnail(String path) async {
    // Strategy 1 – JPEG, seek to 1 s
    try {
      final Uint8List? r = await VideoThumbnail.thumbnailData(
        video: path,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 240,
        maxHeight: 180,
        quality: 75,
        timeMs: 1000,
      );
      if (r != null && r.isNotEmpty) return r;
    } catch (e) {
      debugPrint('JPEG thumbnail failed for ${widget.item.displayName}: $e');
    }

    // Strategy 2 – PNG, seek to 0.5 s
    try {
      final Uint8List? r = await VideoThumbnail.thumbnailData(
        video: path,
        imageFormat: ImageFormat.PNG,
        maxWidth: 200,
        maxHeight: 150,
        quality: 65,
        timeMs: 500,
      );
      if (r != null && r.isNotEmpty) return r;
    } catch (e) {
      debugPrint('PNG thumbnail failed for ${widget.item.displayName}: $e');
    }

    // Strategy 3 – JPEG, very first frame
    try {
      final Uint8List? r = await VideoThumbnail.thumbnailData(
        video: path,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 180,
        maxHeight: 135,
        quality: 55,
        timeMs: 100,
      );
      if (r != null && r.isNotEmpty) return r;
    } catch (e) {
      debugPrint('Fallback thumbnail failed for ${widget.item.displayName}: $e');
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final Widget preview;
    if (_thumbLoading) {
      preview = _ThumbBox(
        width: 148,
        height: 111,
        child: const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    } else if (_thumbnail != null) {
      preview = _ThumbBox(
        width: 148,
        height: 111,
        child: Image.memory(_thumbnail!, fit: BoxFit.cover),
      );
    } else {
      preview = _ThumbBox(
        width: 148,
        height: 111,
        color: widget.item.isPhoto
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).colorScheme.tertiaryContainer,
        child: Icon(
          widget.item.isPhoto ? Icons.photo : Icons.video_file,
          size: 28,
        ),
      );
    }

    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                preview,
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      '${widget.index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                      color: Colors.white,
                    ),
                    tooltip: 'Remove',
                    onPressed: widget.onRemove,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 4, 6, 2),
              child: Text(
                widget.item.displayName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 0, 6, 4),
              child: Row(
                children: <Widget>[
                  Icon(
                    widget.item.isPhoto ? Icons.photo : Icons.video_file,
                    size: 12,
                    color: widget.item.isPhoto
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.tertiary,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      widget.item.isPhoto ? 'Photo' : 'Video',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.drag_handle, size: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── _ThumbBox ─────────────────────────────────────────────────────────────

/// Rounded clip container for thumbnail previews.
class _ThumbBox extends StatelessWidget {
  const _ThumbBox({
    required this.child,
    this.color,
    this.width = 56,
    this.height = 56,
  });

  final Widget child;
  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: ColoredBox(
        color: color ?? Theme.of(context).colorScheme.surfaceContainerHighest,
        child: SizedBox(width: width, height: height, child: child),
      ),
    );
  }
}
