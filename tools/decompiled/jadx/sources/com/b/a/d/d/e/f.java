package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.b.z;
import java.io.OutputStream;

/* JADX INFO: compiled from: GifBitmapWrapperResourceEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements com.b.a.d.f<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.f<Bitmap> f1092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.f<com.b.a.d.d.d.b> f1093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1094c;

    public f(com.b.a.d.f<Bitmap> fVar, com.b.a.d.f<com.b.a.d.d.d.b> fVar2) {
        this.f1092a = fVar;
        this.f1093b = fVar2;
    }

    @Override // com.b.a.d.b
    public boolean a(z<a> zVar, OutputStream outputStream) {
        a aVarB = zVar.b();
        z<Bitmap> zVarB = aVarB.b();
        return zVarB != null ? this.f1092a.a(zVarB, outputStream) : this.f1093b.a(aVarB.c(), outputStream);
    }

    @Override // com.b.a.d.b
    public String a() {
        if (this.f1094c == null) {
            this.f1094c = this.f1092a.a() + this.f1093b.a();
        }
        return this.f1094c;
    }
}
