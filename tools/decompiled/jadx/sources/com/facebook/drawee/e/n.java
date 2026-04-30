package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import java.util.Arrays;

/* JADX INFO: compiled from: RoundedCornersDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends h implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    p f2132a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float[] f2133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Paint f2134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f2135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f2137g;
    private int h;
    private int i;
    private float j;
    private final Path k;
    private final Path l;
    private final RectF m;

    public n(Drawable drawable) {
        super((Drawable) com.facebook.d.d.k.a(drawable));
        this.f2132a = p.OVERLAY_COLOR;
        this.f2135e = new float[8];
        this.f2133c = new float[8];
        this.f2134d = new Paint(1);
        this.f2136f = false;
        this.f2137g = 0.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0.0f;
        this.k = new Path();
        this.l = new Path();
        this.m = new RectF();
    }

    @Override // com.facebook.drawee.e.k
    public void a(boolean z) {
        this.f2136f = z;
        b();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.f2135e, 0.0f);
        } else {
            com.facebook.d.d.k.a(fArr.length == 8, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.f2135e, 0, 8);
        }
        b();
        invalidateSelf();
    }

    public void a(int i) {
        this.i = i;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(int i, float f2) {
        this.h = i;
        this.f2137g = f2;
        b();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.k
    public void a(float f2) {
        this.j = f2;
        b();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b();
    }

    private void b() {
        this.k.reset();
        this.l.reset();
        this.m.set(getBounds());
        this.m.inset(this.j, this.j);
        if (this.f2136f) {
            this.k.addCircle(this.m.centerX(), this.m.centerY(), Math.min(this.m.width(), this.m.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.k.addRoundRect(this.m, this.f2135e, Path.Direction.CW);
        }
        this.m.inset(-this.j, -this.j);
        this.m.inset(this.f2137g / 2.0f, this.f2137g / 2.0f);
        if (this.f2136f) {
            this.l.addCircle(this.m.centerX(), this.m.centerY(), Math.min(this.m.width(), this.m.height()) / 2.0f, Path.Direction.CW);
        } else {
            for (int i = 0; i < this.f2133c.length; i++) {
                this.f2133c[i] = (this.f2135e[i] + this.j) - (this.f2137g / 2.0f);
            }
            this.l.addRoundRect(this.m, this.f2133c, Path.Direction.CW);
        }
        this.m.inset((-this.f2137g) / 2.0f, (-this.f2137g) / 2.0f);
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        switch (this.f2132a) {
            case CLIPPING:
                int iSave = canvas.save();
                this.k.setFillType(Path.FillType.EVEN_ODD);
                canvas.clipPath(this.k);
                super.draw(canvas);
                canvas.restoreToCount(iSave);
                break;
            case OVERLAY_COLOR:
                super.draw(canvas);
                this.f2134d.setColor(this.i);
                this.f2134d.setStyle(Paint.Style.FILL);
                this.k.setFillType(Path.FillType.INVERSE_EVEN_ODD);
                canvas.drawPath(this.k, this.f2134d);
                if (this.f2136f) {
                    float fWidth = ((bounds.width() - bounds.height()) + this.f2137g) / 2.0f;
                    float fHeight = ((bounds.height() - bounds.width()) + this.f2137g) / 2.0f;
                    if (fWidth > 0.0f) {
                        canvas.drawRect(bounds.left, bounds.top, bounds.left + fWidth, bounds.bottom, this.f2134d);
                        canvas.drawRect(bounds.right - fWidth, bounds.top, bounds.right, bounds.bottom, this.f2134d);
                    }
                    if (fHeight > 0.0f) {
                        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.top + fHeight, this.f2134d);
                        canvas.drawRect(bounds.left, bounds.bottom - fHeight, bounds.right, bounds.bottom, this.f2134d);
                    }
                }
                break;
        }
        if (this.h != 0) {
            this.f2134d.setStyle(Paint.Style.STROKE);
            this.f2134d.setColor(this.h);
            this.f2134d.setStrokeWidth(this.f2137g);
            this.k.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.l, this.f2134d);
        }
    }
}
