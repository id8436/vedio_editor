import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:web/web.dart' as web;

/// Extracts a single video frame as JPEG bytes using the browser's
/// HTMLVideoElement + HTMLCanvasElement APIs.
///
/// Returns null if the browser cannot decode the video, if bytes are empty,
/// or if any step times out.
Future<Uint8List?> extractWebVideoThumbnail(
  Uint8List bytes,
  String fileName,
) async {
  if (bytes.isEmpty) return null;

  final String mime = _guessMime(fileName);
  final web.Blob blob = web.Blob(
    <JSAny>[bytes.toJS].toJS,
    web.BlobPropertyBag(type: mime),
  );
  final String objectUrl = web.URL.createObjectURL(blob);

  try {
    final web.HTMLVideoElement video = web.HTMLVideoElement()
      ..src = objectUrl
      ..muted = true
      ..preload = 'auto';

    // ── Step 1: wait for frame-decodable state ───────────────────────────
    final Completer<bool> metaCompleter = Completer<bool>();

    final JSFunction onMeta = ((web.Event _) {
      if (!metaCompleter.isCompleted) metaCompleter.complete(true);
    }).toJS;
    final JSFunction onError = ((web.Event _) {
      if (!metaCompleter.isCompleted) metaCompleter.complete(false);
    }).toJS;

    video.addEventListener('loadeddata', onMeta);
    video.addEventListener('error', onError);
    video.load();

    final bool metaOk = await Future.any(<Future<bool>>[
      metaCompleter.future,
      Future<bool>.delayed(const Duration(seconds: 8), () => false),
    ]);

    video.removeEventListener('loadeddata', onMeta);
    video.removeEventListener('error', onError);

    if (!metaOk) return null;

    // ── Step 2: seek to ~1 s (or midpoint) ───────────────────────────────
    final double duration = video.duration;
    if (duration.isNaN || duration <= 0) return null;

    final double seekTo = duration > 1.0 ? 1.0 : duration / 2;

    final Completer<void> seekCompleter = Completer<void>();
    final JSFunction onSeeked = ((web.Event _) {
      if (!seekCompleter.isCompleted) seekCompleter.complete();
    }).toJS;

    video.addEventListener('seeked', onSeeked);
    video.currentTime = seekTo;

    await Future.any(<Future<void>>[
      seekCompleter.future,
      Future<void>.delayed(const Duration(seconds: 4)),
    ]);

    video.removeEventListener('seeked', onSeeked);

    // ── Step 3: draw to canvas and export JPEG ────────────────────────────
    final int vw = video.videoWidth;
    final int vh = video.videoHeight;
    if (vw == 0 || vh == 0) return null;

    const int maxW = 240;
    final int canvasW = vw > maxW ? maxW : vw;
    final int canvasH = (vh * canvasW / vw).round().clamp(1, 9999);

    final web.HTMLCanvasElement canvas = web.HTMLCanvasElement()
      ..width = canvasW
      ..height = canvasH;

    final web.CanvasRenderingContext2D ctx =
        canvas.getContext('2d')! as web.CanvasRenderingContext2D;
    ctx.drawImage(video, 0, 0, canvasW.toDouble(), canvasH.toDouble());

    final String imageDataUrl = canvas.toDataURL('image/jpeg', 0.75.toJS);
    final int commaIdx = imageDataUrl.indexOf(',');
    if (commaIdx < 0) return null;

    return base64Decode(imageDataUrl.substring(commaIdx + 1));
  } catch (_) {
    return null;
  } finally {
    web.URL.revokeObjectURL(objectUrl);
  }
}

String _guessMime(String name) {
  final String lower = name.toLowerCase();
  if (lower.endsWith('.mp4') || lower.endsWith('.m4v')) return 'video/mp4';
  if (lower.endsWith('.webm')) return 'video/webm';
  if (lower.endsWith('.mov')) return 'video/quicktime';
  if (lower.endsWith('.avi')) return 'video/x-msvideo';
  if (lower.endsWith('.mkv')) return 'video/x-matroska';
  if (lower.endsWith('.3gp')) return 'video/3gpp';
  return 'video/mp4';
}
