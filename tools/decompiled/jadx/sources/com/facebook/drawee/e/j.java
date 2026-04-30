package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: OrientedDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class j extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Matrix f2114a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f2116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f2117e;

    public j(Drawable drawable, int i) {
        super(drawable);
        this.f2116d = new Matrix();
        this.f2117e = new RectF();
        com.facebook.d.d.k.a(i % 90 == 0);
        this.f2114a = new Matrix();
        this.f2115c = i;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2115c <= 0) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.concat(this.f2114a);
        super.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2115c % 180 == 0 ? super.getIntrinsicWidth() : super.getIntrinsicHeight();
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2115c % 180 == 0 ? super.getIntrinsicHeight() : super.getIntrinsicWidth();
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable current = getCurrent();
        if (this.f2115c > 0) {
            this.f2114a.setRotate(this.f2115c, rect.centerX(), rect.centerY());
            this.f2116d.reset();
            this.f2114a.invert(this.f2116d);
            this.f2117e.set(rect);
            this.f2116d.mapRect(this.f2117e);
            current.setBounds((int) this.f2117e.left, (int) this.f2117e.top, (int) this.f2117e.right, (int) this.f2117e.bottom);
            return;
        }
        current.setBounds(rect);
    }

    @Override // com.facebook.drawee.e.h, com.facebook.drawee.e.ae
    public void a(Matrix matrix) {
        b(matrix);
        if (!this.f2114a.isIdentity()) {
            matrix.preConcat(this.f2114a);
        }
    }
}
