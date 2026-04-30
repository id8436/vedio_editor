package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: MatrixDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Matrix f2110a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f2111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2113e;

    public i(Drawable drawable, Matrix matrix) {
        super((Drawable) com.facebook.d.d.k.a(drawable));
        this.f2112d = 0;
        this.f2113e = 0;
        this.f2110a = matrix;
    }

    @Override // com.facebook.drawee.e.h
    public Drawable b(Drawable drawable) {
        Drawable drawableB = super.b(drawable);
        c();
        return drawableB;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b();
        if (this.f2111c != null) {
            int iSave = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f2111c);
            super.draw(canvas);
            canvas.restoreToCount(iSave);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        c();
    }

    private void b() {
        if (this.f2112d != getCurrent().getIntrinsicWidth() || this.f2113e != getCurrent().getIntrinsicHeight()) {
            c();
        }
    }

    private void c() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f2112d = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f2113e = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f2111c = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f2111c = this.f2110a;
        }
    }

    @Override // com.facebook.drawee.e.h, com.facebook.drawee.e.ae
    public void a(Matrix matrix) {
        super.a(matrix);
        if (this.f2111c != null) {
            matrix.preConcat(this.f2111c);
        }
    }
}
