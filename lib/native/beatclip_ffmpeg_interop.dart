/// JS interop bindings for window.BeatclipFFmpeg and beatclipTriggerDownload.
///
/// Only compiled for the web target.
library beatclip_ffmpeg_interop;

import 'dart:js_interop';

// ── window.BeatclipFFmpeg.encode() ───────────────────────────────────────────

@JS('BeatclipFFmpeg')
external _BeatclipFFmpegNamespace get _beatclipFFmpeg;

extension type _BeatclipFFmpegNamespace._(JSObject _) implements JSObject {
  external JSPromise<JSString> encode(
    JSString cmdString,
    JSFunction? onProgress,
  );
}

/// Run [cmdString] in ffmpeg.wasm.
///
/// [onProgress] receives values 0.0–1.0 as encoding proceeds.
/// Returns a `blob:` URL pointing to the encoded MP4.
Future<String> ffmpegWasmEncode(
  String cmdString, {
  void Function(double)? onProgress,
}) {
  final JSFunction? jsCb = onProgress == null
      ? null
      : ((JSNumber p) {
          onProgress(p.toDartDouble);
        }).toJS;

  final JSPromise<JSString> promise = _beatclipFFmpeg.encode(
    cmdString.toJS,
    jsCb,
  );

  return promise.toDart.then((JSString s) => s.toDart);
}

// ── window.beatclipTriggerDownload() ─────────────────────────────────────────

@JS('beatclipTriggerDownload')
external void _beatclipTriggerDownload(JSString blobUrl, JSString filename);

/// Triggers a browser download of [blobUrl] with [filename].
void triggerBlobDownload(String blobUrl, String filename) {
  _beatclipTriggerDownload(blobUrl.toJS, filename.toJS);
}
