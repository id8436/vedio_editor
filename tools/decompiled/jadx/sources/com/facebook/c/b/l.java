package com.facebook.c.b;

import android.content.Context;
import java.io.File;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DiskCacheConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.d.d.m<File> f1883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f1884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f1885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f1886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final aa f1887g;
    private final com.facebook.c.a.a h;
    private final com.facebook.c.a.d i;
    private final com.facebook.d.a.b j;
    private final Context k;
    private final boolean l;

    private l(n nVar) {
        com.facebook.c.a.a aVarA;
        com.facebook.c.a.d dVarA;
        com.facebook.d.a.b bVarA;
        this.f1881a = nVar.f1888a;
        this.f1882b = (String) com.facebook.d.d.k.a(nVar.f1889b);
        this.f1883c = (com.facebook.d.d.m) com.facebook.d.d.k.a(nVar.f1890c);
        this.f1884d = nVar.f1891d;
        this.f1885e = nVar.f1892e;
        this.f1886f = nVar.f1893f;
        this.f1887g = (aa) com.facebook.d.d.k.a(nVar.f1894g);
        if (nVar.h == null) {
            aVarA = com.facebook.c.a.i.a();
        } else {
            aVarA = nVar.h;
        }
        this.h = aVarA;
        if (nVar.i == null) {
            dVarA = com.facebook.c.a.j.a();
        } else {
            dVarA = nVar.i;
        }
        this.i = dVarA;
        if (nVar.j == null) {
            bVarA = com.facebook.d.a.c.a();
        } else {
            bVarA = nVar.j;
        }
        this.j = bVarA;
        this.k = nVar.l;
        this.l = nVar.k;
    }

    public int a() {
        return this.f1881a;
    }

    public String b() {
        return this.f1882b;
    }

    public com.facebook.d.d.m<File> c() {
        return this.f1883c;
    }

    public long d() {
        return this.f1884d;
    }

    public long e() {
        return this.f1885e;
    }

    public long f() {
        return this.f1886f;
    }

    public aa g() {
        return this.f1887g;
    }

    public com.facebook.c.a.a h() {
        return this.h;
    }

    public com.facebook.c.a.d i() {
        return this.i;
    }

    public com.facebook.d.a.b j() {
        return this.j;
    }

    public Context k() {
        return this.k;
    }

    public boolean l() {
        return this.l;
    }

    public static n a(@Nullable Context context) {
        return new n(context);
    }
}
