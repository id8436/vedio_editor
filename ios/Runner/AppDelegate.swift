import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  private let channelName = "beatclip/native_video"
  private let progressChannelName = "beatclip/render_progress"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    guard let controller = window?.rootViewController as? FlutterViewController else {
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    // ── MethodChannel ────────────────────────────────────────────────────
    let channel = FlutterMethodChannel(
      name: channelName,
      binaryMessenger: controller.binaryMessenger
    )

    channel.setMethodCallHandler { call, result in
      switch call.method {
      case "analyzeMedia":
        let args = call.arguments as? [String: Any]
        let path = args?["path"] as? String ?? ""
        result([
          "duration_ms": 30000,
          "source": path,
          "features": [
            ["start_ms": 0, "end_ms": 5000, "motion": 0.85, "scene_cut": 0.5, "face_count": 1, "audio_energy": 0.62, "silent": false],
            ["start_ms": 5000, "end_ms": 10000, "motion": 0.2, "scene_cut": 0.15, "face_count": 0, "audio_energy": 0.1, "silent": true],
            ["start_ms": 10000, "end_ms": 15000, "motion": 0.7, "scene_cut": 0.75, "face_count": 2, "audio_energy": 0.7, "silent": false],
            ["start_ms": 15000, "end_ms": 20000, "motion": 0.9, "scene_cut": 0.42, "face_count": 3, "audio_energy": 0.65, "silent": false],
            ["start_ms": 20000, "end_ms": 30000, "motion": 0.45, "scene_cut": 0.3, "face_count": 0, "audio_energy": 0.55, "silent": false],
          ],
          "beats_ms": [1200, 2400, 3600, 4800, 6200, 7600, 9000, 10400, 11800, 13200, 14600, 16000, 17600, 19200, 20800, 22400, 24000, 25800, 27600, 29400],
        ])

      case "render":
        // Simulate a 1-second encode before returning the result.
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
          let args = call.arguments as? [String: Any]
          let ffmpegArgs = args?["args"] as? String ?? ""
          result("render_stub_complete:\(ffmpegArgs.prefix(32))")
        }

      default:
        result(FlutterMethodNotImplemented)
      }
    }

    // ── EventChannel: fake render progress ───────────────────────────────
    let progressChannel = FlutterEventChannel(
      name: progressChannelName,
      binaryMessenger: controller.binaryMessenger
    )
    progressChannel.setStreamHandler(RenderProgressStreamHandler())

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

/// Sends fake progress events: 0.0 → 0.3 → 0.6 → 1.0, 250 ms apart, then ends.
private class RenderProgressStreamHandler: NSObject, FlutterStreamHandler {
  private var timer: Timer?
  private let steps: [Double] = [0.0, 0.3, 0.6, 1.0]
  private var stepIndex = 0

  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    stepIndex = 0
    timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { [weak self] t in
      guard let self else { t.invalidate(); return }
      if self.stepIndex < self.steps.count {
        events(self.steps[self.stepIndex])
        self.stepIndex += 1
      } else {
        t.invalidate()
        events(FlutterEndOfEventStream)
      }
    }
    return nil
  }

  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    timer?.invalidate()
    timer = nil
    return nil
  }
}
