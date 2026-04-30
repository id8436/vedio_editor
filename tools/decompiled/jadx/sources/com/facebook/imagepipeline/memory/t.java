package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: NativePooledByteBuffer.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class t implements ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    com.facebook.d.h.a<NativeMemoryChunk> f2940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2941b;

    public t(com.facebook.d.h.a<NativeMemoryChunk> aVar, int i) {
        com.facebook.d.d.k.a(aVar);
        com.facebook.d.d.k.a(i >= 0 && i <= aVar.a().b());
        this.f2940a = aVar.clone();
        this.f2941b = i;
    }

    @Override // com.facebook.imagepipeline.memory.ah
    public synchronized int a() {
        c();
        return this.f2941b;
    }

    @Override // com.facebook.imagepipeline.memory.ah
    public synchronized byte a(int i) {
        byte bA;
        synchronized (this) {
            c();
            com.facebook.d.d.k.a(i >= 0);
            com.facebook.d.d.k.a(i < this.f2941b);
            bA = this.f2940a.a().a(i);
        }
        return bA;
    }

    @Override // com.facebook.imagepipeline.memory.ah
    public synchronized void a(int i, byte[] bArr, int i2, int i3) {
        c();
        com.facebook.d.d.k.a(i + i3 <= this.f2941b);
        this.f2940a.a().b(i, bArr, i2, i3);
    }

    @Override // com.facebook.imagepipeline.memory.ah
    public synchronized boolean b() {
        return !com.facebook.d.h.a.a((com.facebook.d.h.a<?>) this.f2940a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        com.facebook.d.h.a.c(this.f2940a);
        this.f2940a = null;
    }

    synchronized void c() {
        if (b()) {
            throw new ai();
        }
    }
}
