package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import com.twitter.sdk.android.core.v;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: AuthState.java */
/* JADX INFO: loaded from: classes3.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicReference<a> f3886a = new AtomicReference<>(null);

    b() {
    }

    public boolean a(Activity activity, a aVar) {
        boolean zCompareAndSet = false;
        if (b()) {
            v.h().b("Twitter", "Authorize already in progress");
        } else if (aVar.a(activity) && !(zCompareAndSet = this.f3886a.compareAndSet(null, aVar))) {
            v.h().b("Twitter", "Failed to update authHandler, authorize already in progress.");
        }
        return zCompareAndSet;
    }

    public void a() {
        this.f3886a.set(null);
    }

    public boolean b() {
        return this.f3886a.get() != null;
    }

    public a c() {
        return this.f3886a.get();
    }
}
