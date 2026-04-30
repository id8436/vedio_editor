package d.a.e;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: Ping.java */
/* JADX INFO: loaded from: classes3.dex */
final class ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CountDownLatch f4345a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4346b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4347c = -1;

    ai() {
    }

    void a() {
        if (this.f4346b != -1) {
            throw new IllegalStateException();
        }
        this.f4346b = System.nanoTime();
    }

    void b() {
        if (this.f4347c != -1 || this.f4346b == -1) {
            throw new IllegalStateException();
        }
        this.f4347c = System.nanoTime();
        this.f4345a.countDown();
    }

    void c() {
        if (this.f4347c != -1 || this.f4346b == -1) {
            throw new IllegalStateException();
        }
        this.f4347c = this.f4346b - 1;
        this.f4345a.countDown();
    }
}
