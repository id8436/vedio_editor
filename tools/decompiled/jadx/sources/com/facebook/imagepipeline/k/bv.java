package com.facebook.imagepipeline.k;

import com.facebook.imagepipeline.k.br;
import java.io.Closeable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: MultiplexProducer.java */
/* JADX INFO: loaded from: classes2.dex */
class bv<T> extends d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ br.bt f2708a;

    private bv(br.bt btVar) {
        this.f2708a = btVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TT;Z)V */
    @Override // com.facebook.imagepipeline.k.d
    public void a(Closeable closeable, boolean z) {
        this.f2708a.a(this, closeable, z);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(Throwable th) {
        this.f2708a.a(this, th);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a() {
        this.f2708a.a(this);
    }

    @Override // com.facebook.imagepipeline.k.d
    protected void a(float f2) {
        this.f2708a.a(this, f2);
    }
}
