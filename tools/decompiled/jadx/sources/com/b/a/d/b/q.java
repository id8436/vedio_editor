package com.b.a.d.b;

import com.google.gdata.data.Category;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: compiled from: EngineKey.java */
/* JADX INFO: loaded from: classes2.dex */
class q implements com.b.a.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.e f892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.b.a.d.e f893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.b.a.d.g f894f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.b.a.d.f f895g;
    private final com.b.a.d.d.f.c h;
    private final com.b.a.d.b i;
    private final com.b.a.d.c j;
    private String k;
    private int l;
    private com.b.a.d.c m;

    public q(String str, com.b.a.d.c cVar, int i, int i2, com.b.a.d.e eVar, com.b.a.d.e eVar2, com.b.a.d.g gVar, com.b.a.d.f fVar, com.b.a.d.d.f.c cVar2, com.b.a.d.b bVar) {
        this.f889a = str;
        this.j = cVar;
        this.f890b = i;
        this.f891c = i2;
        this.f892d = eVar;
        this.f893e = eVar2;
        this.f894f = gVar;
        this.f895g = fVar;
        this.h = cVar2;
        this.i = bVar;
    }

    public com.b.a.d.c a() {
        if (this.m == null) {
            this.m = new y(this.f889a, this.j);
        }
        return this.m;
    }

    @Override // com.b.a.d.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (!this.f889a.equals(qVar.f889a) || !this.j.equals(qVar.j) || this.f891c != qVar.f891c || this.f890b != qVar.f890b) {
            return false;
        }
        if ((this.f894f == null) ^ (qVar.f894f == null)) {
            return false;
        }
        if (this.f894f != null && !this.f894f.a().equals(qVar.f894f.a())) {
            return false;
        }
        if ((this.f893e == null) ^ (qVar.f893e == null)) {
            return false;
        }
        if (this.f893e != null && !this.f893e.a().equals(qVar.f893e.a())) {
            return false;
        }
        if ((this.f892d == null) ^ (qVar.f892d == null)) {
            return false;
        }
        if (this.f892d != null && !this.f892d.a().equals(qVar.f892d.a())) {
            return false;
        }
        if ((this.f895g == null) ^ (qVar.f895g == null)) {
            return false;
        }
        if (this.f895g != null && !this.f895g.a().equals(qVar.f895g.a())) {
            return false;
        }
        if ((this.h == null) ^ (qVar.h == null)) {
            return false;
        }
        if (this.h != null && !this.h.a().equals(qVar.h.a())) {
            return false;
        }
        if ((this.i == null) ^ (qVar.i == null)) {
            return false;
        }
        return this.i == null || this.i.a().equals(qVar.i.a());
    }

    @Override // com.b.a.d.c
    public int hashCode() {
        if (this.l == 0) {
            this.l = this.f889a.hashCode();
            this.l = (this.l * 31) + this.j.hashCode();
            this.l = (this.l * 31) + this.f890b;
            this.l = (this.l * 31) + this.f891c;
            this.l = (this.f892d != null ? this.f892d.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.f893e != null ? this.f893e.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.f894f != null ? this.f894f.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.f895g != null ? this.f895g.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.h != null ? this.h.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.l * 31) + (this.i != null ? this.i.a().hashCode() : 0);
        }
        return this.l;
    }

    public String toString() {
        if (this.k == null) {
            this.k = "EngineKey{" + this.f889a + '+' + this.j + "+[" + this.f890b + 'x' + this.f891c + "]+'" + (this.f892d != null ? this.f892d.a() : "") + "'+'" + (this.f893e != null ? this.f893e.a() : "") + "'+'" + (this.f894f != null ? this.f894f.a() : "") + "'+'" + (this.f895g != null ? this.f895g.a() : "") + "'+'" + (this.h != null ? this.h.a() : "") + "'+'" + (this.i != null ? this.i.a() : "") + '\'' + Category.SCHEME_SUFFIX;
        }
        return this.k;
    }

    @Override // com.b.a.d.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        byte[] bArrArray = ByteBuffer.allocate(8).putInt(this.f890b).putInt(this.f891c).array();
        this.j.a(messageDigest);
        messageDigest.update(this.f889a.getBytes("UTF-8"));
        messageDigest.update(bArrArray);
        messageDigest.update((this.f892d != null ? this.f892d.a() : "").getBytes("UTF-8"));
        messageDigest.update((this.f893e != null ? this.f893e.a() : "").getBytes("UTF-8"));
        messageDigest.update((this.f894f != null ? this.f894f.a() : "").getBytes("UTF-8"));
        messageDigest.update((this.f895g != null ? this.f895g.a() : "").getBytes("UTF-8"));
        messageDigest.update((this.i != null ? this.i.a() : "").getBytes("UTF-8"));
    }
}
