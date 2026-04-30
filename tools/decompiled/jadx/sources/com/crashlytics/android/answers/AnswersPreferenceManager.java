package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import c.a.a.a.a.f.c;

/* JADX INFO: loaded from: classes2.dex */
class AnswersPreferenceManager {
    static final String PREFKEY_ANALYTICS_LAUNCHED = "analytics_launched";
    private final c prefStore;

    public AnswersPreferenceManager(c cVar) {
        this.prefStore = cVar;
    }

    @SuppressLint({"CommitPrefEdits"})
    public void setAnalyticsLaunched() {
        this.prefStore.a(this.prefStore.b().putBoolean(PREFKEY_ANALYTICS_LAUNCHED, true));
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean hasAnalyticsLaunched() {
        return this.prefStore.a().getBoolean(PREFKEY_ANALYTICS_LAUNCHED, false);
    }
}
