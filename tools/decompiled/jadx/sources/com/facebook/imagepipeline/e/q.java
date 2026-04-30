package com.facebook.imagepipeline.e;

import android.os.Process;

/* JADX INFO: compiled from: PriorityThreadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f2539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f2540b;

    q(p pVar, Runnable runnable) {
        this.f2540b = pVar;
        this.f2539a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Process.setThreadPriority(this.f2540b.f2538a);
        } catch (Throwable th) {
        }
        this.f2539a.run();
    }
}
