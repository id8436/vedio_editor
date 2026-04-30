package d;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: ResponseBody.java */
/* JADX INFO: loaded from: classes3.dex */
final class bh extends Reader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.j f4618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f4619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Reader f4621d;

    bh(e.j jVar, Charset charset) {
        this.f4618a = jVar;
        this.f4619b = charset;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (this.f4620c) {
            throw new IOException("Stream closed");
        }
        Reader inputStreamReader = this.f4621d;
        if (inputStreamReader == null) {
            inputStreamReader = new InputStreamReader(this.f4618a.g(), d.a.c.a(this.f4618a, this.f4619b));
            this.f4621d = inputStreamReader;
        }
        return inputStreamReader.read(cArr, i, i2);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4620c = true;
        if (this.f4621d != null) {
            this.f4621d.close();
        } else {
            this.f4618a.close();
        }
    }
}
