package e;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: BufferedSink.java */
/* JADX INFO: loaded from: classes3.dex */
public interface i extends aa {
    long a(ab abVar) throws IOException;

    i b(k kVar) throws IOException;

    i b(String str) throws IOException;

    i b(String str, Charset charset) throws IOException;

    f c();

    i c(byte[] bArr) throws IOException;

    i c(byte[] bArr, int i, int i2) throws IOException;

    @Override // e.aa, java.io.Flushable
    void flush() throws IOException;

    i g(int i) throws IOException;

    i h(int i) throws IOException;

    i i(int i) throws IOException;

    i k(long j) throws IOException;

    i l(long j) throws IOException;

    i v() throws IOException;
}
