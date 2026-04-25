import 'package:beat_clip/features/analyze/data/native_analysis_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NativeAnalysisMapper', () {
    test('maps native payload into highlights and beats', () {
      const NativeAnalysisMapper mapper = NativeAnalysisMapper();

      final Map<String, dynamic> payload = <String, dynamic>{
        'duration_ms': 12000,
        'features': <Map<String, dynamic>>[
          <String, dynamic>{
            'start_ms': 0,
            'end_ms': 4000,
            'motion': 0.8,
            'scene_cut': 0.4,
            'face_count': 1,
            'audio_energy': 0.6,
            'silent': false,
          },
          <String, dynamic>{
            'start_ms': 4000,
            'end_ms': 8000,
            'motion': 0.2,
            'scene_cut': 0.1,
            'face_count': 0,
            'audio_energy': 0.1,
            'silent': true,
          },
        ],
        'beats_ms': <int>[1200, 2500, 3900],
      };

      final result = mapper.fromMap(payload);

      expect(result.durationMs, 12000);
      expect(result.highlights.length, 2);
      expect(result.beats.length, 3);
      expect(result.highlights.first.score, greaterThan(result.highlights.last.score));
      expect(result.beats.first.tsMs, 1200);
      expect(result.beats.last.tsMs, 3900);
    });
  });
}
