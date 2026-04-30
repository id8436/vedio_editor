package com.g.c.a;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AnimatorProxy.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends Animation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f3092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<View, a> f3093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<View> f3094c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3096e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3098g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float n;
    private float o;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Camera f3095d = new Camera();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3097f = 1.0f;
    private float l = 1.0f;
    private float m = 1.0f;
    private final RectF p = new RectF();
    private final RectF q = new RectF();
    private final Matrix r = new Matrix();

    static {
        f3092a = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f3093b = new WeakHashMap<>();
    }

    public static a a(View view) {
        a aVar = f3093b.get(view);
        if (aVar == null || aVar != view.getAnimation()) {
            a aVar2 = new a(view);
            f3093b.put(view, aVar2);
            return aVar2;
        }
        return aVar;
    }

    private a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f3094c = new WeakReference<>(view);
    }

    public float a() {
        return this.f3097f;
    }

    public void a(float f2) {
        if (this.f3097f != f2) {
            this.f3097f = f2;
            View view = this.f3094c.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public float b() {
        return this.f3098g;
    }

    public void b(float f2) {
        if (!this.f3096e || this.f3098g != f2) {
            o();
            this.f3096e = true;
            this.f3098g = f2;
            p();
        }
    }

    public float c() {
        return this.h;
    }

    public void c(float f2) {
        if (!this.f3096e || this.h != f2) {
            o();
            this.f3096e = true;
            this.h = f2;
            p();
        }
    }

    public float d() {
        return this.k;
    }

    public void d(float f2) {
        if (this.k != f2) {
            o();
            this.k = f2;
            p();
        }
    }

    public float e() {
        return this.i;
    }

    public void e(float f2) {
        if (this.i != f2) {
            o();
            this.i = f2;
            p();
        }
    }

    public float f() {
        return this.j;
    }

    public void f(float f2) {
        if (this.j != f2) {
            o();
            this.j = f2;
            p();
        }
    }

    public float g() {
        return this.l;
    }

    public void g(float f2) {
        if (this.l != f2) {
            o();
            this.l = f2;
            p();
        }
    }

    public float h() {
        return this.m;
    }

    public void h(float f2) {
        if (this.m != f2) {
            o();
            this.m = f2;
            p();
        }
    }

    public int i() {
        View view = this.f3094c.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    public int j() {
        View view = this.f3094c.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    public float k() {
        return this.n;
    }

    public void i(float f2) {
        if (this.n != f2) {
            o();
            this.n = f2;
            p();
        }
    }

    public float l() {
        return this.o;
    }

    public void j(float f2) {
        if (this.o != f2) {
            o();
            this.o = f2;
            p();
        }
    }

    public float m() {
        if (this.f3094c.get() == null) {
            return 0.0f;
        }
        return r0.getLeft() + this.n;
    }

    public void k(float f2) {
        if (this.f3094c.get() != null) {
            i(f2 - r0.getLeft());
        }
    }

    public float n() {
        if (this.f3094c.get() == null) {
            return 0.0f;
        }
        return r0.getTop() + this.o;
    }

    public void l(float f2) {
        if (this.f3094c.get() != null) {
            j(f2 - r0.getTop());
        }
    }

    private void o() {
        View view = this.f3094c.get();
        if (view != null) {
            a(this.p, view);
        }
    }

    private void p() {
        View view = this.f3094c.get();
        if (view != null && view.getParent() != null) {
            RectF rectF = this.q;
            a(rectF, view);
            rectF.union(this.p);
            ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
    }

    private void a(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.r;
        matrix.reset();
        a(matrix, view);
        this.r.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        if (rectF.right < rectF.left) {
            float f2 = rectF.right;
            rectF.right = rectF.left;
            rectF.left = f2;
        }
        if (rectF.bottom < rectF.top) {
            float f3 = rectF.top;
            rectF.top = rectF.bottom;
            rectF.bottom = f3;
        }
    }

    private void a(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.f3096e;
        float f2 = z ? this.f3098g : width / 2.0f;
        float f3 = z ? this.h : height / 2.0f;
        float f4 = this.i;
        float f5 = this.j;
        float f6 = this.k;
        if (f4 != 0.0f || f5 != 0.0f || f6 != 0.0f) {
            Camera camera = this.f3095d;
            camera.save();
            camera.rotateX(f4);
            camera.rotateY(f5);
            camera.rotateZ(-f6);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f2, -f3);
            matrix.postTranslate(f2, f3);
        }
        float f7 = this.l;
        float f8 = this.m;
        if (f7 != 1.0f || f8 != 1.0f) {
            matrix.postScale(f7, f8);
            matrix.postTranslate((-(f2 / width)) * ((f7 * width) - width), (-(f3 / height)) * ((f8 * height) - height));
        }
        matrix.postTranslate(this.n, this.o);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f2, Transformation transformation) {
        View view = this.f3094c.get();
        if (view != null) {
            transformation.setAlpha(this.f3097f);
            a(transformation.getMatrix(), view);
        }
    }
}
