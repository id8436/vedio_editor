package com.b.a.d.d.a;

import android.graphics.Bitmap;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamBitmapDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class y implements com.b.a.d.e<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f1019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.b.a.d.b.a.e f1020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.a f1021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1022d;

    public y(com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this(f.f969a, eVar, aVar);
    }

    public y(f fVar, com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this.f1019a = fVar;
        this.f1020b = eVar;
        this.f1021c = aVar;
    }

    @Override // com.b.a.d.e
    public com.b.a.d.b.z<Bitmap> a(InputStream inputStream, int i, int i2) {
        return c.a(this.f1019a.a(inputStream, this.f1020b, i, i2, this.f1021c), this.f1020b);
    }

    @Override // com.b.a.d.e
    public String a() {
        if (this.f1022d == null) {
            this.f1022d = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + this.f1019a.a() + this.f1021c.name();
        }
        return this.f1022d;
    }
}
