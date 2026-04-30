package com.i.a.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* JADX INFO: compiled from: DisplayImageOptions.java */
/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3331a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3332b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3333c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f3334d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f3335e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f3336f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3337g = false;
    private boolean h = false;
    private boolean i = false;
    private com.i.a.b.a.e j = com.i.a.b.a.e.IN_SAMPLE_POWER_OF_2;
    private BitmapFactory.Options k = new BitmapFactory.Options();
    private int l = 0;
    private boolean m = false;
    private Object n = null;
    private com.i.a.b.g.a o = null;
    private com.i.a.b.g.a p = null;
    private com.i.a.b.c.a q = a.c();
    private Handler r = null;
    private boolean s = false;

    public f() {
        this.k.inPurgeable = true;
        this.k.inInputShareable = true;
    }

    public f a(int i) {
        this.f3333c = i;
        return this;
    }

    public f a(boolean z) {
        this.f3337g = z;
        return this;
    }

    public f b(boolean z) {
        this.h = z;
        return this;
    }

    public f c(boolean z) {
        this.i = z;
        return this;
    }

    public f a(com.i.a.b.a.e eVar) {
        this.j = eVar;
        return this;
    }

    public f a(Bitmap.Config config) {
        if (config == null) {
            throw new IllegalArgumentException("bitmapConfig can't be null");
        }
        this.k.inPreferredConfig = config;
        return this;
    }

    public f a(com.i.a.b.c.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("displayer can't be null");
        }
        this.q = aVar;
        return this;
    }

    f d(boolean z) {
        this.s = z;
        return this;
    }

    public f a(d dVar) {
        this.f3331a = dVar.f3308a;
        this.f3332b = dVar.f3309b;
        this.f3333c = dVar.f3310c;
        this.f3334d = dVar.f3311d;
        this.f3335e = dVar.f3312e;
        this.f3336f = dVar.f3313f;
        this.f3337g = dVar.f3314g;
        this.h = dVar.h;
        this.i = dVar.i;
        this.j = dVar.j;
        this.k = dVar.k;
        this.l = dVar.l;
        this.m = dVar.m;
        this.n = dVar.n;
        this.o = dVar.o;
        this.p = dVar.p;
        this.q = dVar.q;
        this.r = dVar.r;
        this.s = dVar.s;
        return this;
    }

    public d a() {
        return new d(this);
    }
}
