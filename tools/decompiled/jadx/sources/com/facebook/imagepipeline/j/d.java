package com.facebook.imagepipeline.j;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.d.d.k;
import com.facebook.imagepipeline.memory.ah;
import com.facebook.imagepipeline.memory.o;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: KitKatPurgeableDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
@TargetApi(19)
public class d extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f2596b;

    @Override // com.facebook.imagepipeline.j.b
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(Bitmap bitmap) {
        return super.a(bitmap);
    }

    @Override // com.facebook.imagepipeline.j.b, com.facebook.imagepipeline.j.e
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config) {
        return super.a(dVar, config);
    }

    @Override // com.facebook.imagepipeline.j.b, com.facebook.imagepipeline.j.e
    public /* bridge */ /* synthetic */ com.facebook.d.h.a a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config, int i) {
        return super.a(dVar, config, i);
    }

    public d(o oVar) {
        this.f2596b = oVar;
    }

    @Override // com.facebook.imagepipeline.j.b
    protected Bitmap a(com.facebook.d.h.a<ah> aVar, BitmapFactory.Options options) {
        ah ahVarA = aVar.a();
        int iA = ahVarA.a();
        com.facebook.d.h.a<byte[]> aVarA = this.f2596b.a(iA);
        try {
            byte[] bArrA = aVarA.a();
            ahVarA.a(0, bArrA, 0, iA);
            return (Bitmap) k.a(BitmapFactory.decodeByteArray(bArrA, 0, iA, options), "BitmapFactory returned null");
        } finally {
            com.facebook.d.h.a.c(aVarA);
        }
    }

    @Override // com.facebook.imagepipeline.j.b
    protected Bitmap a(com.facebook.d.h.a<ah> aVar, int i, BitmapFactory.Options options) {
        byte[] bArr = a(aVar, i) ? null : f2593a;
        ah ahVarA = aVar.a();
        k.a(i <= ahVarA.a());
        com.facebook.d.h.a<byte[]> aVarA = this.f2596b.a(i + 2);
        try {
            byte[] bArrA = aVarA.a();
            ahVarA.a(0, bArrA, 0, i);
            if (bArr != null) {
                a(bArrA, i);
                i += 2;
            }
            return (Bitmap) k.a(BitmapFactory.decodeByteArray(bArrA, 0, i, options), "BitmapFactory returned null");
        } finally {
            com.facebook.d.h.a.c(aVarA);
        }
    }

    private static void a(byte[] bArr, int i) {
        bArr[i] = -1;
        bArr[i + 1] = -39;
    }
}
