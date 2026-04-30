package com.d.a.a.c;

import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.m;
import com.d.a.a.n;
import com.google.gdata.data.Category;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: JsonReadContext.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final d f1407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected b f1408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected d f1409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f1410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Object f1411g;
    protected int h;
    protected int i;

    public d(d dVar, b bVar, int i, int i2, int i3) {
        this.f1407c = dVar;
        this.f1408d = bVar;
        this.f1512a = i;
        this.h = i2;
        this.i = i3;
        this.f1513b = -1;
    }

    protected void a(int i, int i2, int i3) {
        this.f1512a = i;
        this.f1513b = -1;
        this.h = i2;
        this.i = i3;
        this.f1410f = null;
        this.f1411g = null;
        if (this.f1408d != null) {
            this.f1408d.b();
        }
    }

    public static d a(b bVar) {
        return new d(null, bVar, 0, 1, 0);
    }

    public d a(int i, int i2) {
        d dVar = this.f1409e;
        if (dVar == null) {
            dVar = new d(this, this.f1408d == null ? null : this.f1408d.a(), 1, i, i2);
            this.f1409e = dVar;
        } else {
            dVar.a(1, i, i2);
        }
        return dVar;
    }

    public d b(int i, int i2) {
        d dVar = this.f1409e;
        if (dVar == null) {
            dVar = new d(this, this.f1408d == null ? null : this.f1408d.a(), 2, i, i2);
            this.f1409e = dVar;
        } else {
            dVar.a(2, i, i2);
        }
        return dVar;
    }

    public String g() {
        return this.f1410f;
    }

    public d h() {
        return this.f1407c;
    }

    public d i() {
        this.f1411g = null;
        return this.f1407c;
    }

    public com.d.a.a.i a(Object obj) {
        return new com.d.a.a.i(obj, -1L, this.h, this.i);
    }

    public boolean j() {
        int i = this.f1513b + 1;
        this.f1513b = i;
        return this.f1512a != 0 && i > 0;
    }

    public void a(String str) throws m {
        this.f1410f = str;
        if (this.f1408d != null) {
            a(this.f1408d, str);
        }
    }

    private void a(b bVar, String str) throws m {
        if (bVar.a(str)) {
            Object objC = bVar.c();
            throw new j(objC instanceof com.d.a.a.g ? (k) objC : null, "Duplicate field '" + str + "'");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        switch (this.f1512a) {
            case 0:
                sb.append(URIUtil.SLASH);
                break;
            case 1:
                sb.append('[');
                sb.append(f());
                sb.append(']');
                break;
            case 2:
                sb.append(Category.SCHEME_PREFIX);
                if (this.f1410f != null) {
                    sb.append('\"');
                    com.d.a.a.b.a.a(sb, this.f1410f);
                    sb.append('\"');
                } else {
                    sb.append('?');
                }
                sb.append(Category.SCHEME_SUFFIX);
                break;
        }
        return sb.toString();
    }
}
