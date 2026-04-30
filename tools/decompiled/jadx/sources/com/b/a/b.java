package com.b.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import java.io.InputStream;

/* JADX INFO: compiled from: BitmapTypeRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public class b<ModelType> extends a<ModelType, Bitmap> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s<ModelType, InputStream> f712g;
    private final s<ModelType, ParcelFileDescriptor> h;
    private final h i;
    private final q j;

    private static <A, R> com.b.a.g.e<A, com.b.a.d.c.j, Bitmap, R> a(h hVar, s<A, InputStream> sVar, s<A, ParcelFileDescriptor> sVar2, Class<R> cls, com.b.a.d.d.f.c<Bitmap, R> cVar) {
        if (sVar == null && sVar2 == null) {
            return null;
        }
        if (cVar == null) {
            cVar = hVar.a(Bitmap.class, cls);
        }
        return new com.b.a.g.e<>(new com.b.a.d.c.h(sVar, sVar2), cVar, hVar.b(com.b.a.d.c.j.class, Bitmap.class));
    }

    b(e<ModelType, ?, ?, ?> eVar, s<ModelType, InputStream> sVar, s<ModelType, ParcelFileDescriptor> sVar2, q qVar) {
        super(a(eVar.f1110c, sVar, sVar2, Bitmap.class, null), Bitmap.class, eVar);
        this.f712g = sVar;
        this.h = sVar2;
        this.i = eVar.f1110c;
        this.j = qVar;
    }
}
