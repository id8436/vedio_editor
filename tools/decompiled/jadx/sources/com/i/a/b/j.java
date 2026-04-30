package com.i.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ImageLoaderConfiguration.java */
/* JADX INFO: loaded from: classes3.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Resources f3344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f3345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f3346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f3347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f3348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final com.i.a.b.g.a f3349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Executor f3350g;
    final Executor h;
    final boolean i;
    final boolean j;
    final int k;
    final int l;
    final com.i.a.b.a.h m;
    final com.i.a.a.b.a n;
    final com.i.a.a.a.b o;
    final com.i.a.b.d.c p;
    final com.i.a.b.b.d q;
    final d r;
    final com.i.a.b.d.c s;
    final com.i.a.b.d.c t;

    private j(l lVar) {
        this.f3344a = lVar.f3353b.getResources();
        this.f3345b = lVar.f3354c;
        this.f3346c = lVar.f3355d;
        this.f3347d = lVar.f3356e;
        this.f3348e = lVar.f3357f;
        this.f3349f = lVar.f3358g;
        this.f3350g = lVar.h;
        this.h = lVar.i;
        this.k = lVar.l;
        this.l = lVar.m;
        this.m = lVar.o;
        this.o = lVar.t;
        this.n = lVar.s;
        this.r = lVar.x;
        this.p = lVar.v;
        this.q = lVar.w;
        this.i = lVar.j;
        this.j = lVar.k;
        this.s = new m(this.p);
        this.t = new n(this.p);
        com.i.a.c.e.a(lVar.y);
    }

    public static j a(Context context) {
        return new l(context).a();
    }

    com.i.a.b.a.f a() {
        DisplayMetrics displayMetrics = this.f3344a.getDisplayMetrics();
        int i = this.f3345b;
        if (i <= 0) {
            i = displayMetrics.widthPixels;
        }
        int i2 = this.f3346c;
        if (i2 <= 0) {
            i2 = displayMetrics.heightPixels;
        }
        return new com.i.a.b.a.f(i, i2);
    }
}
