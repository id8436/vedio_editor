package com.i.a.b;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* JADX INFO: compiled from: DisplayImageOptions.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Drawable f3311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Drawable f3312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Drawable f3313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f3314g;
    private final boolean h;
    private final boolean i;
    private final com.i.a.b.a.e j;
    private final BitmapFactory.Options k;
    private final int l;
    private final boolean m;
    private final Object n;
    private final com.i.a.b.g.a o;
    private final com.i.a.b.g.a p;
    private final com.i.a.b.c.a q;
    private final Handler r;
    private final boolean s;

    private d(f fVar) {
        this.f3308a = fVar.f3331a;
        this.f3309b = fVar.f3332b;
        this.f3310c = fVar.f3333c;
        this.f3311d = fVar.f3334d;
        this.f3312e = fVar.f3335e;
        this.f3313f = fVar.f3336f;
        this.f3314g = fVar.f3337g;
        this.h = fVar.h;
        this.i = fVar.i;
        this.j = fVar.j;
        this.k = fVar.k;
        this.l = fVar.l;
        this.m = fVar.m;
        this.n = fVar.n;
        this.o = fVar.o;
        this.p = fVar.p;
        this.q = fVar.q;
        this.r = fVar.r;
        this.s = fVar.s;
    }

    public boolean a() {
        return (this.f3311d == null && this.f3308a == 0) ? false : true;
    }

    public boolean b() {
        return (this.f3312e == null && this.f3309b == 0) ? false : true;
    }

    public boolean c() {
        return (this.f3313f == null && this.f3310c == 0) ? false : true;
    }

    public boolean d() {
        return this.o != null;
    }

    public boolean e() {
        return this.p != null;
    }

    public boolean f() {
        return this.l > 0;
    }

    public Drawable a(Resources resources) {
        return this.f3308a != 0 ? resources.getDrawable(this.f3308a) : this.f3311d;
    }

    public Drawable b(Resources resources) {
        return this.f3309b != 0 ? resources.getDrawable(this.f3309b) : this.f3312e;
    }

    public Drawable c(Resources resources) {
        return this.f3310c != 0 ? resources.getDrawable(this.f3310c) : this.f3313f;
    }

    public boolean g() {
        return this.f3314g;
    }

    public boolean h() {
        return this.h;
    }

    public boolean i() {
        return this.i;
    }

    public com.i.a.b.a.e j() {
        return this.j;
    }

    public BitmapFactory.Options k() {
        return this.k;
    }

    public int l() {
        return this.l;
    }

    public boolean m() {
        return this.m;
    }

    public Object n() {
        return this.n;
    }

    public com.i.a.b.g.a o() {
        return this.o;
    }

    public com.i.a.b.g.a p() {
        return this.p;
    }

    public com.i.a.b.c.a q() {
        return this.q;
    }

    public Handler r() {
        return this.r;
    }

    boolean s() {
        return this.s;
    }

    public static d t() {
        return new f().a();
    }
}
