package com.facebook.imagepipeline.k;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MediaVariationsFallbackProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bj extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bg f2681b;

    bj(bg bgVar, AtomicBoolean atomicBoolean) {
        this.f2681b = bgVar;
        this.f2680a = atomicBoolean;
    }

    @Override // com.facebook.imagepipeline.k.g, com.facebook.imagepipeline.k.cn
    public void a() {
        this.f2680a.set(true);
    }
}
