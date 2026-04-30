package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: GifBitmapWrapperResource.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements z<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f1084a;

    public b(a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.f1084a = aVar;
    }

    @Override // com.b.a.d.b.z
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b() {
        return this.f1084a;
    }

    @Override // com.b.a.d.b.z
    public int c() {
        return this.f1084a.a();
    }

    @Override // com.b.a.d.b.z
    public void d() {
        z<Bitmap> zVarB = this.f1084a.b();
        if (zVarB != null) {
            zVarB.d();
        }
        z<com.b.a.d.d.d.b> zVarC = this.f1084a.c();
        if (zVarC != null) {
            zVarC.d();
        }
    }
}
