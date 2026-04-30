package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.b.z;
import com.b.a.d.c.j;
import com.b.a.d.d.a.q;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: GifBitmapWrapperResourceDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements com.b.a.d.e<j, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f1085a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d f1086b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.e<j, Bitmap> f1087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.e<InputStream, com.b.a.d.d.d.b> f1088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f1090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f1091g;
    private String h;

    public c(com.b.a.d.e<j, Bitmap> eVar, com.b.a.d.e<InputStream, com.b.a.d.d.d.b> eVar2, com.b.a.d.b.a.e eVar3) {
        this(eVar, eVar2, eVar3, f1085a, f1086b);
    }

    c(com.b.a.d.e<j, Bitmap> eVar, com.b.a.d.e<InputStream, com.b.a.d.d.d.b> eVar2, com.b.a.d.b.a.e eVar3, e eVar4, d dVar) {
        this.f1087c = eVar;
        this.f1088d = eVar2;
        this.f1089e = eVar3;
        this.f1090f = eVar4;
        this.f1091g = dVar;
    }

    @Override // com.b.a.d.e
    public z<a> a(j jVar, int i, int i2) throws IOException {
        com.b.a.j.a aVarA = com.b.a.j.a.a();
        byte[] bArrB = aVarA.b();
        try {
            a aVarA2 = a(jVar, i, i2, bArrB);
            if (aVarA2 != null) {
                return new b(aVarA2);
            }
            return null;
        } finally {
            aVarA.a(bArrB);
        }
    }

    private a a(j jVar, int i, int i2, byte[] bArr) throws IOException {
        if (jVar.a() != null) {
            return b(jVar, i, i2, bArr);
        }
        return b(jVar, i, i2);
    }

    private a b(j jVar, int i, int i2, byte[] bArr) throws IOException {
        InputStream inputStreamA = this.f1091g.a(jVar.a(), bArr);
        inputStreamA.mark(2048);
        q qVarA = this.f1090f.a(inputStreamA);
        inputStreamA.reset();
        a aVarA = null;
        if (qVarA == q.GIF) {
            aVarA = a(inputStreamA, i, i2);
        }
        if (aVarA == null) {
            return b(new j(inputStreamA, jVar.b()), i, i2);
        }
        return aVarA;
    }

    private a a(InputStream inputStream, int i, int i2) throws IOException {
        z<com.b.a.d.d.d.b> zVarA = this.f1088d.a(inputStream, i, i2);
        if (zVarA == null) {
            return null;
        }
        com.b.a.d.d.d.b bVarB = zVarA.b();
        if (bVarB.e() > 1) {
            return new a(null, zVarA);
        }
        return new a(new com.b.a.d.d.a.c(bVarB.b(), this.f1089e), null);
    }

    private a b(j jVar, int i, int i2) throws IOException {
        z<Bitmap> zVarA = this.f1087c.a(jVar, i, i2);
        if (zVarA != null) {
            return new a(zVarA, null);
        }
        return null;
    }

    @Override // com.b.a.d.e
    public String a() {
        if (this.h == null) {
            this.h = this.f1088d.a() + this.f1087c.a();
        }
        return this.h;
    }
}
