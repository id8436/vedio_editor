// Conditional export: use the web implementation when dart:js_interop is
// available (web targets), otherwise fall back to the stub (native targets).
export 'video_thumbnailer_stub.dart'
    if (dart.library.js_interop) 'video_thumbnailer_web.dart';

// Re-exported for convenience: callers only need to import this file.
// ignore: unused_import
export 'dart:typed_data' show Uint8List;
