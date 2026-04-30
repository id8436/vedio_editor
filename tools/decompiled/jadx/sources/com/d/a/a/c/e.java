package com.d.a.a.c;

import com.d.a.a.m;
import com.d.a.a.n;
import com.google.gdata.data.Category;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: JsonWriteContext.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final e f1412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected b f1413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected e f1414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f1415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Object f1416g;
    protected boolean h;

    protected e(int i, e eVar, b bVar) {
        this.f1512a = i;
        this.f1412c = eVar;
        this.f1413d = bVar;
        this.f1513b = -1;
    }

    protected e a(int i) {
        this.f1512a = i;
        this.f1513b = -1;
        this.f1415f = null;
        this.h = false;
        this.f1416g = null;
        if (this.f1413d != null) {
            this.f1413d.b();
        }
        return this;
    }

    public static e a(b bVar) {
        return new e(0, null, bVar);
    }

    public e g() {
        e eVar = this.f1414e;
        if (eVar == null) {
            e eVar2 = new e(1, this, this.f1413d == null ? null : this.f1413d.a());
            this.f1414e = eVar2;
            return eVar2;
        }
        return eVar.a(1);
    }

    public e h() {
        e eVar = this.f1414e;
        if (eVar == null) {
            e eVar2 = new e(2, this, this.f1413d == null ? null : this.f1413d.a());
            this.f1414e = eVar2;
            return eVar2;
        }
        return eVar.a(2);
    }

    public e i() {
        this.f1416g = null;
        return this.f1412c;
    }

    public int a(String str) throws m {
        if (this.h) {
            return 4;
        }
        this.h = true;
        this.f1415f = str;
        if (this.f1413d != null) {
            a(this.f1413d, str);
        }
        return this.f1513b < 0 ? 0 : 1;
    }

    private final void a(b bVar, String str) throws m {
        if (bVar.a(str)) {
            Object objC = bVar.c();
            throw new com.d.a.a.f("Duplicate field '" + str + "'", objC instanceof com.d.a.a.g ? (com.d.a.a.g) objC : null);
        }
    }

    public int j() {
        if (this.f1512a == 2) {
            if (!this.h) {
                return 5;
            }
            this.h = false;
            this.f1513b++;
            return 2;
        }
        if (this.f1512a == 1) {
            int i = this.f1513b;
            this.f1513b++;
            return i >= 0 ? 1 : 0;
        }
        this.f1513b++;
        return this.f1513b != 0 ? 3 : 0;
    }

    protected void a(StringBuilder sb) {
        if (this.f1512a == 2) {
            sb.append(Category.SCHEME_PREFIX);
            if (this.f1415f != null) {
                sb.append('\"');
                sb.append(this.f1415f);
                sb.append('\"');
            } else {
                sb.append('?');
            }
            sb.append(Category.SCHEME_SUFFIX);
            return;
        }
        if (this.f1512a == 1) {
            sb.append('[');
            sb.append(f());
            sb.append(']');
            return;
        }
        sb.append(URIUtil.SLASH);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        a(sb);
        return sb.toString();
    }
}
