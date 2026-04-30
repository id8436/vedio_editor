package com.facebook.imagepipeline.k;

import android.util.Pair;

/* JADX INFO: compiled from: BitmapMemoryCacheKeyMultiplexProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends br<Pair<com.facebook.c.a.f, com.facebook.imagepipeline.l.c>, com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2798b;

    public i(com.facebook.imagepipeline.c.k kVar, cl clVar) {
        super(clVar);
        this.f2798b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.br
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Pair<com.facebook.c.a.f, com.facebook.imagepipeline.l.c> b(cm cmVar) {
        return Pair.create(this.f2798b.a(cmVar.a(), cmVar.d()), cmVar.e());
    }

    @Override // com.facebook.imagepipeline.k.br
    public com.facebook.d.h.a<com.facebook.imagepipeline.h.b> a(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        return com.facebook.d.h.a.b(aVar);
    }
}
