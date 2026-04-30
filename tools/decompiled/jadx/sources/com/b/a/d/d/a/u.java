package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoDataLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class u implements com.b.a.g.b<com.b.a.d.c.j, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f1006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.e<File, Bitmap> f1007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.f<Bitmap> f1008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.c.k f1009d;

    public u(com.b.a.g.b<InputStream, Bitmap> bVar, com.b.a.g.b<ParcelFileDescriptor, Bitmap> bVar2) {
        this.f1008c = bVar.d();
        this.f1009d = new com.b.a.d.c.k(bVar.c(), bVar2.c());
        this.f1007b = bVar.a();
        this.f1006a = new t(bVar.b(), bVar2.b());
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, Bitmap> a() {
        return this.f1007b;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<com.b.a.d.c.j, Bitmap> b() {
        return this.f1006a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<com.b.a.d.c.j> c() {
        return this.f1009d;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<Bitmap> d() {
        return this.f1008c;
    }
}
