package com.b.a;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.b.a.d.c.s;
import java.io.InputStream;

/* JADX INFO: compiled from: DrawableTypeRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public class d<ModelType> extends c<ModelType> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s<ModelType, InputStream> f759g;
    private final s<ModelType, ParcelFileDescriptor> h;
    private final q i;

    private static <A, Z, R> com.b.a.g.e<A, com.b.a.d.c.j, Z, R> a(h hVar, s<A, InputStream> sVar, s<A, ParcelFileDescriptor> sVar2, Class<Z> cls, Class<R> cls2, com.b.a.d.d.f.c<Z, R> cVar) {
        if (sVar == null && sVar2 == null) {
            return null;
        }
        if (cVar == null) {
            cVar = hVar.a(cls, cls2);
        }
        return new com.b.a.g.e<>(new com.b.a.d.c.h(sVar, sVar2), cVar, hVar.b(com.b.a.d.c.j.class, cls));
    }

    d(Class<ModelType> cls, s<ModelType, InputStream> sVar, s<ModelType, ParcelFileDescriptor> sVar2, Context context, h hVar, com.b.a.e.q qVar, com.b.a.e.i iVar, q qVar2) {
        super(context, cls, a(hVar, sVar, sVar2, com.b.a.d.d.e.a.class, com.b.a.d.d.b.b.class, null), hVar, qVar, iVar);
        this.f759g = sVar;
        this.h = sVar2;
        this.i = qVar2;
    }

    public b<ModelType> h() {
        return (b) this.i.a(new b(this, this.f759g, this.h, this.i));
    }
}
