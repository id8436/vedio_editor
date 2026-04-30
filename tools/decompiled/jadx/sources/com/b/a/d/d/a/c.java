package com.b.a.d.d.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapResource.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements com.b.a.d.b.z<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap f966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b.a.e f967b;

    public static c a(Bitmap bitmap, com.b.a.d.b.a.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new c(bitmap, eVar);
    }

    public c(Bitmap bitmap, com.b.a.d.b.a.e eVar) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (eVar == null) {
            throw new NullPointerException("BitmapPool must not be null");
        }
        this.f966a = bitmap;
        this.f967b = eVar;
    }

    @Override // com.b.a.d.b.z
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Bitmap b() {
        return this.f966a;
    }

    @Override // com.b.a.d.b.z
    public int c() {
        return com.b.a.j.h.a(this.f966a);
    }

    @Override // com.b.a.d.b.z
    public void d() {
        if (!this.f967b.a(this.f966a)) {
            this.f966a.recycle();
        }
    }
}
