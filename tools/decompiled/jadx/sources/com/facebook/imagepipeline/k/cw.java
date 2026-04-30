package com.facebook.imagepipeline.k;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: ThreadHandoffProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class cw<T> extends cu<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ co f2759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f2760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ o f2761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ cm f2762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ cv f2763f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    cw(cv cvVar, o oVar, co coVar, String str, String str2, co coVar2, String str3, o oVar2, cm cmVar) {
        super(oVar, coVar, str, str2);
        this.f2763f = cvVar;
        this.f2759b = coVar2;
        this.f2760c = str3;
        this.f2761d = oVar2;
        this.f2762e = cmVar;
    }

    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    protected void a(T t) {
        this.f2759b.a(this.f2760c, "BackgroundThreadHandoffProducer", (Map<String, String>) null);
        this.f2763f.f2757a.a(this.f2761d, this.f2762e);
    }

    @Override // com.facebook.imagepipeline.k.cu, com.facebook.d.b.e
    protected void b(T t) {
    }

    @Override // com.facebook.d.b.e
    protected T c() throws Exception {
        return null;
    }
}
