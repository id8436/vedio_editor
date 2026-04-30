package e;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: BufferedSource.java */
/* JADX INFO: loaded from: classes3.dex */
public interface j extends ab {
    long a(byte b2) throws IOException;

    long a(aa aaVar) throws IOException;

    String a(Charset charset) throws IOException;

    void a(long j) throws IOException;

    void a(byte[] bArr) throws IOException;

    boolean a(long j, k kVar) throws IOException;

    f c();

    k c(long j) throws IOException;

    String e(long j) throws IOException;

    boolean f() throws IOException;

    InputStream g();

    byte[] g(long j) throws IOException;

    void h(long j) throws IOException;

    byte i() throws IOException;

    short j() throws IOException;

    int k() throws IOException;

    short l() throws IOException;

    int m() throws IOException;

    long n() throws IOException;

    String q() throws IOException;

    byte[] r() throws IOException;
}
