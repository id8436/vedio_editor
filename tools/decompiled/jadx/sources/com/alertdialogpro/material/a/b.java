package com.alertdialogpro.material.a;

/* JADX INFO: compiled from: CircularAnimatedDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends com.g.b.c<a, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f676a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b(a aVar, Class cls, String str) {
        super(cls, str);
        this.f676a = aVar;
    }

    @Override // com.g.b.c
    public Float a(a aVar) {
        return Float.valueOf(aVar.a());
    }

    @Override // com.g.b.c
    public void a(a aVar, Float f2) {
        aVar.a(f2.floatValue());
    }
}
