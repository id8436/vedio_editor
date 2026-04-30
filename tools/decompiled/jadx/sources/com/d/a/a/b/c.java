package com.d.a.a.b;

/* JADX INFO: compiled from: IOContext.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Object f1348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.d.a.a.c f1349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final boolean f1350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final com.d.a.a.e.a f1351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected byte[] f1352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected byte[] f1353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected char[] f1354g;
    protected char[] h;
    protected char[] i;

    public c(com.d.a.a.e.a aVar, Object obj, boolean z) {
        this.f1351d = aVar;
        this.f1348a = obj;
        this.f1350c = z;
    }

    public void a(com.d.a.a.c cVar) {
        this.f1349b = cVar;
    }

    public Object a() {
        return this.f1348a;
    }

    public com.d.a.a.c b() {
        return this.f1349b;
    }

    public boolean c() {
        return this.f1350c;
    }

    public com.d.a.a.e.i d() {
        return new com.d.a.a.e.i(this.f1351d);
    }

    public byte[] e() {
        a((Object) this.f1352e);
        byte[] bArrA = this.f1351d.a(0);
        this.f1352e = bArrA;
        return bArrA;
    }

    public byte[] f() {
        a((Object) this.f1353f);
        byte[] bArrA = this.f1351d.a(1);
        this.f1353f = bArrA;
        return bArrA;
    }

    public char[] g() {
        a((Object) this.f1354g);
        char[] cArrB = this.f1351d.b(0);
        this.f1354g = cArrB;
        return cArrB;
    }

    public char[] a(int i) {
        a((Object) this.f1354g);
        char[] cArrB = this.f1351d.b(0, i);
        this.f1354g = cArrB;
        return cArrB;
    }

    public char[] h() {
        a((Object) this.h);
        char[] cArrB = this.f1351d.b(1);
        this.h = cArrB;
        return cArrB;
    }

    public char[] b(int i) {
        a((Object) this.i);
        char[] cArrB = this.f1351d.b(3, i);
        this.i = cArrB;
        return cArrB;
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            a(bArr, this.f1352e);
            this.f1352e = null;
            this.f1351d.a(0, bArr);
        }
    }

    public void b(byte[] bArr) {
        if (bArr != null) {
            a(bArr, this.f1353f);
            this.f1353f = null;
            this.f1351d.a(1, bArr);
        }
    }

    public void a(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.f1354g);
            this.f1354g = null;
            this.f1351d.a(0, cArr);
        }
    }

    public void b(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.h);
            this.h = null;
            this.f1351d.a(1, cArr);
        }
    }

    public void c(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.i);
            this.i = null;
            this.f1351d.a(3, cArr);
        }
    }

    protected final void a(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    protected final void a(byte[] bArr, byte[] bArr2) {
        if (bArr != bArr2 && bArr.length <= bArr2.length) {
            throw i();
        }
    }

    protected final void a(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length <= cArr2.length) {
            throw i();
        }
    }

    private IllegalArgumentException i() {
        return new IllegalArgumentException("Trying to release buffer not owned by the context");
    }
}
