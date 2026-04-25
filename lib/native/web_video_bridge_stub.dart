// Non-web stub: this function should never be called at runtime because
// video_bridge_factory.dart checks kIsWeb before calling createWebBridge().
// It exists only so the non-web build can resolve the symbol.
import 'native_video_bridge.dart';
import 'video_bridge_interface.dart';

VideoBridgeInterface createWebBridge() => NativeVideoBridge();
