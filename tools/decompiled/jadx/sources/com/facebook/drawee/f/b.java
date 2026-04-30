package com.facebook.drawee.f;

import android.R;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.facebook.d.d.k;
import com.facebook.drawee.e.t;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: GenericDraweeHierarchyBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f2161a = t.f2153f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t f2162b = t.f2154g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Resources f2163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f2166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private t f2167g;
    private Drawable h;
    private t i;
    private Drawable j;
    private t k;
    private Drawable l;
    private t m;
    private t n;
    private Matrix o;
    private PointF p;
    private ColorFilter q;
    private Drawable r;
    private List<Drawable> s;
    private Drawable t;
    private e u;

    public b(Resources resources) {
        this.f2163c = resources;
        u();
    }

    private void u() {
        this.f2164d = 300;
        this.f2165e = 0.0f;
        this.f2166f = null;
        this.f2167g = f2161a;
        this.h = null;
        this.i = f2161a;
        this.j = null;
        this.k = f2161a;
        this.l = null;
        this.m = f2161a;
        this.n = f2162b;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
    }

    public Resources a() {
        return this.f2163c;
    }

    public b a(int i) {
        this.f2164d = i;
        return this;
    }

    public int b() {
        return this.f2164d;
    }

    public b a(float f2) {
        this.f2165e = f2;
        return this;
    }

    public float c() {
        return this.f2165e;
    }

    public b a(@Nullable Drawable drawable) {
        this.f2166f = drawable;
        return this;
    }

    @Nullable
    public Drawable d() {
        return this.f2166f;
    }

    public b a(@Nullable t tVar) {
        this.f2167g = tVar;
        return this;
    }

    @Nullable
    public t e() {
        return this.f2167g;
    }

    public b b(@Nullable Drawable drawable) {
        this.h = drawable;
        return this;
    }

    @Nullable
    public Drawable f() {
        return this.h;
    }

    public b b(@Nullable t tVar) {
        this.i = tVar;
        return this;
    }

    @Nullable
    public t g() {
        return this.i;
    }

    public b c(@Nullable Drawable drawable) {
        this.j = drawable;
        return this;
    }

    @Nullable
    public Drawable h() {
        return this.j;
    }

    public b c(@Nullable t tVar) {
        this.k = tVar;
        return this;
    }

    @Nullable
    public t i() {
        return this.k;
    }

    public b d(@Nullable Drawable drawable) {
        this.l = drawable;
        return this;
    }

    @Nullable
    public Drawable j() {
        return this.l;
    }

    public b d(@Nullable t tVar) {
        this.m = tVar;
        return this;
    }

    @Nullable
    public t k() {
        return this.m;
    }

    public b e(@Nullable t tVar) {
        this.n = tVar;
        this.o = null;
        return this;
    }

    @Nullable
    public t l() {
        return this.n;
    }

    @Nullable
    public Matrix m() {
        return this.o;
    }

    @Nullable
    public PointF n() {
        return this.p;
    }

    @Nullable
    public ColorFilter o() {
        return this.q;
    }

    public b e(@Nullable Drawable drawable) {
        this.r = drawable;
        return this;
    }

    @Nullable
    public Drawable p() {
        return this.r;
    }

    public b f(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.s = null;
        } else {
            this.s = Arrays.asList(drawable);
        }
        return this;
    }

    @Nullable
    public List<Drawable> q() {
        return this.s;
    }

    public b g(@Nullable Drawable drawable) {
        if (drawable == null) {
            this.t = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawable);
            this.t = stateListDrawable;
        }
        return this;
    }

    @Nullable
    public Drawable r() {
        return this.t;
    }

    public b a(@Nullable e eVar) {
        this.u = eVar;
        return this;
    }

    @Nullable
    public e s() {
        return this.u;
    }

    private void v() {
        if (this.s != null) {
            Iterator<Drawable> it = this.s.iterator();
            while (it.hasNext()) {
                k.a(it.next());
            }
        }
    }

    public a t() {
        v();
        return new a(this);
    }
}
