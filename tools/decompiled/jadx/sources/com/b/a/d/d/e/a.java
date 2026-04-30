package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: GifBitmapWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<com.b.a.d.d.d.b> f1082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z<Bitmap> f1083b;

    public a(z<Bitmap> zVar, z<com.b.a.d.d.d.b> zVar2) {
        if (zVar != null && zVar2 != null) {
            throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
        }
        if (zVar == null && zVar2 == null) {
            throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
        }
        this.f1083b = zVar;
        this.f1082a = zVar2;
    }

    public int a() {
        return this.f1083b != null ? this.f1083b.c() : this.f1082a.c();
    }

    public z<Bitmap> b() {
        return this.f1083b;
    }

    public z<com.b.a.d.d.d.b> c() {
        return this.f1082a;
    }
}
