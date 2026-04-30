package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* JADX INFO: compiled from: AutoRotateDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f2090a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2093e;

    public c(Drawable drawable, int i) {
        this(drawable, i, true);
    }

    public c(Drawable drawable, int i, boolean z) {
        super((Drawable) com.facebook.d.d.k.a(drawable));
        this.f2090a = 0.0f;
        this.f2093e = false;
        this.f2091c = i;
        this.f2092d = z;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        Rect bounds = getBounds();
        int i = bounds.right - bounds.left;
        int i2 = bounds.bottom - bounds.top;
        float f2 = this.f2090a;
        if (!this.f2092d) {
            f2 = 360.0f - this.f2090a;
        }
        canvas.rotate(f2, (i / 2) + bounds.left, bounds.top + (i2 / 2));
        super.draw(canvas);
        canvas.restoreToCount(iSave);
        b();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2093e = false;
        this.f2090a += c();
        invalidateSelf();
    }

    private void b() {
        if (!this.f2093e) {
            this.f2093e = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + 20);
        }
    }

    private int c() {
        return (int) ((20.0f / this.f2091c) * 360.0f);
    }
}
