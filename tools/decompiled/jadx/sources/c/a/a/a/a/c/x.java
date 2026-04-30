package c.a.a.a.a.c;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: PriorityThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class x implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f237a;

    public x(int i) {
        this.f237a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(this.f237a);
        thread.setName("Queue");
        return thread;
    }
}
