package com.example.beat_clip

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*

class MainActivity : FlutterActivity() {
	private val channelName = "beatclip/native_video"
	private val progressChannelName = "beatclip/render_progress"
	private val mainScope = MainScope()

	override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
		super.configureFlutterEngine(flutterEngine)

		MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
			.setMethodCallHandler { call, result ->
				when (call.method) {
					"analyzeMedia" -> {
						val path = call.argument<String>("path") ?: ""
						result.success(
							mapOf(
								"duration_ms" to 30000,
								"source" to path,
								"features" to listOf(
									mapOf("start_ms" to 0, "end_ms" to 5000, "motion" to 0.85, "scene_cut" to 0.5, "face_count" to 1, "audio_energy" to 0.62, "silent" to false),
									mapOf("start_ms" to 5000, "end_ms" to 10000, "motion" to 0.2, "scene_cut" to 0.15, "face_count" to 0, "audio_energy" to 0.1, "silent" to true),
									mapOf("start_ms" to 10000, "end_ms" to 15000, "motion" to 0.7, "scene_cut" to 0.75, "face_count" to 2, "audio_energy" to 0.7, "silent" to false),
									mapOf("start_ms" to 15000, "end_ms" to 20000, "motion" to 0.9, "scene_cut" to 0.42, "face_count" to 3, "audio_energy" to 0.65, "silent" to false),
									mapOf("start_ms" to 20000, "end_ms" to 30000, "motion" to 0.45, "scene_cut" to 0.3, "face_count" to 0, "audio_energy" to 0.55, "silent" to false),
								),
								"beats_ms" to listOf(1200, 2400, 3600, 4800, 6200, 7600, 9000, 10400, 11800, 13200, 14600, 16000, 17600, 19200, 20800, 22400, 24000, 25800, 27600, 29400),
							)
						)
					}

					"render" -> {
						val args = call.argument<String>("args") ?: ""
						// Render stub: simulate a 1-second encode before returning.
						// The EventChannel streams fake progress updates in parallel.
						mainScope.launch {
							delay(1000)
							result.success("render_stub_complete:${args.take(32)}")
						}
					}

					else -> result.notImplemented()
				}
			}

		// EventChannel: stream fake render progress 0.0 → 0.3 → 0.6 → 1.0
		EventChannel(flutterEngine.dartExecutor.binaryMessenger, progressChannelName)
			.setStreamHandler(object : EventChannel.StreamHandler {
				private var job: Job? = null

				override fun onListen(arguments: Any?, events: EventChannel.EventSink) {
					job = mainScope.launch {
						for (step in listOf(0.0, 0.3, 0.6, 1.0)) {
							events.success(step)
							delay(250)
						}
						events.endOfStream()
					}
				}

				override fun onCancel(arguments: Any?) {
					job?.cancel()
					job = null
				}
			})
	}

	override fun onDestroy() {
		mainScope.cancel()
		super.onDestroy()
	}
}
