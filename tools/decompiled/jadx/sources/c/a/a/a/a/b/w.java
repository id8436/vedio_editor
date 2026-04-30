package c.a.a.a.a.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes.dex */
final class w implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AtomicLong f180b;

    w(String str, AtomicLong atomicLong) {
        this.f179a = str;
        this.f180b = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(new x(this, runnable));
        threadNewThread.setName(this.f179a + this.f180b.getAndIncrement());
        return threadNewThread;
    }
}
