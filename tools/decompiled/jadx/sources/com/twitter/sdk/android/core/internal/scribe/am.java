package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;

/* JADX INFO: compiled from: TimeBasedFileRollOverRunnable.java */
/* JADX INFO: loaded from: classes3.dex */
public class am implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f4024b;

    public am(Context context, r rVar) {
        this.f4023a = context;
        this.f4024b = rVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.twitter.sdk.android.core.internal.n.a(this.f4023a, "Performing time based file roll over.");
            if (!this.f4024b.c()) {
                this.f4024b.b();
            }
        } catch (Exception e2) {
            com.twitter.sdk.android.core.internal.n.a(this.f4023a, "Failed to roll over file", e2);
        }
    }
}
