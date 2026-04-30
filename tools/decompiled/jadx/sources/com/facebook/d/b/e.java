package com.facebook.d.b;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: StatefulRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class e<T> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final AtomicInteger f1931a = new AtomicInteger(0);

    protected abstract T c() throws Exception;

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f1931a.compareAndSet(0, 1)) {
            try {
                T tC = c();
                this.f1931a.set(3);
                try {
                    a(tC);
                } finally {
                    b(tC);
                }
            } catch (Exception e2) {
                this.f1931a.set(4);
                a(e2);
            }
        }
    }

    public void a() {
        if (this.f1931a.compareAndSet(0, 2)) {
            b();
        }
    }

    protected void a(T t) {
    }

    protected void a(Exception exc) {
    }

    protected void b() {
    }

    protected void b(T t) {
    }
}
