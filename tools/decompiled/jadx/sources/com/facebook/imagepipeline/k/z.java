package com.facebook.imagepipeline.k;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DiskCacheReadProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class z extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ x f2841b;

    z(x xVar, AtomicBoolean atomicBoolean) {
        this.f2841b = xVar;
        this.f2840a = atomicBoolean;
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void a() {
        this.f2840a.set(true);
    }
}
