package com.d.a.a.a;

import com.d.a.a.c.e;
import com.d.a.a.e.d;
import com.d.a.a.g;
import com.d.a.a.h;
import com.d.a.a.p;
import com.d.a.a.q;
import java.io.IOException;

/* JADX INFO: compiled from: GeneratorBase.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final int f1325b = (h.WRITE_NUMBERS_AS_STRINGS.c() | h.ESCAPE_NON_ASCII.c()) | h.STRICT_DUPLICATE_DETECTION.c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final String f1326c = "write a binary value";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final String f1327d = "write a boolean value";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final String f1328e = "write a null";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final String f1329f = "write a number";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final String f1330g = "write a raw (unencoded) value";
    protected final String h = "write a string";
    protected p i;
    protected int j;
    protected boolean k;
    protected e l;
    protected boolean m;

    protected abstract void f(String str) throws IOException;

    protected abstract void j();

    protected a(int i, p pVar) {
        this.j = i;
        this.i = pVar;
        this.l = e.a(h.STRICT_DUPLICATE_DETECTION.a(i) ? com.d.a.a.c.b.a(this) : null);
        this.k = h.WRITE_NUMBERS_AS_STRINGS.a(i);
    }

    public final boolean a(h hVar) {
        return (this.j & hVar.c()) != 0;
    }

    @Override // com.d.a.a.g
    public g b() {
        return a() != null ? this : a(k());
    }

    public e i() {
        return this.l;
    }

    @Override // com.d.a.a.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.m = true;
    }

    protected q k() {
        return new d();
    }

    protected final int a(int i, int i2) throws IOException {
        if (i2 < 56320 || i2 > 57343) {
            e("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2));
        }
        return 65536 + ((i - 55296) << 10) + (i2 - 56320);
    }
}
