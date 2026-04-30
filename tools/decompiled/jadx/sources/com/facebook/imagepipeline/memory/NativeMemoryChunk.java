package com.facebook.imagepipeline.memory;

import android.util.Log;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public class NativeMemoryChunk implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2873c;

    private static native long nativeAllocate(int i);

    private static native void nativeCopyFromByteArray(long j, byte[] bArr, int i, int i2);

    private static native void nativeCopyToByteArray(long j, byte[] bArr, int i, int i2);

    private static native void nativeFree(long j);

    private static native void nativeMemcpy(long j, long j2, int i);

    private static native byte nativeReadByte(long j);

    static {
        com.facebook.imagepipeline.nativecode.a.a();
    }

    public NativeMemoryChunk(int i) {
        com.facebook.d.d.k.a(i > 0);
        this.f2872b = i;
        this.f2871a = nativeAllocate(this.f2872b);
        this.f2873c = false;
    }

    public NativeMemoryChunk() {
        this.f2872b = 0;
        this.f2871a = 0L;
        this.f2873c = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.f2873c) {
            this.f2873c = true;
            nativeFree(this.f2871a);
        }
    }

    public synchronized boolean a() {
        return this.f2873c;
    }

    public int b() {
        return this.f2872b;
    }

    public synchronized int a(int i, byte[] bArr, int i2, int i3) {
        int iA;
        com.facebook.d.d.k.a(bArr);
        com.facebook.d.d.k.b(!a());
        iA = a(i, i3);
        a(i, bArr.length, i2, iA);
        nativeCopyFromByteArray(this.f2871a + ((long) i), bArr, i2, iA);
        return iA;
    }

    public synchronized int b(int i, byte[] bArr, int i2, int i3) {
        int iA;
        com.facebook.d.d.k.a(bArr);
        com.facebook.d.d.k.b(!a());
        iA = a(i, i3);
        a(i, bArr.length, i2, iA);
        nativeCopyToByteArray(this.f2871a + ((long) i), bArr, i2, iA);
        return iA;
    }

    public synchronized byte a(int i) {
        byte bNativeReadByte;
        synchronized (this) {
            com.facebook.d.d.k.b(!a());
            com.facebook.d.d.k.a(i >= 0);
            com.facebook.d.d.k.a(i < this.f2872b);
            bNativeReadByte = nativeReadByte(this.f2871a + ((long) i));
        }
        return bNativeReadByte;
    }

    public void a(int i, NativeMemoryChunk nativeMemoryChunk, int i2, int i3) {
        com.facebook.d.d.k.a(nativeMemoryChunk);
        if (nativeMemoryChunk.f2871a == this.f2871a) {
            Log.w("NativeMemoryChunk", "Copying from NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(this)) + " to NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(nativeMemoryChunk)) + " which share the same address " + Long.toHexString(this.f2871a));
            com.facebook.d.d.k.a(false);
        }
        if (nativeMemoryChunk.f2871a < this.f2871a) {
            synchronized (nativeMemoryChunk) {
                synchronized (this) {
                    b(i, nativeMemoryChunk, i2, i3);
                }
            }
        } else {
            synchronized (this) {
                synchronized (nativeMemoryChunk) {
                    b(i, nativeMemoryChunk, i2, i3);
                }
            }
        }
    }

    private void b(int i, NativeMemoryChunk nativeMemoryChunk, int i2, int i3) {
        com.facebook.d.d.k.b(!a());
        com.facebook.d.d.k.b(nativeMemoryChunk.a() ? false : true);
        a(i, nativeMemoryChunk.f2872b, i2, i3);
        nativeMemcpy(nativeMemoryChunk.f2871a + ((long) i2), this.f2871a + ((long) i), i3);
    }

    protected void finalize() throws Throwable {
        if (!a()) {
            Log.w("NativeMemoryChunk", "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. Underlying address = " + Long.toHexString(this.f2871a));
            try {
                close();
            } finally {
                super.finalize();
            }
        }
    }

    private int a(int i, int i2) {
        return Math.min(Math.max(0, this.f2872b - i), i2);
    }

    private void a(int i, int i2, int i3, int i4) {
        com.facebook.d.d.k.a(i4 >= 0);
        com.facebook.d.d.k.a(i >= 0);
        com.facebook.d.d.k.a(i3 >= 0);
        com.facebook.d.d.k.a(i + i4 <= this.f2872b);
        com.facebook.d.d.k.a(i3 + i4 <= i2);
    }
}
