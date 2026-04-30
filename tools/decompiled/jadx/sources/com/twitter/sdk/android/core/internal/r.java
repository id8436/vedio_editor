package com.twitter.sdk.android.core.internal;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes3.dex */
final class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ExecutorService f3975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f3976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ TimeUnit f3977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f3978d;

    r(ExecutorService executorService, long j, TimeUnit timeUnit, String str) {
        this.f3975a = executorService;
        this.f3976b = j;
        this.f3977c = timeUnit;
        this.f3978d = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3975a.shutdown();
            if (!this.f3975a.awaitTermination(this.f3976b, this.f3977c)) {
                com.twitter.sdk.android.core.v.h().a("Twitter", this.f3978d + " did not shutdown in the allocated time. Requesting immediate shutdown.");
                this.f3975a.shutdownNow();
            }
        } catch (InterruptedException e2) {
            com.twitter.sdk.android.core.v.h().a("Twitter", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f3978d));
            this.f3975a.shutdownNow();
        }
    }
}
