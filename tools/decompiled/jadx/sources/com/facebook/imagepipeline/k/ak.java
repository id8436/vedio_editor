package com.facebook.imagepipeline.k;

import java.util.concurrent.Future;

/* JADX INFO: compiled from: HttpUrlConnectionNetworkFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
class ak extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Future f2615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bz f2616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ai f2617c;

    ak(ai aiVar, Future future, bz bzVar) {
        this.f2617c = aiVar;
        this.f2615a = future;
        this.f2616b = bzVar;
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void a() {
        if (this.f2615a.cancel(false)) {
            this.f2616b.a();
        }
    }
}
