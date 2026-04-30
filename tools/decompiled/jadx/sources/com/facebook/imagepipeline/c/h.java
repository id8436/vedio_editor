package com.facebook.imagepipeline.c;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: BufferedDiskCache.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements Callable<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.c.a.f f2433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ g f2434c;

    h(g gVar, AtomicBoolean atomicBoolean, com.facebook.c.a.f fVar) {
        this.f2434c = gVar;
        this.f2432a = atomicBoolean;
        this.f2433b = fVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.h.d call() throws Exception {
        if (!this.f2432a.get()) {
            com.facebook.imagepipeline.h.d dVarA = this.f2434c.f2431g.a(this.f2433b);
            if (dVarA != null) {
                com.facebook.d.e.a.a((Class<?>) g.f2425a, "Found image for %s in staging area", this.f2433b.a());
                this.f2434c.h.c(this.f2433b);
                dVarA.a(this.f2433b);
            } else {
                com.facebook.d.e.a.a((Class<?>) g.f2425a, "Did not find image for %s in staging area", this.f2433b.a());
                this.f2434c.h.e();
                try {
                    com.facebook.d.h.a aVarA = com.facebook.d.h.a.a(this.f2434c.b(this.f2433b));
                    try {
                        dVarA = new com.facebook.imagepipeline.h.d((com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah>) aVarA);
                        dVarA.a(this.f2433b);
                        com.facebook.d.h.a.c(aVarA);
                    } catch (Throwable th) {
                        com.facebook.d.h.a.c(aVarA);
                        throw th;
                    }
                } catch (Exception e2) {
                    return null;
                }
            }
            if (Thread.interrupted()) {
                com.facebook.d.e.a.a((Class<?>) g.f2425a, "Host thread was interrupted, decreasing reference count");
                if (dVarA != null) {
                    dVarA.close();
                }
                throw new InterruptedException();
            }
            return dVarA;
        }
        throw new CancellationException();
    }
}
