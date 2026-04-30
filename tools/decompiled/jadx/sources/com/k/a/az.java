package com.k.a;

import android.graphics.Bitmap;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes3.dex */
public final class az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f3494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3496c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3499f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3500g;
    private boolean h;
    private float i;
    private float j;
    private float k;
    private boolean l;
    private List<bi> m;
    private Bitmap.Config n;
    private ar o;

    az(Uri uri, int i, Bitmap.Config config) {
        this.f3494a = uri;
        this.f3495b = i;
        this.n = config;
    }

    boolean a() {
        return (this.f3494a == null && this.f3495b == 0) ? false : true;
    }

    boolean b() {
        return (this.f3497d == 0 && this.f3498e == 0) ? false : true;
    }

    public az a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Height must be positive number or 0.");
        }
        if (i2 == 0 && i == 0) {
            throw new IllegalArgumentException("At least one dimension has to be positive number.");
        }
        this.f3497d = i;
        this.f3498e = i2;
        return this;
    }

    public az c() {
        if (this.f3500g) {
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }
        this.f3499f = true;
        return this;
    }

    public az a(bi biVar) {
        if (biVar == null) {
            throw new IllegalArgumentException("Transformation must not be null.");
        }
        if (biVar.key() == null) {
            throw new IllegalArgumentException("Transformation key must not be null.");
        }
        if (this.m == null) {
            this.m = new ArrayList(2);
        }
        this.m.add(biVar);
        return this;
    }

    public ax d() {
        if (this.f3500g && this.f3499f) {
            throw new IllegalStateException("Center crop and center inside can not be used together.");
        }
        if (this.f3499f && this.f3497d == 0 && this.f3498e == 0) {
            throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
        }
        if (this.f3500g && this.f3497d == 0 && this.f3498e == 0) {
            throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
        }
        if (this.o == null) {
            this.o = ar.NORMAL;
        }
        return new ax(this.f3494a, this.f3495b, this.f3496c, this.m, this.f3497d, this.f3498e, this.f3499f, this.f3500g, this.h, this.i, this.j, this.k, this.l, this.n, this.o);
    }
}
