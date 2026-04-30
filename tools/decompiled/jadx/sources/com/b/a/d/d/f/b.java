package com.b.a.d.d.f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import com.b.a.d.b.z;
import com.b.a.d.d.a.m;
import com.b.a.d.d.a.o;

/* JADX INFO: compiled from: GlideBitmapDrawableTranscoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c<Bitmap, m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f1103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1104b;

    public b(Resources resources, com.b.a.d.b.a.e eVar) {
        this.f1103a = resources;
        this.f1104b = eVar;
    }

    @Override // com.b.a.d.d.f.c
    public z<m> a(z<Bitmap> zVar) {
        return new o(new m(this.f1103a, zVar.b()), this.f1104b);
    }

    @Override // com.b.a.d.d.f.c
    public String a() {
        return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
