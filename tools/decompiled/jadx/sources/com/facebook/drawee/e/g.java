package com.facebook.drawee.e;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import java.util.Arrays;

/* JADX INFO: compiled from: FadeDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f2101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f2102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f2103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean[] f2105g;
    int h;
    private final Drawable[] i;

    public g(Drawable[] drawableArr) {
        super(drawableArr);
        com.facebook.d.d.k.b(drawableArr.length >= 1, "At least one layer required!");
        this.i = drawableArr;
        this.f2102d = new int[drawableArr.length];
        this.f2103e = new int[drawableArr.length];
        this.f2104f = 255;
        this.f2105g = new boolean[drawableArr.length];
        this.h = 0;
        g();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.h == 0) {
            super.invalidateSelf();
        }
    }

    public void b() {
        this.h++;
    }

    public void c() {
        this.h--;
        invalidateSelf();
    }

    public void c(int i) {
        this.f2100b = i;
        if (this.f2099a == 1) {
            this.f2099a = 0;
        }
    }

    private void g() {
        this.f2099a = 2;
        Arrays.fill(this.f2102d, 0);
        this.f2102d[0] = 255;
        Arrays.fill(this.f2103e, 0);
        this.f2103e[0] = 255;
        Arrays.fill(this.f2105g, false);
        this.f2105g[0] = true;
    }

    public void d(int i) {
        this.f2099a = 0;
        this.f2105g[i] = true;
        invalidateSelf();
    }

    public void e(int i) {
        this.f2099a = 0;
        this.f2105g[i] = false;
        invalidateSelf();
    }

    public void d() {
        this.f2099a = 0;
        Arrays.fill(this.f2105g, true);
        invalidateSelf();
    }

    public void e() {
        this.f2099a = 2;
        for (int i = 0; i < this.i.length; i++) {
            this.f2103e[i] = this.f2105g[i] ? 255 : 0;
        }
        invalidateSelf();
    }

    private boolean a(float f2) {
        boolean z = true;
        for (int i = 0; i < this.i.length; i++) {
            this.f2103e[i] = (int) (((this.f2105g[i] ? 1 : -1) * 255 * f2) + this.f2102d[i]);
            if (this.f2103e[i] < 0) {
                this.f2103e[i] = 0;
            }
            if (this.f2103e[i] > 255) {
                this.f2103e[i] = 255;
            }
            if (this.f2105g[i] && this.f2103e[i] < 255) {
                z = false;
            }
            if (!this.f2105g[i] && this.f2103e[i] > 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.drawee.e.a, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = true;
        switch (this.f2099a) {
            case 0:
                System.arraycopy(this.f2103e, 0, this.f2102d, 0, this.i.length);
                this.f2101c = f();
                boolean zA = a(this.f2100b == 0 ? 1.0f : 0.0f);
                this.f2099a = zA ? 2 : 1;
                z = zA;
                break;
            case 1:
                com.facebook.d.d.k.b(this.f2100b > 0);
                boolean zA2 = a((f() - this.f2101c) / this.f2100b);
                this.f2099a = zA2 ? 2 : 1;
                z = zA2;
                break;
        }
        for (int i = 0; i < this.i.length; i++) {
            a(canvas, this.i[i], (this.f2103e[i] * this.f2104f) / 255);
        }
        if (!z) {
            invalidateSelf();
        }
    }

    private void a(Canvas canvas, Drawable drawable, int i) {
        if (drawable != null && i > 0) {
            this.h++;
            drawable.mutate().setAlpha(i);
            this.h--;
            drawable.draw(canvas);
        }
    }

    @Override // com.facebook.drawee.e.a, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2104f != i) {
            this.f2104f = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2104f;
    }

    protected long f() {
        return SystemClock.uptimeMillis();
    }
}
