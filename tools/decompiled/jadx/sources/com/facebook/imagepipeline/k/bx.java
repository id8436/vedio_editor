package com.facebook.imagepipeline.k;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: NetworkFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bx implements bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bw f2713b;

    bx(bw bwVar, ah ahVar) {
        this.f2713b = bwVar;
        this.f2712a = ahVar;
    }

    @Override // com.facebook.imagepipeline.k.bz
    public void a(InputStream inputStream, int i) throws IOException {
        this.f2713b.a(this.f2712a, inputStream, i);
    }

    @Override // com.facebook.imagepipeline.k.bz
    public void a(Throwable th) {
        this.f2713b.a(this.f2712a, th);
    }

    @Override // com.facebook.imagepipeline.k.bz
    public void a() {
        this.f2713b.a(this.f2712a);
    }
}
