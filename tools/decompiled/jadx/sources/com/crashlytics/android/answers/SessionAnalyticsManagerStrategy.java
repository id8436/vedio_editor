package com.crashlytics.android.answers;

import c.a.a.a.a.d.j;
import c.a.a.a.a.g.b;
import com.crashlytics.android.answers.SessionEvent;

/* JADX INFO: loaded from: classes2.dex */
interface SessionAnalyticsManagerStrategy<T> extends j<T> {
    void processEvent(SessionEvent.Builder builder);

    void setAnalyticsSettingsData(b bVar, String str);
}
