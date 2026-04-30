package com.facebook.imagepipeline.memory;

import java.io.IOException;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: NativePooledByteBufferOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
public class v extends al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f2944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.d.h.a<NativeMemoryChunk> f2945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2946c;

    public v(s sVar) {
        this(sVar, sVar.d());
    }

    public v(s sVar, int i) {
        com.facebook.d.d.k.a(i > 0);
        this.f2944a = (s) com.facebook.d.d.k.a(sVar);
        this.f2946c = 0;
        this.f2945b = com.facebook.d.h.a.a(this.f2944a.a(i), this.f2944a);
    }

    @Override // com.facebook.imagepipeline.memory.al
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t c() {
        d();
        return new t(this.f2945b, this.f2946c);
    }

    @Override // com.facebook.imagepipeline.memory.al
    public int b() {
        return this.f2946c;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i + "; regionLength=" + i2);
        }
        d();
        a(this.f2946c + i2);
        this.f2945b.a().a(this.f2946c, bArr, i, i2);
        this.f2946c += i2;
    }

    @Override // com.facebook.imagepipeline.memory.al, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.d.h.a.c(this.f2945b);
        this.f2945b = null;
        this.f2946c = -1;
        super.close();
    }

    void a(int i) {
        d();
        if (i > this.f2945b.a().b()) {
            NativeMemoryChunk nativeMemoryChunkA = this.f2944a.a(i);
            this.f2945b.a().a(0, nativeMemoryChunkA, 0, this.f2946c);
            this.f2945b.close();
            this.f2945b = com.facebook.d.h.a.a(nativeMemoryChunkA, this.f2944a);
        }
    }

    private void d() {
        if (!com.facebook.d.h.a.a((com.facebook.d.h.a<?>) this.f2945b)) {
            throw new w();
        }
    }
}
