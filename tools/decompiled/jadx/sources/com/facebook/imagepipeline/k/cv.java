package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: ThreadHandoffProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class cv<T> implements cl<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cl<T> f2757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cy f2758b;

    public cv(cl<T> clVar, cy cyVar) {
        this.f2757a = (cl) com.facebook.d.d.k.a(clVar);
        this.f2758b = cyVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<T> oVar, cm cmVar) {
        co coVarC = cmVar.c();
        String strB = cmVar.b();
        cw cwVar = new cw(this, oVar, coVarC, "BackgroundThreadHandoffProducer", strB, coVarC, strB, oVar, cmVar);
        cmVar.a(new cx(this, cwVar));
        this.f2758b.a(cwVar);
    }
}
