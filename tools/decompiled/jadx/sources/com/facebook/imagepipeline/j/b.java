package com.facebook.imagepipeline.j;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.facebook.d.d.k;
import com.facebook.d.d.p;
import com.facebook.imagepipeline.d.f;
import com.facebook.imagepipeline.memory.ah;
import com.facebook.imagepipeline.memory.g;
import com.facebook.imagepipeline.nativecode.Bitmaps;

/* JADX INFO: compiled from: DalvikPurgeableDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final byte[] f2593a = {-1, -39};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.e f2594b = g.a();

    abstract Bitmap a(com.facebook.d.h.a<ah> aVar, int i, BitmapFactory.Options options);

    abstract Bitmap a(com.facebook.d.h.a<ah> aVar, BitmapFactory.Options options);

    b() {
    }

    @Override // com.facebook.imagepipeline.j.e
    public com.facebook.d.h.a<Bitmap> a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config) {
        BitmapFactory.Options optionsA = a(dVar.i(), config);
        com.facebook.d.h.a<ah> aVarC = dVar.c();
        k.a(aVarC);
        try {
            return a(a(aVarC, optionsA));
        } finally {
            com.facebook.d.h.a.c(aVarC);
        }
    }

    @Override // com.facebook.imagepipeline.j.e
    public com.facebook.d.h.a<Bitmap> a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config, int i) {
        BitmapFactory.Options optionsA = a(dVar.i(), config);
        com.facebook.d.h.a<ah> aVarC = dVar.c();
        k.a(aVarC);
        try {
            return a(a(aVarC, i, optionsA));
        } finally {
            com.facebook.d.h.a.c(aVarC);
        }
    }

    private static BitmapFactory.Options a(int i, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i;
        if (Build.VERSION.SDK_INT >= 11) {
            options.inMutable = true;
        }
        return options;
    }

    protected static boolean a(com.facebook.d.h.a<ah> aVar, int i) {
        ah ahVarA = aVar.a();
        return i >= 2 && ahVarA.a(i + (-2)) == -1 && ahVarA.a(i + (-1)) == -39;
    }

    public com.facebook.d.h.a<Bitmap> a(Bitmap bitmap) {
        try {
            Bitmaps.a(bitmap);
            if (!this.f2594b.a(bitmap)) {
                bitmap.recycle();
                throw new f();
            }
            return com.facebook.d.h.a.a(bitmap, this.f2594b.a());
        } catch (Exception e2) {
            bitmap.recycle();
            throw p.b(e2);
        }
    }
}
