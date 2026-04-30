package com.b.a;

/* JADX INFO: compiled from: RequestManager.java */
/* JADX INFO: loaded from: classes2.dex */
class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.b.a.e.i f1251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f1252b;

    m(l lVar, com.b.a.e.i iVar) {
        this.f1252b = lVar;
        this.f1251a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1251a.a(this.f1252b);
    }
}
