import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/editor_session_input.dart';

/// Holds the most recently created [EditorSessionInput] so that the drawer
/// and other screens can navigate back to edit/encode without losing context.
class CurrentSessionNotifier extends Notifier<EditorSessionInput?> {
    @override
    EditorSessionInput? build() => null;

    void setSession(EditorSessionInput? session) {
        state = session;
    }
}

final NotifierProvider<CurrentSessionNotifier, EditorSessionInput?>
        currentSessionProvider =
        NotifierProvider<CurrentSessionNotifier, EditorSessionInput?>(
            CurrentSessionNotifier.new,
        );
