import 'package:flutter/foundation.dart' show kIsWeb;

import 'native_video_bridge.dart';
import 'video_bridge_interface.dart';
// Conditional import: web_video_bridge.dart uses dart:js_interop and only
// compiles for the web target.
import 'web_video_bridge_stub.dart'
    if (dart.library.js_interop) 'web_video_bridge.dart';

/// Returns the appropriate [VideoBridgeInterface] for the current platform.
VideoBridgeInterface createVideoBridge() {
  return kIsWeb ? createWebBridge() : NativeVideoBridge();
}
