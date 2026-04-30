package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: EventsHandler.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class k<T> implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f4054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final ScheduledExecutorService f4055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected q<T> f4056c;

    public k(Context context, q<T> qVar, h hVar, ScheduledExecutorService scheduledExecutorService) {
        this.f4054a = context.getApplicationContext();
        this.f4055b = scheduledExecutorService;
        this.f4056c = qVar;
        hVar.a((p) this);
    }

    public void a(T t, boolean z) {
        a(new l(this, t, z));
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.p
    public void a(String str) {
        a(new m(this));
    }

    protected void a(Runnable runnable) {
        try {
            this.f4055b.submit(runnable);
        } catch (Exception e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4054a, "Failed to submit events task", e2);
        }
    }
}
