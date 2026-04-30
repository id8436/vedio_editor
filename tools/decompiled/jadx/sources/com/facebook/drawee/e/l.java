package com.facebook.drawee.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RoundedBitmapDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends BitmapDrawable implements ad, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f2118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final RectF f2119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RectF f2120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final RectF f2121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final RectF f2122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Matrix f2123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Matrix f2124g;
    final Matrix h;
    final Matrix i;
    final Matrix j;
    final Matrix k;
    private boolean l;
    private boolean m;
    private final float[] n;
    private float o;
    private int p;
    private float q;
    private final Path r;
    private final Path s;
    private boolean t;
    private final Paint u;
    private final Paint v;
    private boolean w;
    private WeakReference<Bitmap> x;

    @Nullable
    private ae y;

    public l(Resources resources, Bitmap bitmap, @Nullable Paint paint) {
        super(resources, bitmap);
        this.l = false;
        this.m = false;
        this.n = new float[8];
        this.f2118a = new float[8];
        this.f2119b = new RectF();
        this.f2120c = new RectF();
        this.f2121d = new RectF();
        this.f2122e = new RectF();
        this.f2123f = new Matrix();
        this.f2124g = new Matrix();
        this.h = new Matrix();
        this.i = new Matrix();
        this.j = new Matrix();
        this.k = new Matrix();
        this.o = 0.0f;
        this.p = 0;
        this.q = 0.0f;
        this.r = new Path();
        this.s = new Path();
        this.t = true;
        this.u = new Paint();
        this.v = new Paint(1);
        this.w = true;
        if (paint != null) {
            this.u.set(paint);
        }
        this.u.setFlags(1);
        this.v.setStyle(Paint.Style.STROKE);
    }

    @Override // com.facebook.drawee.e.k
    public void a(boolean z) {
        this.l = z;
        this.t = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.n, 0.0f);
            this.m = false;
        } else {
            com.facebook.d.d.k.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.n, 0, 8);
            this.m = false;
            for (int i = 0; i < 8; i++) {
                this.m = (fArr[i] > 0.0f) | this.m;
            }
        }
        this.t = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(int i, float f2) {
        if (this.p != i || this.o != f2) {
            this.p = i;
            this.o = f2;
            this.t = true;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.e.k
    public void a(float f2) {
        if (this.q != f2) {
            this.q = f2;
            this.t = true;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.e.ad
    public void a(@Nullable ae aeVar) {
        this.y = aeVar;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.u.getAlpha()) {
            this.u.setAlpha(i);
            super.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.u.setColorFilter(colorFilter);
        super.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!a()) {
            super.draw(canvas);
            return;
        }
        b();
        c();
        d();
        int iSave = canvas.save();
        canvas.concat(this.j);
        canvas.drawPath(this.r, this.u);
        if (this.o > 0.0f) {
            this.v.setStrokeWidth(this.o);
            this.v.setColor(f.a(this.p, this.u.getAlpha()));
            canvas.drawPath(this.s, this.v);
        }
        canvas.restoreToCount(iSave);
    }

    boolean a() {
        return this.l || this.m || this.o > 0.0f;
    }

    private void b() {
        if (this.y != null) {
            this.y.a(this.h);
            this.y.a(this.f2119b);
        } else {
            this.h.reset();
            this.f2119b.set(getBounds());
        }
        this.f2121d.set(0.0f, 0.0f, getBitmap().getWidth(), getBitmap().getHeight());
        this.f2122e.set(getBounds());
        this.f2123f.setRectToRect(this.f2121d, this.f2122e, Matrix.ScaleToFit.FILL);
        if (!this.h.equals(this.i) || !this.f2123f.equals(this.f2124g)) {
            this.w = true;
            this.h.invert(this.j);
            this.k.set(this.h);
            this.k.preConcat(this.f2123f);
            this.i.set(this.h);
            this.f2124g.set(this.f2123f);
        }
        if (!this.f2119b.equals(this.f2120c)) {
            this.t = true;
            this.f2120c.set(this.f2119b);
        }
    }

    private void c() {
        if (this.t) {
            this.s.reset();
            this.f2119b.inset(this.o / 2.0f, this.o / 2.0f);
            if (this.l) {
                this.s.addCircle(this.f2119b.centerX(), this.f2119b.centerY(), Math.min(this.f2119b.width(), this.f2119b.height()) / 2.0f, Path.Direction.CW);
            } else {
                for (int i = 0; i < this.f2118a.length; i++) {
                    this.f2118a[i] = (this.n[i] + this.q) - (this.o / 2.0f);
                }
                this.s.addRoundRect(this.f2119b, this.f2118a, Path.Direction.CW);
            }
            this.f2119b.inset((-this.o) / 2.0f, (-this.o) / 2.0f);
            this.r.reset();
            this.f2119b.inset(this.q, this.q);
            if (this.l) {
                this.r.addCircle(this.f2119b.centerX(), this.f2119b.centerY(), Math.min(this.f2119b.width(), this.f2119b.height()) / 2.0f, Path.Direction.CW);
            } else {
                this.r.addRoundRect(this.f2119b, this.n, Path.Direction.CW);
            }
            this.f2119b.inset(-this.q, -this.q);
            this.r.setFillType(Path.FillType.WINDING);
            this.t = false;
        }
    }

    private void d() {
        Bitmap bitmap = getBitmap();
        if (this.x == null || this.x.get() != bitmap) {
            this.x = new WeakReference<>(bitmap);
            this.u.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            this.w = true;
        }
        if (this.w) {
            this.u.getShader().setLocalMatrix(this.k);
            this.w = false;
        }
    }
}
