package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: WebpTranscodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class di extends cu<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.h.d f2786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ dh f2787c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    di(dh dhVar, o oVar, co coVar, String str, String str2, com.facebook.imagepipeline.h.d dVar) {
        super(oVar, coVar, str, str2);
        this.f2787c = dhVar;
        this.f2786b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.d.b.e
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.h.d c() throws Exception {
        com.facebook.imagepipeline.memory.al alVarB = this.f2787c.f2784b.b();
        try {
            dh.b(this.f2786b, alVarB);
            com.facebook.d.h.a aVarA = com.facebook.d.h.a.a(alVarB.c());
            try {
                com.facebook.imagepipeline.h.d dVar = new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA);
                dVar.b(this.f2786b);
                return dVar;
            } finally {
                com.facebook.d.h.a.c(aVarA);
            }
        } finally {
            alVarB.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.imagepipeline.h.d.d(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(com.facebook.imagepipeline.h.d dVar) {
        com.facebook.imagepipeline.h.d.d(this.f2786b);
        super.a(dVar);
    }

    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    protected void a(Exception exc) {
        com.facebook.imagepipeline.h.d.d(this.f2786b);
        super.a(exc);
    }

    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    protected void b() {
        com.facebook.imagepipeline.h.d.d(this.f2786b);
        super.b();
    }
}
