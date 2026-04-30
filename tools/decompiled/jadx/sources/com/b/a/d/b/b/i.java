package com.b.a.d.b.b;

import java.io.File;

/* JADX INFO: compiled from: DiskLruCacheFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f826b;

    public i(j jVar, int i) {
        this.f825a = i;
        this.f826b = jVar;
    }

    @Override // com.b.a.d.b.b.b
    public a a() {
        File fileA = this.f826b.a();
        if (fileA == null) {
            return null;
        }
        if (fileA.mkdirs() || (fileA.exists() && fileA.isDirectory())) {
            return k.a(fileA, this.f825a);
        }
        return null;
    }
}
