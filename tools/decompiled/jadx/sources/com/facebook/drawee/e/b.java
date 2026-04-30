package com.facebook.drawee.e;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: ArrayDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f2089b;

    b(a aVar, int i) {
        this.f2089b = aVar;
        this.f2088a = i;
    }

    @Override // com.facebook.drawee.e.d
    public Drawable a(Drawable drawable) {
        return this.f2089b.a(this.f2088a, drawable);
    }

    @Override // com.facebook.drawee.e.d
    public Drawable a() {
        return this.f2089b.a(this.f2088a);
    }
}
