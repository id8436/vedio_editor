package com.facebook.drawee.e;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ArrayDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends Drawable implements Drawable.Callback, ad, ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ae f2081a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Drawable[] f2083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d[] f2084d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f2082b = new e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f2085e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2086f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2087g = false;
    private boolean h = false;

    public a(Drawable[] drawableArr) {
        com.facebook.d.d.k.a(drawableArr);
        this.f2083c = drawableArr;
        for (int i = 0; i < this.f2083c.length; i++) {
            f.a(this.f2083c[i], this, this);
        }
        this.f2084d = new d[this.f2083c.length];
    }

    public int a() {
        return this.f2083c.length;
    }

    @Nullable
    public Drawable a(int i) {
        com.facebook.d.d.k.a(i >= 0);
        com.facebook.d.d.k.a(i < this.f2083c.length);
        return this.f2083c[i];
    }

    @Nullable
    public Drawable a(int i, @Nullable Drawable drawable) {
        com.facebook.d.d.k.a(i >= 0);
        com.facebook.d.d.k.a(i < this.f2083c.length);
        Drawable drawable2 = this.f2083c[i];
        if (drawable != drawable2) {
            if (drawable != null && this.h) {
                drawable.mutate();
            }
            f.a(this.f2083c[i], null, null);
            f.a(drawable, null, null);
            f.a(drawable, this.f2082b);
            f.a(drawable, this);
            f.a(drawable, this, this);
            this.f2087g = false;
            this.f2083c[i] = drawable;
            invalidateSelf();
        }
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int iMax = -1;
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                iMax = Math.max(iMax, drawable.getIntrinsicWidth());
            }
        }
        if (iMax > 0) {
            return iMax;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int iMax = -1;
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                iMax = Math.max(iMax, drawable.getIntrinsicHeight());
            }
        }
        if (iMax > 0) {
            return iMax;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setBounds(rect);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!this.f2087g) {
            this.f2086f = false;
            for (int i = 0; i < this.f2083c.length; i++) {
                Drawable drawable = this.f2083c[i];
                this.f2086f = (drawable != null && drawable.isStateful()) | this.f2086f;
            }
            this.f2087g = true;
        }
        return this.f2086f;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z = false;
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null && drawable.setState(iArr)) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean z = false;
        for (int i2 = 0; i2 < this.f2083c.length; i2++) {
            Drawable drawable = this.f2083c[i2];
            if (drawable != null && drawable.setLevel(i)) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        Rect rect2 = this.f2085e;
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.getPadding(rect2);
                rect.left = Math.max(rect.left, rect2.left);
                rect.top = Math.max(rect.top, rect2.top);
                rect.right = Math.max(rect.right, rect2.right);
                rect.bottom = Math.max(rect.bottom, rect2.bottom);
            }
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.mutate();
            }
        }
        this.h = true;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f2083c.length == 0) {
            return -2;
        }
        int iResolveOpacity = -1;
        for (int i = 1; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                iResolveOpacity = Drawable.resolveOpacity(iResolveOpacity, drawable.getOpacity());
            }
        }
        return iResolveOpacity;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2082b.a(i);
        for (int i2 = 0; i2 < this.f2083c.length; i2++) {
            Drawable drawable = this.f2083c[i2];
            if (drawable != null) {
                drawable.setAlpha(i);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2082b.a(colorFilter);
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f2082b.a(z);
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f2082b.b(z);
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setFilterBitmap(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setVisible(z, z2);
            }
        }
        return visible;
    }

    public d b(int i) {
        com.facebook.d.d.k.a(i >= 0);
        com.facebook.d.d.k.a(i < this.f2084d.length);
        if (this.f2084d[i] == null) {
            this.f2084d[i] = c(i);
        }
        return this.f2084d[i];
    }

    private d c(int i) {
        return new b(this, i);
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
        this.f2081a = aeVar;
    }

    @Override // com.facebook.drawee.e.ae
    public void a(Matrix matrix) {
        if (this.f2081a != null) {
            this.f2081a.a(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // com.facebook.drawee.e.ae
    public void a(RectF rectF) {
        if (this.f2081a != null) {
            this.f2081a.a(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f2, float f3) {
        for (int i = 0; i < this.f2083c.length; i++) {
            Drawable drawable = this.f2083c[i];
            if (drawable != null) {
                drawable.setHotspot(f2, f3);
            }
        }
    }
}
