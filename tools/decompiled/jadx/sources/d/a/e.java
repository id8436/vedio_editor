package d.a;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes3.dex */
final class e implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f4309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f4310b;

    e(String str, boolean z) {
        this.f4309a = str;
        this.f4310b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f4309a);
        thread.setDaemon(this.f4310b);
        return thread;
    }
}
