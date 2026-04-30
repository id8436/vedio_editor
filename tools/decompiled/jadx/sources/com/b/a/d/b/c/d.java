package com.b.a.d.b.c;

import android.os.Process;

/* JADX INFO: compiled from: FifoPriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
class d extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f844a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(c cVar, Runnable runnable, String str) {
        super(runnable, str);
        this.f844a = cVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        super.run();
    }
}
