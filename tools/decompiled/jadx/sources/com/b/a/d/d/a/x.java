package com.b.a.d.d.a;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamBitmapDataLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements com.b.a.g.b<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f1015a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.d.c.c<Bitmap> f1018d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.c.v f1017c = new com.b.a.d.c.v();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f1016b = new b();

    public x(com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this.f1015a = new y(eVar, aVar);
        this.f1018d = new com.b.a.d.d.c.c<>(this.f1015a);
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, Bitmap> a() {
        return this.f1018d;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<InputStream, Bitmap> b() {
        return this.f1015a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<InputStream> c() {
        return this.f1017c;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<Bitmap> d() {
        return this.f1016b;
    }
}
