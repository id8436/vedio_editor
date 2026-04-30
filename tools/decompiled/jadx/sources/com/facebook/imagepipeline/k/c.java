package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: AddImageTransformMetaDataProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {
    private c(o<com.facebook.imagepipeline.h.d> oVar) {
        super(oVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (dVar == null) {
            d().b(null, z);
            return;
        }
        if (!com.facebook.imagepipeline.h.d.c(dVar)) {
            dVar.l();
        }
        d().b(dVar, z);
    }
}
