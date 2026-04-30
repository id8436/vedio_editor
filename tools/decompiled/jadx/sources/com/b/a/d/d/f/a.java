package com.b.a.d.d.f;

import android.graphics.Bitmap;
import com.b.a.d.b.z;
import com.b.a.d.d.a.m;

/* JADX INFO: compiled from: GifBitmapWrapperDrawableTranscoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements c<com.b.a.d.d.e.a, com.b.a.d.d.b.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<Bitmap, m> f1102a;

    public a(c<Bitmap, m> cVar) {
        this.f1102a = cVar;
    }

    @Override // com.b.a.d.d.f.c
    public z<com.b.a.d.d.b.b> a(z<com.b.a.d.d.e.a> zVar) {
        com.b.a.d.d.e.a aVarB = zVar.b();
        z<Bitmap> zVarB = aVarB.b();
        if (zVarB != null) {
            return this.f1102a.a(zVarB);
        }
        return aVarB.c();
    }

    @Override // com.b.a.d.d.f.c
    public String a() {
        return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
