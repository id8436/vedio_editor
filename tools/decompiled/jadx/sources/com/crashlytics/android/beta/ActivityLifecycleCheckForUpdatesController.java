package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Activity;
import c.a.a.a.a;
import c.a.a.a.d;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
class ActivityLifecycleCheckForUpdatesController extends AbstractCheckForUpdatesController {
    private final d callbacks = new d() { // from class: com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.1
        @Override // c.a.a.a.d
        public void onActivityStarted(Activity activity) {
            if (ActivityLifecycleCheckForUpdatesController.this.signalExternallyReady()) {
                ActivityLifecycleCheckForUpdatesController.this.executorService.submit(new Runnable() { // from class: com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivityLifecycleCheckForUpdatesController.this.checkForUpdates();
                    }
                });
            }
        }
    };
    private final ExecutorService executorService;

    public ActivityLifecycleCheckForUpdatesController(a aVar, ExecutorService executorService) {
        this.executorService = executorService;
        aVar.a(this.callbacks);
    }

    @Override // com.crashlytics.android.beta.UpdatesController
    public boolean isActivityLifecycleTriggered() {
        return true;
    }
}
