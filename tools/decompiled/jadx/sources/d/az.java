package d;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class az {
    @Nullable
    public abstract an contentType();

    public abstract void writeTo(e.i iVar) throws IOException;

    public long contentLength() throws IOException {
        return -1L;
    }

    public static az create(@Nullable an anVar, String str) {
        Charset charsetB = d.a.c.f4257e;
        if (anVar != null && (charsetB = anVar.b()) == null) {
            charsetB = d.a.c.f4257e;
            anVar = an.a(anVar + "; charset=utf-8");
        }
        return create(anVar, str.getBytes(charsetB));
    }

    public static az create(@Nullable an anVar, e.k kVar) {
        return new ba(anVar, kVar);
    }

    public static az create(@Nullable an anVar, byte[] bArr) {
        return create(anVar, bArr, 0, bArr.length);
    }

    public static az create(@Nullable an anVar, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        d.a.c.a(bArr.length, i, i2);
        return new bb(anVar, i2, bArr, i);
    }

    public static az create(@Nullable an anVar, File file) {
        if (file == null) {
            throw new NullPointerException("content == null");
        }
        return new bc(anVar, file);
    }
}
