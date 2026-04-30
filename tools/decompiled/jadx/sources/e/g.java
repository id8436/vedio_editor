package e;

import java.io.OutputStream;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes3.dex */
class g extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f4719a;

    g(f fVar) {
        this.f4719a = fVar;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f4719a.i((int) ((byte) i));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f4719a.c(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public String toString() {
        return this.f4719a + ".outputStream()";
    }
}
