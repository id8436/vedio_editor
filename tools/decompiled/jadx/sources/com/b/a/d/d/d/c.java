package com.b.a.d.d.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: GifDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.b.a.b.d f1041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    byte[] f1042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f1043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.b.a.d.g<Bitmap> f1044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.b.a.b.b f1047g;
    com.b.a.d.b.a.e h;
    Bitmap i;

    public c(com.b.a.b.d dVar, byte[] bArr, Context context, com.b.a.d.g<Bitmap> gVar, int i, int i2, com.b.a.b.b bVar, com.b.a.d.b.a.e eVar, Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("The first frame of the GIF must not be null");
        }
        this.f1041a = dVar;
        this.f1042b = bArr;
        this.h = eVar;
        this.i = bitmap;
        this.f1043c = context.getApplicationContext();
        this.f1044d = gVar;
        this.f1045e = i;
        this.f1046f = i2;
        this.f1047g = bVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return newDrawable();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new b(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }
}
