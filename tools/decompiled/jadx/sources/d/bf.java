package d;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ResponseBody.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class bf implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Reader f4614a;

    @Nullable
    public abstract an a();

    public abstract long b();

    public abstract e.j d();

    public final InputStream c() {
        return d().g();
    }

    public final Reader e() {
        Reader reader = this.f4614a;
        if (reader != null) {
            return reader;
        }
        bh bhVar = new bh(d(), g());
        this.f4614a = bhVar;
        return bhVar;
    }

    public final String f() throws IOException {
        e.j jVarD = d();
        try {
            return jVarD.a(d.a.c.a(jVarD, g()));
        } finally {
            d.a.c.a(jVarD);
        }
    }

    private Charset g() {
        an anVarA = a();
        return anVarA != null ? anVarA.a(d.a.c.f4257e) : d.a.c.f4257e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d.a.c.a(d());
    }

    public static bf a(@Nullable an anVar, byte[] bArr) {
        return a(anVar, bArr.length, new e.f().c(bArr));
    }

    public static bf a(@Nullable an anVar, long j, e.j jVar) {
        if (jVar == null) {
            throw new NullPointerException("source == null");
        }
        return new bg(anVar, j, jVar);
    }
}
