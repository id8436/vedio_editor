package com.facebook.imagepipeline.c;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: BufferedDiskCache.java */
/* JADX INFO: loaded from: classes2.dex */
class j implements com.facebook.c.a.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.h.d f2438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2439b;

    j(g gVar, com.facebook.imagepipeline.h.d dVar) {
        this.f2439b = gVar;
        this.f2438a = dVar;
    }

    @Override // com.facebook.c.a.l
    public void a(OutputStream outputStream) throws IOException {
        this.f2439b.f2428d.a(this.f2438a.d(), outputStream);
    }
}
