package com.facebook.c.b;

/* JADX INFO: compiled from: DefaultEntryEvictionComparatorSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
class k implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f1880a;

    k(j jVar) {
        this.f1880a = jVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(q qVar, q qVar2) {
        long jB = qVar.b();
        long jB2 = qVar2.b();
        if (jB < jB2) {
            return -1;
        }
        return jB2 == jB ? 0 : 1;
    }
}
