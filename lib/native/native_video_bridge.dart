import 'dart:async';

import 'package:flutter/services.dart';

import 'video_bridge_interface.dart';

class NativeVideoBridge implements VideoBridgeInterface {
  NativeVideoBridge({
    MethodChannel? channel,
    EventChannel? progressChannel,
  })  : _channel = channel ?? const MethodChannel('beatclip/native_video'),
        _progressChannel =
            progressChannel ?? const EventChannel('beatclip/render_progress');

  final MethodChannel _channel;
  final EventChannel _progressChannel;

  @override
  Future<Map<String, dynamic>> analyzeMedia(
    String mediaPath, {
    Uint8List? mediaBytes,
    String? mediaName,
  }) async {
    final Map<Object?, Object?> result = await _channel.invokeMethod(
      'analyzeMedia',
      <String, dynamic>{
        'path': mediaPath,
        ...?mediaName == null ? null : <String, dynamic>{'name': mediaName},
      },
    );

    return result.map(
      (Object? key, Object? value) => MapEntry(key.toString(), value),
    );
  }

  /// Starts a render and returns the output file path.
  /// [onProgress] receives values 0.0–1.0 during encoding.
  @override
  Future<String> render(
    String ffmpegArgs, {
    void Function(double progress)? onProgress,
  }) async {
    StreamSubscription<double>? progressSub;

    if (onProgress != null) {
      final Stream<double> progressStream = _progressChannel
          .receiveBroadcastStream()
          .map<double>((dynamic event) => (event as num).toDouble().clamp(0.0, 1.0));
      progressSub = progressStream.listen(onProgress);
    }

    try {
      final String? output = await _channel.invokeMethod<String>(
        'render',
        <String, dynamic>{'args': ffmpegArgs},
      );
      return output ?? '';
    } finally {
      // Always cancel the progress subscription when render completes or fails,
      // so the app never hangs waiting for the stream to close.
      await progressSub?.cancel();
    }
  }
}
