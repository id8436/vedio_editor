package com.facebook.imagepipeline.f;

import com.facebook.imagepipeline.k.d;
import javax.annotation.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: AbstractProducerToDataSourceAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class b<T> extends d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2557a;

    b(a aVar) {
        this.f2557a = aVar;
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(@Nullable T t, boolean z) {
        this.f2557a.b((Object) t, z);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        this.f2557a.b(th);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a() {
        this.f2557a.k();
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(float f2) {
        this.f2557a.a(f2);
    }
}
