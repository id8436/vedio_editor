package com.facebook.imagepipeline.h;

import java.io.Closeable;

/* JADX INFO: compiled from: CloseableImage.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements e, Closeable {
    public abstract int a();

    public abstract boolean b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public g c() {
        return f.f2585a;
    }

    public boolean d() {
        return false;
    }

    protected void finalize() throws Throwable {
        if (!b()) {
            com.facebook.d.e.a.b("CloseableImage", "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
            try {
                close();
            } finally {
                super.finalize();
            }
        }
    }
}
