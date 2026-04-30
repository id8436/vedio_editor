package com.b.a;

import android.content.Context;
import com.b.a.d.c.s;

/* JADX INFO: compiled from: GenericTranscodeRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public class g<ModelType, DataType, ResourceType> extends e<ModelType, DataType, ResourceType, ResourceType> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s<ModelType, DataType> f1146g;
    private final Class<DataType> h;
    private final Class<ResourceType> i;
    private final q j;

    private static <A, T, Z, R> com.b.a.g.f<A, T, Z, R> a(h hVar, s<A, T> sVar, Class<T> cls, Class<Z> cls2, com.b.a.d.d.f.c<Z, R> cVar) {
        return new com.b.a.g.e(sVar, cVar, hVar.b(cls, cls2));
    }

    g(Context context, h hVar, Class<ModelType> cls, s<ModelType, DataType> sVar, Class<DataType> cls2, Class<ResourceType> cls3, com.b.a.e.q qVar, com.b.a.e.i iVar, q qVar2) {
        super(context, cls, a(hVar, sVar, cls2, cls3, com.b.a.d.d.f.e.b()), cls3, hVar, qVar, iVar);
        this.f1146g = sVar;
        this.h = cls2;
        this.i = cls3;
        this.j = qVar2;
    }
}
