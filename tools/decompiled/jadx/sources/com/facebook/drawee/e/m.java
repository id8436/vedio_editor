package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import java.util.Arrays;

/* JADX INFO: compiled from: RoundedColorDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class m extends Drawable implements k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f2129e = new float[8];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float[] f2125a = new float[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Paint f2126b = new Paint(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2130f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f2131g = 0.0f;
    private float h = 0.0f;
    private int i = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Path f2127c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Path f2128d = new Path();
    private int j = 0;
    private final RectF k = new RectF();
    private int l = 255;

    public m(int i) {
        a(i);
    }

    public static m a(ColorDrawable colorDrawable) {
        return new m(colorDrawable.getColor());
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f2126b.setColor(f.a(this.j, this.l));
        this.f2126b.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.f2127c, this.f2126b);
        if (this.f2131g != 0.0f) {
            this.f2126b.setColor(f.a(this.i, this.l));
            this.f2126b.setStyle(Paint.Style.STROKE);
            this.f2126b.setStrokeWidth(this.f2131g);
            canvas.drawPath(this.f2128d, this.f2126b);
        }
    }

    @Override // com.facebook.drawee.e.k
    public void a(boolean z) {
        this.f2130f = z;
        a();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f2129e, 0.0f);
        } else {
            com.facebook.d.d.k.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f2129e, 0, 8);
        }
        a();
        invalidateSelf();
    }

    public void a(int i) {
        if (this.j != i) {
            this.j = i;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.e.k
    public void a(int i, float f2) {
        if (this.i != i) {
            this.i = i;
            invalidateSelf();
        }
        if (this.f2131g != f2) {
            this.f2131g = f2;
            a();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.e.k
    public void a(float f2) {
        if (this.h != f2) {
            this.h = f2;
            a();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.l) {
            this.l = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.a(f.a(this.j, this.l));
    }

    private void a() {
        this.f2127c.reset();
        this.f2128d.reset();
        this.k.set(getBounds());
        this.k.inset(this.f2131g / 2.0f, this.f2131g / 2.0f);
        if (this.f2130f) {
            this.f2128d.addCircle(this.k.centerX(), this.k.centerY(), Math.min(this.k.width(), this.k.height()) / 2.0f, Path.Direction.CW);
        } else {
            for (int i = 0; i < this.f2125a.length; i++) {
                this.f2125a[i] = (this.f2129e[i] + this.h) - (this.f2131g / 2.0f);
            }
            this.f2128d.addRoundRect(this.k, this.f2125a, Path.Direction.CW);
        }
        this.k.inset((-this.f2131g) / 2.0f, (-this.f2131g) / 2.0f);
        this.k.inset(this.h, this.h);
        if (this.f2130f) {
            this.f2127c.addCircle(this.k.centerX(), this.k.centerY(), Math.min(this.k.width(), this.k.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.f2127c.addRoundRect(this.k, this.f2129e, Path.Direction.CW);
        }
        this.k.inset(-this.h, -this.h);
    }
}
