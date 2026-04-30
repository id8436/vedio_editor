package com.facebook.imagepipeline.k;

import android.content.ContentResolver;
import android.media.ExifInterface;
import android.net.Uri;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalExifThumbnailProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class av implements df<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f2643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f2645c;

    public av(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, ContentResolver contentResolver) {
        this.f2643a = executor;
        this.f2644b = ajVar;
        this.f2645c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.k.df
    public boolean a(com.facebook.imagepipeline.d.d dVar) {
        return dg.a(512, 512, dVar);
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        aw awVar = new aw(this, oVar, cmVar.c(), "LocalExifThumbnailProducer", cmVar.b(), cmVar.a());
        cmVar.a(new ax(this, awVar));
        this.f2643a.execute(awVar);
    }

    ExifInterface a(Uri uri) throws Throwable {
        String strA = com.facebook.d.m.f.a(this.f2645c, uri);
        if (a(strA)) {
            return new ExifInterface(strA);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.memory.ah ahVar, ExifInterface exifInterface) {
        Pair<Integer, Integer> pairA = com.facebook.h.a.a(new com.facebook.imagepipeline.memory.ak(ahVar));
        int iA = a(exifInterface);
        int iIntValue = pairA != null ? ((Integer) pairA.first).intValue() : -1;
        int iIntValue2 = pairA != null ? ((Integer) pairA.second).intValue() : -1;
        com.facebook.d.h.a aVarA = com.facebook.d.h.a.a(ahVar);
        try {
            com.facebook.imagepipeline.h.d dVar = new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA);
            com.facebook.d.h.a.c(aVarA);
            dVar.a(com.facebook.g.b.f2245a);
            dVar.c(iA);
            dVar.b(iIntValue);
            dVar.a(iIntValue2);
            return dVar;
        } catch (Throwable th) {
            com.facebook.d.h.a.c(aVarA);
            throw th;
        }
    }

    private int a(ExifInterface exifInterface) {
        return com.facebook.h.c.a(Integer.parseInt(exifInterface.getAttribute("Orientation")));
    }

    boolean a(String str) throws IOException {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.canRead();
    }
}
