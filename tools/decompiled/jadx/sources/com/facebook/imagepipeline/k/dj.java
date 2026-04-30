package com.facebook.imagepipeline.k;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: WebpTranscodeProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class dj extends w<com.facebook.imagepipeline.h.d, com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ dh f2788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm f2789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.facebook.d.m.e f2790c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dj(dh dhVar, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        super(oVar);
        this.f2788a = dhVar;
        this.f2789b = cmVar;
        this.f2790c = com.facebook.d.m.e.UNSET;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.k.d
    public void a(@Nullable com.facebook.imagepipeline.h.d dVar, boolean z) {
        if (this.f2790c == com.facebook.d.m.e.UNSET && dVar != null) {
            this.f2790c = dh.b(dVar);
        }
        if (this.f2790c == com.facebook.d.m.e.NO) {
            d().b(dVar, z);
            return;
        }
        if (z) {
            if (this.f2790c == com.facebook.d.m.e.YES && dVar != null) {
                this.f2788a.a(dVar, d(), this.f2789b);
            } else {
                d().b(dVar, z);
            }
        }
    }
}
