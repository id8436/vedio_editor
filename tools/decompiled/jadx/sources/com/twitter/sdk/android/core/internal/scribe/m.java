package com.twitter.sdk.android.core.internal.scribe;

/* JADX INFO: compiled from: EventsHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f4060a;

    m(k kVar) {
        this.f4060a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4060a.f4056c.a();
        } catch (Exception e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4060a.f4054a, "Failed to send events files.", e2);
        }
    }
}
