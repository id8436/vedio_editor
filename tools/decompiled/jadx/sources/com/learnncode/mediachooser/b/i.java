package com.learnncode.mediachooser.b;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
class i implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayDeque<Runnable> f3694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f3695b;

    private i() {
        this.f3694a = new ArrayDeque<>();
    }

    /* synthetic */ i(c cVar) {
        this();
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f3694a.offer(new j(this, runnable));
        if (this.f3695b == null) {
            a();
        }
    }

    protected synchronized void a() {
        Runnable runnablePoll = this.f3694a.poll();
        this.f3695b = runnablePoll;
        if (runnablePoll != null) {
            b.f3681a.execute(this.f3695b);
        }
    }
}
