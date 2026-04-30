package com.facebook.imagepipeline.k;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: MediaVariationsIndexDatabase.java */
/* JADX INFO: loaded from: classes2.dex */
class bn implements Callable<List<com.facebook.imagepipeline.l.g>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bm f2690b;

    bn(bm bmVar, String str) {
        this.f2690b = bmVar;
        this.f2689a = str;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<com.facebook.imagepipeline.l.g> call() throws Exception {
        return this.f2690b.b(this.f2689a);
    }
}
