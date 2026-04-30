package com.b.a.d.d.e;

import android.graphics.Bitmap;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: GifBitmapWrapperTransformation.java */
/* JADX INFO: loaded from: classes2.dex */
public class h implements com.b.a.d.g<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.g<Bitmap> f1096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.g<com.b.a.d.d.d.b> f1097b;

    public h(com.b.a.d.b.a.e eVar, com.b.a.d.g<Bitmap> gVar) {
        this(gVar, new com.b.a.d.d.d.f(gVar, eVar));
    }

    h(com.b.a.d.g<Bitmap> gVar, com.b.a.d.g<com.b.a.d.d.d.b> gVar2) {
        this.f1096a = gVar;
        this.f1097b = gVar2;
    }

    @Override // com.b.a.d.g
    public z<a> a(z<a> zVar, int i, int i2) {
        z<Bitmap> zVarB = zVar.b().b();
        z<com.b.a.d.d.d.b> zVarC = zVar.b().c();
        if (zVarB != null && this.f1096a != null) {
            z<Bitmap> zVarA = this.f1096a.a(zVarB, i, i2);
            if (!zVarB.equals(zVarA)) {
                return new b(new a(zVarA, zVar.b().c()));
            }
            return zVar;
        }
        if (zVarC != null && this.f1097b != null) {
            z<com.b.a.d.d.d.b> zVarA2 = this.f1097b.a(zVarC, i, i2);
            if (!zVarC.equals(zVarA2)) {
                return new b(new a(zVar.b().b(), zVarA2));
            }
            return zVar;
        }
        return zVar;
    }

    @Override // com.b.a.d.g
    public String a() {
        return this.f1096a.a();
    }
}
