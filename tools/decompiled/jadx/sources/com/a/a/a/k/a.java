package com.a.a.a.k;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: SystemTimer.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f600b;

    public a() {
        com.a.a.a.f.b.a("creating system timer", new Object[0]);
        this.f599a = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        this.f600b = System.nanoTime();
    }

    @Override // com.a.a.a.k.b
    public long a() {
        return (System.nanoTime() - this.f600b) + this.f599a;
    }

    @Override // com.a.a.a.k.b
    public void a(Object obj, long j) throws InterruptedException {
        long jA = a();
        if (jA > j) {
            obj.wait(1L);
        } else {
            TimeUnit.NANOSECONDS.timedWait(obj, j - jA);
        }
    }

    @Override // com.a.a.a.k.b
    public void a(Object obj) throws InterruptedException {
        obj.wait();
    }

    @Override // com.a.a.a.k.b
    public void b(Object obj) {
        obj.notifyAll();
    }
}
