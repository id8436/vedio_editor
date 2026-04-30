package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: ScaleTypeDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class q extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    t f2142a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f2143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PointF f2144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2146f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Matrix f2147g;
    private Matrix h;

    public q(Drawable drawable, t tVar) {
        super((Drawable) com.facebook.d.d.k.a(drawable));
        this.f2144d = null;
        this.f2145e = 0;
        this.f2146f = 0;
        this.h = new Matrix();
        this.f2142a = tVar;
    }

    @Override // com.facebook.drawee.e.h
    public Drawable b(Drawable drawable) {
        Drawable drawableB = super.b(drawable);
        c();
        return drawableB;
    }

    public t b() {
        return this.f2142a;
    }

    public void a(PointF pointF) {
        if (!com.facebook.d.d.g.a(this.f2144d, pointF)) {
            if (this.f2144d == null) {
                this.f2144d = new PointF();
            }
            this.f2144d.set(pointF);
            c();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        d();
        if (this.f2147g != null) {
            int iSave = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f2147g);
            super.draw(canvas);
            canvas.restoreToCount(iSave);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        c();
    }

    private void d() {
        boolean z;
        if (this.f2142a instanceof ac) {
            Object objA = ((ac) this.f2142a).a();
            z = objA == null || !objA.equals(this.f2143c);
            this.f2143c = objA;
        } else {
            z = false;
        }
        if (((this.f2145e == getCurrent().getIntrinsicWidth() && this.f2146f == getCurrent().getIntrinsicHeight()) ? false : true) || z) {
            c();
        }
    }

    void c() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f2145e = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f2146f = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f2147g = null;
            return;
        }
        if (intrinsicWidth == iWidth && intrinsicHeight == iHeight) {
            current.setBounds(bounds);
            this.f2147g = null;
        } else if (this.f2142a == t.f2148a) {
            current.setBounds(bounds);
            this.f2147g = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f2142a.a(this.h, bounds, intrinsicWidth, intrinsicHeight, this.f2144d != null ? this.f2144d.x : 0.5f, this.f2144d != null ? this.f2144d.y : 0.5f);
            this.f2147g = this.h;
        }
    }

    @Override // com.facebook.drawee.e.h, com.facebook.drawee.e.ae
    public void a(Matrix matrix) {
        b(matrix);
        d();
        if (this.f2147g != null) {
            matrix.preConcat(this.f2147g);
        }
    }
}
