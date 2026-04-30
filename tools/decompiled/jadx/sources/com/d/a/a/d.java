package com.d.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;

/* JADX INFO: compiled from: JsonFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements Serializable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final transient com.d.a.a.d.c f1421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final transient com.d.a.a.d.a f1422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected p f1423g;
    protected int h;
    protected int i;
    protected int j;
    protected com.d.a.a.b.b k;
    protected com.d.a.a.b.d l;
    protected com.d.a.a.b.i m;
    protected r n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final int f1417a = e.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final int f1418b = l.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final int f1419c = h.a();
    private static final r o = com.d.a.a.e.d.f1469a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final ThreadLocal<SoftReference<com.d.a.a.e.a>> f1420d = new ThreadLocal<>();

    public d() {
        this(null);
    }

    public d(p pVar) {
        this.f1421e = com.d.a.a.d.c.a();
        this.f1422f = com.d.a.a.d.a.a();
        this.h = f1417a;
        this.i = f1418b;
        this.j = f1419c;
        this.n = o;
        this.f1423g = pVar;
    }

    public boolean a() {
        return true;
    }

    public final boolean a(e eVar) {
        return (this.h & eVar.c()) != 0;
    }

    public final d a(h hVar, boolean z) {
        return z ? a(hVar) : b(hVar);
    }

    public d a(h hVar) {
        this.j |= hVar.c();
        return this;
    }

    public d b(h hVar) {
        this.j &= hVar.c() ^ (-1);
        return this;
    }

    public k a(InputStream inputStream) throws IOException {
        com.d.a.a.b.c cVarA = a((Object) inputStream, false);
        return a(b(inputStream, cVarA), cVarA);
    }

    public k a(Reader reader) throws IOException {
        com.d.a.a.b.c cVarA = a((Object) reader, false);
        return a(b(reader, cVarA), cVarA);
    }

    public k a(byte[] bArr) throws IOException {
        InputStream inputStreamA;
        com.d.a.a.b.c cVarA = a((Object) bArr, true);
        return (this.l == null || (inputStreamA = this.l.a(cVarA, bArr, 0, bArr.length)) == null) ? a(bArr, 0, bArr.length, cVarA) : a(inputStreamA, cVarA);
    }

    public k a(String str) throws IOException {
        int length = str.length();
        if (this.l != null || length > 32768 || !a()) {
            return a(new StringReader(str));
        }
        com.d.a.a.b.c cVarA = a((Object) str, true);
        char[] cArrA = cVarA.a(length);
        str.getChars(0, length, cArrA, 0);
        return a(cArrA, 0, length, cVarA, true);
    }

    @Deprecated
    public k b(InputStream inputStream) throws IOException {
        return a(inputStream);
    }

    @Deprecated
    public k b(Reader reader) throws IOException {
        return a(reader);
    }

    @Deprecated
    public k b(String str) throws IOException {
        return a(str);
    }

    public g a(OutputStream outputStream, c cVar) throws IOException {
        com.d.a.a.b.c cVarA = a((Object) outputStream, false);
        cVarA.a(cVar);
        if (cVar == c.UTF8) {
            return a(b(outputStream, cVarA), cVarA);
        }
        return a(b(a(outputStream, cVar, cVarA), cVarA), cVarA);
    }

    public g a(OutputStream outputStream) throws IOException {
        return a(outputStream, c.UTF8);
    }

    public g a(Writer writer) throws IOException {
        com.d.a.a.b.c cVarA = a((Object) writer, false);
        return a(b(writer, cVarA), cVarA);
    }

    @Deprecated
    public g b(OutputStream outputStream, c cVar) throws IOException {
        return a(outputStream, cVar);
    }

    @Deprecated
    public g b(Writer writer) throws IOException {
        return a(writer);
    }

    protected k a(InputStream inputStream, com.d.a.a.b.c cVar) throws IOException {
        return new com.d.a.a.c.a(cVar, inputStream).a(this.i, this.f1423g, this.f1422f, this.f1421e, this.h);
    }

    protected k a(Reader reader, com.d.a.a.b.c cVar) throws IOException {
        return new com.d.a.a.c.f(cVar, this.i, reader, this.f1423g, this.f1421e.b(this.h));
    }

    protected k a(char[] cArr, int i, int i2, com.d.a.a.b.c cVar, boolean z) throws IOException {
        return new com.d.a.a.c.f(cVar, this.i, null, this.f1423g, this.f1421e.b(this.h), cArr, i, i + i2, z);
    }

    protected k a(byte[] bArr, int i, int i2, com.d.a.a.b.c cVar) throws IOException {
        return new com.d.a.a.c.a(cVar, bArr, i, i2).a(this.i, this.f1423g, this.f1422f, this.f1421e, this.h);
    }

    protected g a(Writer writer, com.d.a.a.b.c cVar) throws IOException {
        com.d.a.a.c.i iVar = new com.d.a.a.c.i(cVar, this.j, this.f1423g, writer);
        if (this.k != null) {
            iVar.a(this.k);
        }
        r rVar = this.n;
        if (rVar != o) {
            iVar.a(rVar);
        }
        return iVar;
    }

    protected g a(OutputStream outputStream, com.d.a.a.b.c cVar) throws IOException {
        com.d.a.a.c.g gVar = new com.d.a.a.c.g(cVar, this.j, this.f1423g, outputStream);
        if (this.k != null) {
            gVar.a(this.k);
        }
        r rVar = this.n;
        if (rVar != o) {
            gVar.a(rVar);
        }
        return gVar;
    }

    protected Writer a(OutputStream outputStream, c cVar, com.d.a.a.b.c cVar2) throws IOException {
        return cVar == c.UTF8 ? new com.d.a.a.b.l(cVar2, outputStream) : new OutputStreamWriter(outputStream, cVar.a());
    }

    protected final InputStream b(InputStream inputStream, com.d.a.a.b.c cVar) throws IOException {
        InputStream inputStreamA;
        return (this.l == null || (inputStreamA = this.l.a(cVar, inputStream)) == null) ? inputStream : inputStreamA;
    }

    protected final Reader b(Reader reader, com.d.a.a.b.c cVar) throws IOException {
        Reader readerA;
        return (this.l == null || (readerA = this.l.a(cVar, reader)) == null) ? reader : readerA;
    }

    protected final OutputStream b(OutputStream outputStream, com.d.a.a.b.c cVar) throws IOException {
        OutputStream outputStreamA;
        return (this.m == null || (outputStreamA = this.m.a(cVar, outputStream)) == null) ? outputStream : outputStreamA;
    }

    protected final Writer b(Writer writer, com.d.a.a.b.c cVar) throws IOException {
        Writer writerA;
        return (this.m == null || (writerA = this.m.a(cVar, writer)) == null) ? writer : writerA;
    }

    public com.d.a.a.e.a b() {
        if (a(e.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING)) {
            SoftReference<com.d.a.a.e.a> softReference = f1420d.get();
            com.d.a.a.e.a aVar = softReference == null ? null : softReference.get();
            if (aVar == null) {
                com.d.a.a.e.a aVar2 = new com.d.a.a.e.a();
                f1420d.set(new SoftReference<>(aVar2));
                return aVar2;
            }
            return aVar;
        }
        return new com.d.a.a.e.a();
    }

    protected com.d.a.a.b.c a(Object obj, boolean z) {
        return new com.d.a.a.b.c(b(), obj, z);
    }
}
