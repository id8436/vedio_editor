package com.facebook.imagepipeline.k;

import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: BaseConsumer.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public abstract class d<T> implements o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2774a = false;

    protected abstract void a();

    protected abstract void a(T t, boolean z);

    protected abstract void a(Throwable th);

    @Override // com.facebook.imagepipeline.k.o
    public synchronized void b(@Nullable T t, boolean z) {
        if (!this.f2774a) {
            this.f2774a = z;
            try {
                a(t, z);
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.o
    public synchronized void b(Throwable th) {
        if (!this.f2774a) {
            this.f2774a = true;
            try {
                a(th);
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.o
    public synchronized void b() {
        if (!this.f2774a) {
            this.f2774a = true;
            try {
                a();
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.o
    public synchronized void b(float f2) {
        if (!this.f2774a) {
            try {
                a(f2);
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    protected void a(float f2) {
    }

    protected void a(Exception exc) {
        com.facebook.d.e.a.c(getClass(), "unhandled exception", exc);
    }
}
