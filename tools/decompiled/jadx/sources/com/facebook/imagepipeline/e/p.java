package com.facebook.imagepipeline.e;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: PriorityThreadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class p implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2538a;

    public p(int i) {
        this.f2538a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(new q(this, runnable));
    }
}
