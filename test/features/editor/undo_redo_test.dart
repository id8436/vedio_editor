import 'package:beat_clip/features/editor/presentation/editor_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EditorController – undo/redo', () {
    late ProviderContainer container;
    late EditorController controller;

    setUp(() {
      container = ProviderContainer();
      addTearDown(container.dispose);
      controller = container.read(editorControllerProvider.notifier);
    });

    test('initially canUndo and canRedo are false', () {
      final EditorState state = container.read(editorControllerProvider);
      expect(state.canUndo, isFalse);
      expect(state.canRedo, isFalse);
    });

    test('canUndo becomes true after updateTargetDurationMs', () {
      controller.updateTargetDurationMs(20000);
      final EditorState state = container.read(editorControllerProvider);
      expect(state.canUndo, isTrue);
      expect(state.canRedo, isFalse);
    });

    test('undo restores previous targetDurationMs', () {
      final int original =
          container.read(editorControllerProvider).project.targetDurationMs;
      controller.updateTargetDurationMs(60000);
      controller.undo();
      final EditorState afterUndo = container.read(editorControllerProvider);
      expect(afterUndo.project.targetDurationMs, equals(original));
      expect(afterUndo.canUndo, isFalse);
      expect(afterUndo.canRedo, isTrue);
    });

    test('redo re-applies the change', () {
      controller.updateTargetDurationMs(60000);
      controller.undo();
      controller.redo();
      final EditorState afterRedo = container.read(editorControllerProvider);
      expect(afterRedo.project.targetDurationMs, equals(60000));
      expect(afterRedo.canRedo, isFalse);
      expect(afterRedo.canUndo, isTrue);
    });

    test('new change after undo clears redo stack', () {
      controller.updateTargetDurationMs(60000);
      controller.undo();
      controller.updateTargetDurationMs(45000);
      final EditorState state = container.read(editorControllerProvider);
      expect(state.canRedo, isFalse);
      expect(state.project.targetDurationMs, equals(45000));
    });

    test('multiple undos restore in correct order', () {
      controller.updateTargetDurationMs(40000);
      controller.updateTargetDurationMs(50000);
      controller.updateTargetDurationMs(60000);
      controller.undo();
      expect(container.read(editorControllerProvider).project.targetDurationMs,
          equals(50000));
      controller.undo();
      expect(container.read(editorControllerProvider).project.targetDurationMs,
          equals(40000));
    });

    test('undo does nothing when stack is empty', () {
      final EditorState before = container.read(editorControllerProvider);
      controller.undo();
      final EditorState after = container.read(editorControllerProvider);
      expect(after.project.targetDurationMs,
          equals(before.project.targetDurationMs));
    });

    test('redo does nothing when stack is empty', () {
      controller.updateTargetDurationMs(50000);
      controller.redo(); // no-op: redo stack is empty
      expect(
          container.read(editorControllerProvider).project.targetDurationMs,
          equals(50000));
    });
  });
}
