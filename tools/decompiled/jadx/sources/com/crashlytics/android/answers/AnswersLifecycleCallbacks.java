package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import c.a.a.a.d;
import com.crashlytics.android.answers.SessionEvent;

/* JADX INFO: loaded from: classes2.dex */
class AnswersLifecycleCallbacks extends d {
    private final SessionAnalyticsManager analyticsManager;

    public AnswersLifecycleCallbacks(SessionAnalyticsManager sessionAnalyticsManager) {
        this.analyticsManager = sessionAnalyticsManager;
    }

    @Override // c.a.a.a.d
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.CREATE);
    }

    @Override // c.a.a.a.d
    public void onActivityStarted(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.START);
    }

    @Override // c.a.a.a.d
    public void onActivityResumed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.RESUME);
    }

    @Override // c.a.a.a.d
    public void onActivityPaused(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.PAUSE);
    }

    @Override // c.a.a.a.d
    public void onActivityStopped(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.STOP);
    }

    @Override // c.a.a.a.d
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.SAVE_INSTANCE_STATE);
    }

    @Override // c.a.a.a.d
    public void onActivityDestroyed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.DESTROY);
    }
}
