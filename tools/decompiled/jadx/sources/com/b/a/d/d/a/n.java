package com.b.a.d.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: GlideBitmapDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class n extends Drawable.ConstantState {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Paint f987d = new Paint(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Bitmap f988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Paint f990c;

    public n(Bitmap bitmap) {
        this.f990c = f987d;
        this.f988a = bitmap;
    }

    n(n nVar) {
        this(nVar.f988a);
        this.f989b = nVar.f989b;
    }

    void a(ColorFilter colorFilter) {
        a();
        this.f990c.setColorFilter(colorFilter);
    }

    void a(int i) {
        a();
        this.f990c.setAlpha(i);
    }

    void a() {
        if (f987d == this.f990c) {
            this.f990c = new Paint(6);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new m((Resources) null, this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new m(resources, this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }
}
