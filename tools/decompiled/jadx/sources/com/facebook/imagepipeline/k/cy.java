package com.facebook.imagepipeline.k;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ThreadHandoffProducerQueue.java */
/* JADX INFO: loaded from: classes2.dex */
public class cy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2766a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deque<Runnable> f2767b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f2768c;

    public cy(Executor executor) {
        this.f2768c = (Executor) com.facebook.d.d.k.a(executor);
    }

    public synchronized void a(Runnable runnable) {
        if (this.f2766a) {
            this.f2767b.add(runnable);
        } else {
            this.f2768c.execute(runnable);
        }
    }

    public synchronized void b(Runnable runnable) {
        this.f2767b.remove(runnable);
    }
}
