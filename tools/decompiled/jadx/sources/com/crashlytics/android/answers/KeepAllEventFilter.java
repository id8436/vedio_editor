package com.crashlytics.android.answers;

/* JADX INFO: loaded from: classes2.dex */
class KeepAllEventFilter implements EventFilter {
    KeepAllEventFilter() {
    }

    @Override // com.crashlytics.android.answers.EventFilter
    public boolean skipEvent(SessionEvent sessionEvent) {
        return false;
    }
}
