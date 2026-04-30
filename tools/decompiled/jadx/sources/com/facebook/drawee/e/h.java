package com.facebook.drawee.e;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: ForwardingDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends Drawable implements Drawable.Callback, ad, ae, d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Matrix f2106d = new Matrix();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f2107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ae f2108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f2109c = new e();

    public h(Drawable drawable) {
        this.f2107a = drawable;
        f.a(this.f2107a, this, this);
    }

    public Drawable b(Drawable drawable) {
        Drawable drawableC = c(drawable);
        invalidateSelf();
        return drawableC;
    }

    protected Drawable c(Drawable drawable) {
        Drawable drawable2 = this.f2107a;
        f.a(drawable2, null, null);
        f.a(drawable, null, null);
        f.a(drawable, this.f2109c);
        f.a(drawable, this);
        f.a(drawable, this, this);
        this.f2107a = drawable;
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2107a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2109c.a(i);
        this.f2107a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2109c.a(colorFilter);
        this.f2107a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f2109c.a(z);
        this.f2107a.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f2109c.b(z);
        this.f2107a.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        super.setVisible(z, z2);
        return this.f2107a.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f2107a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2107a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.f2107a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f2107a.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f2107a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2107a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2107a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f2107a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f2107a.mutate();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f2107a;
    }

    @Override // com.facebook.drawee.e.d
    public Drawable a(Drawable drawable) {
        return b(drawable);
    }

    @Override // com.facebook.drawee.e.d
    public Drawable a() {
        return getCurrent();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // com.facebook.drawee.e.ad
    public void a(ae aeVar) {
        this.f2108b = aeVar;
    }

    protected void b(Matrix matrix) {
        if (this.f2108b != null) {
            this.f2108b.a(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // com.facebook.drawee.e.ae
    public void a(Matrix matrix) {
        b(matrix);
    }

    @Override // com.facebook.drawee.e.ae
    public void a(RectF rectF) {
        if (this.f2108b != null) {
            this.f2108b.a(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f2, float f3) {
        this.f2107a.setHotspot(f2, f3);
    }
}
