package com.facebook.imagepipeline.k;

import android.util.Pair;

/* JADX INFO: compiled from: ThrottlingProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class dc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Pair f2776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ db f2777b;

    dc(db dbVar, Pair pair) {
        this.f2777b = dbVar;
        this.f2776a = pair;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2777b.f2775a.b((o) this.f2776a.first, (cm) this.f2776a.second);
    }
}
