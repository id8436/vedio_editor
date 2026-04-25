class TimeQuantizer {
  const TimeQuantizer({this.quantizationMs = 100});

  final int quantizationMs;

  int quantizeMs(int valueMs) {
    if (valueMs <= 0) {
      return 0;
    }
    final int q = quantizationMs;
    return ((valueMs + (q ~/ 2)) ~/ q) * q;
  }

  double quantizeSeconds(double valueSeconds) {
    final int valueMs = (valueSeconds * 1000).round();
    return quantizeMs(valueMs) / 1000.0;
  }
}
