package e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: RealBufferedSource.java */
/* JADX INFO: loaded from: classes3.dex */
class w extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ v f4750a;

    w(v vVar) {
        this.f4750a = vVar;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f4750a.f4749c) {
            throw new IOException("closed");
        }
        if (this.f4750a.f4747a.f4718b == 0 && this.f4750a.f4748b.a(this.f4750a.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f4750a.f4747a.i() & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f4750a.f4749c) {
            throw new IOException("closed");
        }
        ae.a(bArr.length, i, i2);
        if (this.f4750a.f4747a.f4718b == 0 && this.f4750a.f4748b.a(this.f4750a.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f4750a.f4747a.a(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.f4750a.f4749c) {
            throw new IOException("closed");
        }
        return (int) Math.min(this.f4750a.f4747a.f4718b, 2147483647L);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4750a.close();
    }

    public String toString() {
        return this.f4750a + ".inputStream()";
    }
}
