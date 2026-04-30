package com.alertdialogpro.material.a;

/* JADX INFO: compiled from: CircularAnimatedDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends com.g.b.c<a, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f677a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(a aVar, Class cls, String str) {
        super(cls, str);
        this.f677a = aVar;
    }

    @Override // com.g.b.c
    public Float a(a aVar) {
        return Float.valueOf(aVar.b());
    }

    @Override // com.g.b.c
    public void a(a aVar, Float f2) {
        aVar.b(f2.floatValue());
    }
}
