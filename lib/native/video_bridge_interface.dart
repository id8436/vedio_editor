import 'dart:typed_data';

/// Abstract interface for platform-specific video analysis and rendering.
/// Implementations: [NativeVideoBridge] (Android/iOS), [WebVideoBridge] (web stub).
abstract class VideoBridgeInterface {
  /// Analyse media and return raw feature map.
  ///
  /// [mediaPath] is the native/blob/http path.
  /// [mediaBytes] can be provided for web fallback scenarios.
  Future<Map<String, dynamic>> analyzeMedia(
    String mediaPath, {
    Uint8List? mediaBytes,
    String? mediaName,
  });

  /// Render using [ffmpegArgs] and return output file path.
  /// [onProgress] receives 0.0–1.0 progress updates.
  Future<String> render(
    String ffmpegArgs, {
    void Function(double progress)? onProgress,
  });
}
