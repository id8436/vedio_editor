package com.f.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
class e extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1648a;

    /* synthetic */ e(d dVar, OutputStream outputStream, b bVar) {
        this(dVar, outputStream);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private e(d dVar, OutputStream outputStream) {
        super(outputStream);
        this.f1648a = dVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        try {
            this.out.write(i);
        } catch (IOException e2) {
            this.f1648a.f1646d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.out.write(bArr, i, i2);
        } catch (IOException e2) {
            this.f1648a.f1646d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.out.close();
        } catch (IOException e2) {
            this.f1648a.f1646d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.out.flush();
        } catch (IOException e2) {
            this.f1648a.f1646d = true;
        }
    }
}
