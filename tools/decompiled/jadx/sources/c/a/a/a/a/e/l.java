package c.a.a.a.a.e;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends BufferedOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharsetEncoder f272a;

    public l(OutputStream outputStream, String str, int i) {
        super(outputStream, i);
        this.f272a = Charset.forName(e.f(str)).newEncoder();
    }

    public l a(String str) throws IOException {
        ByteBuffer byteBufferEncode = this.f272a.encode(CharBuffer.wrap(str));
        super.write(byteBufferEncode.array(), 0, byteBufferEncode.limit());
        return this;
    }
}
