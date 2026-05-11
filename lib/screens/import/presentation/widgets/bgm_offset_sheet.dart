import 'dart:async';
import 'dart:convert' show base64Encode;
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../core/models/import_media_item.dart';
import '../../data/audio_waveform_extractor.dart';

class ImportBgmOffsetSheet extends StatefulWidget {
  const ImportBgmOffsetSheet({
    required this.item,
    super.key,
  });

  final BgmItem item;

  @override
  State<ImportBgmOffsetSheet> createState() => _ImportBgmOffsetSheetState();
}

class _ImportBgmOffsetSheetState extends State<ImportBgmOffsetSheet> {
  static const int _minimumTailMs = 250;
  static const List<double> _fallbackBars = <double>[
    0.32,
    0.42,
    0.56,
    0.38,
    0.62,
    0.44,
    0.74,
    0.48,
    0.58,
    0.34,
    0.68,
    0.40,
  ];

  AudioPlayer? _player;
  AudioWaveformData? _waveform;
  bool _loading = true;
  bool _playing = false;
  int _durationMs = 0;
  int _startOffsetMs = 0;
  String? _error;
  StreamSubscription<PlayerState>? _playerStateSub;

  @override
  void initState() {
    super.initState();
    _startOffsetMs = widget.item.startOffsetMs;
    unawaited(_initialize());
  }

  @override
  void dispose() {
    _playerStateSub?.cancel();
    unawaited(_player?.dispose());
    super.dispose();
  }

  Future<void> _initialize() async {
    final AudioPlayer player = AudioPlayer();
    try {
      final Future<AudioWaveformData?> waveformFuture = extractAudioWaveform(
        widget.item.bytes,
        sourcePath: widget.item.path,
        fileName: widget.item.displayName,
      );
      final Duration? loadedDuration = await _loadPlayer(player);
      final AudioWaveformData? waveform = await waveformFuture;
      final int durationMs = waveform?.durationMs ?? loadedDuration?.inMilliseconds ?? 0;

      if (!mounted) {
        await player.dispose();
        return;
      }

      _playerStateSub = player.playerStateStream.listen((PlayerState state) {
        if (!mounted) {
          return;
        }
        setState(() {
          _playing = state.playing;
        });
      });

      setState(() {
        _player = player;
        _waveform = waveform;
        _durationMs = durationMs;
        _startOffsetMs = _clampOffset(_startOffsetMs, durationMs);
        _loading = false;
      });
    } catch (_) {
      await player.dispose();
      if (!mounted) {
        return;
      }
      setState(() {
        _loading = false;
        _error = 'Audio preview could not be prepared.';
      });
    }
  }

  Future<Duration?> _loadPlayer(AudioPlayer player) async {
    if (kIsWeb) {
      final Uint8List? bytes = widget.item.bytes;
      if (bytes != null && bytes.isNotEmpty) {
        final String b64 = base64Encode(bytes);
        return player.setUrl('${_dataUriPrefix(widget.item.displayName)}$b64');
      }
      return player.setUrl(widget.item.path);
    }

    if (widget.item.path.startsWith('web://')) {
      final Uint8List? bytes = widget.item.bytes;
      if (bytes == null || bytes.isEmpty) {
        return null;
      }
      final String b64 = base64Encode(bytes);
      return player.setUrl('${_dataUriPrefix(widget.item.displayName)}$b64');
    }

    return player.setFilePath(widget.item.path);
  }

  String _dataUriPrefix(String name) {
    final String lower = name.toLowerCase();
    if (lower.endsWith('.wav')) return 'data:audio/wav;base64,';
    if (lower.endsWith('.ogg')) return 'data:audio/ogg;base64,';
    if (lower.endsWith('.aac')) return 'data:audio/aac;base64,';
    if (lower.endsWith('.flac')) return 'data:audio/flac;base64,';
    if (lower.endsWith('.m4a')) return 'data:audio/mp4;base64,';
    return 'data:audio/mpeg;base64,';
  }

  int _clampOffset(int value, int durationMs) {
    if (durationMs <= _minimumTailMs) {
      return 0;
    }
    return value.clamp(0, durationMs - _minimumTailMs);
  }

  void _setStartOffset(int value) {
    final int next = _clampOffset(value, _durationMs);
    if (next == _startOffsetMs) {
      return;
    }
    setState(() {
      _startOffsetMs = next;
    });
    if (_playing) {
      unawaited(_player?.seek(Duration(milliseconds: next)));
    }
  }

  void _handleWaveformPointer(double dx, double width) {
    if (_durationMs <= 0 || width <= 0) {
      return;
    }
    final double ratio = (dx / width).clamp(0.0, 1.0);
    _setStartOffset((_durationMs * ratio).round());
  }

  Future<void> _togglePreview() async {
    final AudioPlayer? player = _player;
    if (player == null) {
      return;
    }

    if (_playing) {
      await player.pause();
      return;
    }

    await player.seek(Duration(milliseconds: _startOffsetMs));
    await player.play();
  }

  void _nudge(int deltaMs) {
    _setStartOffset(_startOffsetMs + deltaMs);
  }

  String _formatDuration(int ms) {
    final int totalSeconds = (ms / 1000).floor();
    final int minutes = totalSeconds ~/ 60;
    final int seconds = totalSeconds % 60;
    final int tenths = ((ms % 1000) / 100).floor();
    return '$minutes:${seconds.toString().padLeft(2, '0')}.$tenths';
  }

  @override
  Widget build(BuildContext context) {
    final List<double> waveformSamples = _waveform?.samples.isNotEmpty == true
        ? _waveform!.samples
        : List<double>.generate(
            84,
            (int index) => _fallbackBars[index % _fallbackBars.length],
            growable: false,
          );
    final int remainingMs = _durationMs <= 0 ? 0 : (_durationMs - _startOffsetMs).clamp(0, _durationMs);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Audio Start Point', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              widget.item.displayName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Drag left or right on the waveform to choose where the BGM should start.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            if (_loading)
              const LinearProgressIndicator()
            else if (_error != null)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  _error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.onErrorContainer),
                ),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 168,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFF10131A),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
                    ),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTapDown: (TapDownDetails details) {
                            _handleWaveformPointer(details.localPosition.dx, constraints.maxWidth);
                          },
                          onHorizontalDragStart: (DragStartDetails details) {
                            _handleWaveformPointer(details.localPosition.dx, constraints.maxWidth);
                          },
                          onHorizontalDragUpdate: (DragUpdateDetails details) {
                            _handleWaveformPointer(details.localPosition.dx, constraints.maxWidth);
                          },
                          child: CustomPaint(
                            painter: _WaveformPainter(
                              samples: waveformSamples,
                              durationMs: _durationMs,
                              startOffsetMs: _startOffsetMs,
                            ),
                            child: const SizedBox.expand(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (_waveform == null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Waveform detail is limited on this platform, but the start point still applies.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  Row(
                    children: <Widget>[
                      _MetricChip(
                        icon: Icons.flag_outlined,
                        label: 'Start',
                        value: _formatDuration(_startOffsetMs),
                      ),
                      const SizedBox(width: 8),
                      _MetricChip(
                        icon: Icons.timelapse,
                        label: 'Remain',
                        value: _formatDuration(remainingMs),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Slider(
                    min: 0,
                    max: _durationMs <= 0 ? 1 : _durationMs.toDouble(),
                    value: _durationMs <= 0
                        ? 0
                        : _startOffsetMs.clamp(0, _durationMs).toDouble(),
                    onChanged: _durationMs <= 0
                        ? null
                        : (double value) {
                            _setStartOffset(value.round());
                          },
                  ),
                  Row(
                    children: <Widget>[
                      OutlinedButton.icon(
                        onPressed: _durationMs <= 0 ? null : () => _nudge(-1000),
                        icon: const Icon(Icons.keyboard_arrow_left),
                        label: const Text('1s'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton.tonalIcon(
                        onPressed: _durationMs <= 0 ? null : _togglePreview,
                        icon: Icon(_playing ? Icons.pause : Icons.play_arrow),
                        label: Text(_playing ? 'Pause' : 'Preview'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: _durationMs <= 0 ? null : () => _nudge(1000),
                        icon: const Icon(Icons.keyboard_arrow_right),
                        label: const Text('1s'),
                      ),
                    ],
                  ),
                ],
              ),
            const Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: _loading || _error != null
                        ? null
                        : () {
                            Navigator.of(context).pop(
                              widget.item.copyWith(startOffsetMs: _startOffsetMs),
                            );
                          },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 18),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(label, style: Theme.of(context).textTheme.labelMedium),
                  Text(value, style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WaveformPainter extends CustomPainter {
  const _WaveformPainter({
    required this.samples,
    required this.durationMs,
    required this.startOffsetMs,
  });

  final List<double> samples;
  final int durationMs;
  final int startOffsetMs;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final RRect rrect = RRect.fromRectAndRadius(rect, const Radius.circular(18));

    final Paint backgroundPaint = Paint()..color = const Color(0xFF141A24);
    canvas.drawRRect(rrect, backgroundPaint);

    final double ratio = durationMs <= 0 ? 0 : (startOffsetMs / durationMs).clamp(0.0, 1.0);
    final double startX = ratio * size.width;

    final Paint skipPaint = Paint()..color = const Color(0xFF5A6478).withValues(alpha: 0.28);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, startX, size.height),
        const Radius.circular(18),
      ),
      skipPaint,
    );

    final Paint activePaint = Paint()..color = const Color(0xFF77D3FF);
    final Paint inactivePaint = Paint()..color = Colors.white.withValues(alpha: 0.28);
    final int count = samples.isEmpty ? 1 : samples.length;
    final double gap = 2;
    final double rawBarWidth = (size.width - gap * (count - 1)) / count;
    final double barWidth = rawBarWidth.clamp(2.0, 8.0);
    final double verticalCenter = size.height / 2;

    for (int i = 0; i < count; i++) {
      final double amplitude = (samples.isEmpty ? 0.2 : samples[i]).clamp(0.08, 1.0);
      final double height = (size.height * 0.78 * amplitude).clamp(10.0, size.height - 12);
      final double left = i * (barWidth + gap);
      final Rect barRect = Rect.fromLTWH(
        left,
        verticalCenter - height / 2,
        barWidth,
        height,
      );
      final bool isSkipped = left + (barWidth / 2) < startX;
      canvas.drawRRect(
        RRect.fromRectAndRadius(barRect, const Radius.circular(99)),
        isSkipped ? inactivePaint : activePaint,
      );
    }

    final Paint handlePaint = Paint()..color = Colors.white;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH((startX - 1.5).clamp(0.0, size.width - 3), 12, 3, size.height - 24),
        const Radius.circular(99),
      ),
      handlePaint,
    );

    final Paint knobPaint = Paint()..color = const Color(0xFF77D3FF);
    canvas.drawCircle(Offset(startX.clamp(8.0, size.width - 8), 20), 7, knobPaint);
  }

  @override
  bool shouldRepaint(covariant _WaveformPainter oldDelegate) {
    return oldDelegate.samples != samples ||
        oldDelegate.durationMs != durationMs ||
        oldDelegate.startOffsetMs != startOffsetMs;
  }
}
