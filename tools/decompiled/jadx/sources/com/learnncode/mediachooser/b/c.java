package com.learnncode.mediachooser.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
final class c implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f3688a = new AtomicInteger(1);

    c() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "ImageChooserAsync #" + this.f3688a.getAndIncrement());
    }
}
