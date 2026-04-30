package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.c.j;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoGifDrawableLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements com.b.a.g.b<j, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.e<File, a> f1098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.e<j, a> f1099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.f<a> f1100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.b<j> f1101d;

    public i(com.b.a.g.b<j, Bitmap> bVar, com.b.a.g.b<InputStream, com.b.a.d.d.d.b> bVar2, com.b.a.d.b.a.e eVar) {
        c cVar = new c(bVar.b(), bVar2.b(), eVar);
        this.f1098a = new com.b.a.d.d.c.c(new g(cVar));
        this.f1099b = cVar;
        this.f1100c = new f(bVar.d(), bVar2.d());
        this.f1101d = bVar.c();
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, a> a() {
        return this.f1098a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<j, a> b() {
        return this.f1099b;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<j> c() {
        return this.f1101d;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<a> d() {
        return this.f1100c;
    }
}
