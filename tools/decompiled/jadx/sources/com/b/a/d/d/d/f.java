package com.b.a.d.d.d;

import android.graphics.Bitmap;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: GifDrawableTransformation.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements com.b.a.d.g<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.g<Bitmap> f1052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1053b;

    public f(com.b.a.d.g<Bitmap> gVar, com.b.a.d.b.a.e eVar) {
        this.f1052a = gVar;
        this.f1053b = eVar;
    }

    @Override // com.b.a.d.g
    public z<b> a(z<b> zVar, int i, int i2) {
        b bVarB = zVar.b();
        Bitmap bitmapB = zVar.b().b();
        Bitmap bitmapB2 = this.f1052a.a(new com.b.a.d.d.a.c(bitmapB, this.f1053b), i, i2).b();
        if (!bitmapB2.equals(bitmapB)) {
            return new e(new b(bVarB, bitmapB2, this.f1052a));
        }
        return zVar;
    }

    @Override // com.b.a.d.g
    public String a() {
        return this.f1052a.a();
    }
}
