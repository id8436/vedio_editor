package com.facebook.imagepipeline.k;

import android.util.Pair;

/* JADX INFO: compiled from: EncodedCacheKeyMultiplexProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class ae extends br<Pair<com.facebook.c.a.f, com.facebook.imagepipeline.l.c>, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2602b;

    public ae(com.facebook.imagepipeline.c.k kVar, cl clVar) {
        super(clVar);
        this.f2602b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.br
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Pair<com.facebook.c.a.f, com.facebook.imagepipeline.l.c> b(cm cmVar) {
        return Pair.create(this.f2602b.c(cmVar.a(), cmVar.d()), cmVar.e());
    }

    @Override // com.facebook.imagepipeline.k.br
    public com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.h.d dVar) {
        return com.facebook.imagepipeline.h.d.a(dVar);
    }
}
