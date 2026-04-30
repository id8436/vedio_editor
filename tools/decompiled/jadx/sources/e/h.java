package e;

import com.google.common.primitives.UnsignedBytes;
import java.io.InputStream;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f4720a;

    h(f fVar) {
        this.f4720a = fVar;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f4720a.f4718b > 0) {
            return this.f4720a.i() & UnsignedBytes.MAX_VALUE;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.f4720a.a(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public int available() {
        return (int) Math.min(this.f4720a.f4718b, 2147483647L);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public String toString() {
        return this.f4720a + ".inputStream()";
    }
}
