package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Looper;
import c.a.a.a.a.g.b;
import c.a.a.a.f;
import com.crashlytics.android.answers.SessionEvent;

/* JADX INFO: loaded from: classes2.dex */
class SessionAnalyticsManager {
    static final String ON_CRASH_ERROR_MSG = "onCrash called from main thread!!!";
    final AnswersEventsHandler eventsHandler;

    public SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler) {
        this.eventsHandler = answersEventsHandler;
    }

    public void onCustom(CustomEvent customEvent) {
        f.h().a(Answers.TAG, "Logged custom event: " + customEvent);
        this.eventsHandler.processEventAsync(SessionEvent.customEventBuilder(customEvent));
    }

    public void onPredefined(PredefinedEvent predefinedEvent) {
        f.h().a(Answers.TAG, "Logged predefined event: " + predefinedEvent);
        this.eventsHandler.processEventAsync(SessionEvent.predefinedEventBuilder(predefinedEvent));
    }

    public void onCrash(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(ON_CRASH_ERROR_MSG);
        }
        f.h().a(Answers.TAG, "Logged crash");
        this.eventsHandler.processEventSync(SessionEvent.crashEventBuilder(str));
    }

    public void onError(String str) {
        f.h().a(Answers.TAG, "Logged error");
        this.eventsHandler.processEventAsync(SessionEvent.errorEventBuilder(str));
    }

    public void onInstall() {
        f.h().a(Answers.TAG, "Logged install");
        this.eventsHandler.processEventAsyncAndFlush(SessionEvent.installEventBuilder());
    }

    public void onLifecycle(Activity activity, SessionEvent.Type type) {
        f.h().a(Answers.TAG, "Logged lifecycle event: " + type.name());
        this.eventsHandler.processEventAsync(SessionEvent.lifecycleEventBuilder(type, activity));
    }

    public void setAnalyticsSettingsData(b bVar, String str) {
        this.eventsHandler.setAnalyticsSettingsData(bVar, str);
    }

    public void disable() {
        this.eventsHandler.disable();
    }
}
