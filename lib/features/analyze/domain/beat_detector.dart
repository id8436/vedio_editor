import '../../../core/time/time_quantizer.dart';

class BeatDetector {
  const BeatDetector({TimeQuantizer? quantizer})
      : _quantizer = quantizer ?? const TimeQuantizer();

  final TimeQuantizer _quantizer;

  List<int> detectBeatsMs(List<double> energy, {required int hopMs}) {
    if (energy.isEmpty) {
      return <int>[];
    }

    final List<int> beats = <int>[];
    const int lookback = 12;

    for (int i = lookback; i < energy.length; i++) {
      final double current = energy[i];
      final List<double> window = energy.sublist(i - lookback, i);
      final double mean = window.reduce((a, b) => a + b) / window.length;
      final double threshold = mean * 1.35;

      if (current >= threshold) {
        beats.add(_quantizer.quantizeMs(i * hopMs));
      }
    }

    return beats.toSet().toList()..sort();
  }
}
