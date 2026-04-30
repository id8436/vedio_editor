package com.facebook.c.b;

import java.io.File;

/* JADX INFO: compiled from: DiskCacheConfig.java */
/* JADX INFO: loaded from: classes2.dex */
class o implements com.facebook.d.d.m<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f1895a;

    o(n nVar) {
        this.f1895a = nVar;
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public File b() {
        return this.f1895a.l.getApplicationContext().getCacheDir();
    }
}
