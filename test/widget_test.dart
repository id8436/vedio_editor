import 'package:beat_clip/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BeatClip app boots import screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: BeatClipApp()));
    await tester.pumpAndSettle();

    expect(find.text('BeatClip - Import'), findsOneWidget);
    expect(find.text('Analyze & Open Editor'), findsOneWidget);
  });
}
