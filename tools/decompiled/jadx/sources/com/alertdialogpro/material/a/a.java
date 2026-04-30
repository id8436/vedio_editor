package com.alertdialogpro.material.a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.g.a.i;

/* JADX INFO: compiled from: CircularAnimatedDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends Drawable implements Animatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Interpolator f669a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Interpolator f670b = new DecelerateInterpolator();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f674f;
    private float h;
    private float i;
    private float j;
    private float k;
    private boolean l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f671c = new RectF();
    private com.g.b.c<a, Float> m = new b(this, Float.class, "angle");
    private com.g.b.c<a, Float> n = new c(this, Float.class, "arc");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f675g = new Paint();

    public a(int i, float f2) {
        this.k = f2;
        this.f675g.setAntiAlias(true);
        this.f675g.setStyle(Paint.Style.STROKE);
        this.f675g.setStrokeWidth(f2);
        this.f675g.setColor(i);
        d();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f2;
        float f3 = this.i - this.h;
        float f4 = this.j;
        if (!this.f674f) {
            f3 += f4;
            f2 = (360.0f - f4) - 30.0f;
        } else {
            f2 = 30.0f + f4;
        }
        canvas.drawArc(this.f671c, f3, f2, false, this.f675g);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f675g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f675g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f674f = !this.f674f;
        if (this.f674f) {
            this.h = (this.h + 60.0f) % 360.0f;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f671c.left = rect.left + (this.k / 2.0f) + 0.5f;
        this.f671c.right = (rect.right - (this.k / 2.0f)) - 0.5f;
        this.f671c.top = rect.top + (this.k / 2.0f) + 0.5f;
        this.f671c.bottom = (rect.bottom - (this.k / 2.0f)) - 0.5f;
    }

    private void d() {
        this.f673e = i.a(this, this.m, 360.0f);
        this.f673e.a(f669a);
        this.f673e.b(2000L);
        this.f673e.b(1);
        this.f673e.a(-1);
        this.f672d = i.a(this, this.n, 300.0f);
        this.f672d.a(f670b);
        this.f672d.b(600L);
        this.f672d.b(1);
        this.f672d.a(-1);
        this.f672d.a(new d(this));
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            this.l = true;
            this.f673e.a();
            this.f672d.a();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.l = false;
            this.f673e.b();
            this.f672d.b();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.l;
    }

    public void a(float f2) {
        this.i = f2;
        invalidateSelf();
    }

    public float a() {
        return this.i;
    }

    public void b(float f2) {
        this.j = f2;
        invalidateSelf();
    }

    public float b() {
        return this.j;
    }
}
