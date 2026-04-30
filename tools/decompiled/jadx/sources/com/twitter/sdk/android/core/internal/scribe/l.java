package com.twitter.sdk.android.core.internal.scribe;

/* JADX INFO: compiled from: EventsHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Object f4057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f4058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ k f4059c;

    l(k kVar, Object obj, boolean z) {
        this.f4059c = kVar;
        this.f4057a = obj;
        this.f4058b = z;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4059c.f4056c.a((T) this.f4057a);
            if (this.f4058b) {
                this.f4059c.f4056c.c();
            }
        } catch (Exception e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4059c.f4054a, "Failed to record event.", e2);
        }
    }
}
