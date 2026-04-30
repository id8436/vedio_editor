package com.twitter.sdk.android.core.internal;

import android.app.Application;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ActivityLifecycleManager.java */
/* JADX INFO: loaded from: classes3.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Application.ActivityLifecycleCallbacks> f3922a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application f3923b;

    b(Application application) {
        this.f3923b = application;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(d dVar) {
        if (this.f3923b == null) {
            return false;
        }
        c cVar = new c(this, dVar);
        this.f3923b.registerActivityLifecycleCallbacks(cVar);
        this.f3922a.add(cVar);
        return true;
    }
}
