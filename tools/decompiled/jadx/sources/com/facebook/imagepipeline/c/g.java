package com.facebook.imagepipeline.c;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: BufferedDiskCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2425a = g.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.c.b.ab f2426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.aj f2427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.am f2428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f2429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f2430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final al f2431g = al.a();
    private final ab h;

    public g(com.facebook.c.b.ab abVar, com.facebook.imagepipeline.memory.aj ajVar, com.facebook.imagepipeline.memory.am amVar, Executor executor, Executor executor2, ab abVar2) {
        this.f2426b = abVar;
        this.f2427c = ajVar;
        this.f2428d = amVar;
        this.f2429e = executor;
        this.f2430f = executor2;
        this.h = abVar2;
    }

    public boolean a(com.facebook.c.a.f fVar) {
        return this.f2431g.b(fVar) || this.f2426b.b(fVar);
    }

    public a.l<com.facebook.imagepipeline.h.d> a(com.facebook.c.a.f fVar, AtomicBoolean atomicBoolean) {
        com.facebook.imagepipeline.h.d dVarA = this.f2431g.a(fVar);
        return dVarA != null ? b(fVar, dVarA) : b(fVar, atomicBoolean);
    }

    private a.l<com.facebook.imagepipeline.h.d> b(com.facebook.c.a.f fVar, AtomicBoolean atomicBoolean) {
        try {
            return a.l.a(new h(this, atomicBoolean, fVar), this.f2429e);
        } catch (Exception e2) {
            com.facebook.d.e.a.a(f2425a, e2, "Failed to schedule disk-cache read for %s", fVar.a());
            return a.l.a(e2);
        }
    }

    public void a(com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.d.k.a(fVar);
        com.facebook.d.d.k.a(com.facebook.imagepipeline.h.d.e(dVar));
        this.f2431g.a(fVar, dVar);
        dVar.a(fVar);
        com.facebook.imagepipeline.h.d dVarA = com.facebook.imagepipeline.h.d.a(dVar);
        try {
            this.f2430f.execute(new i(this, fVar, dVarA));
        } catch (Exception e2) {
            com.facebook.d.e.a.a(f2425a, e2, "Failed to schedule disk-cache write for %s", fVar.a());
            this.f2431g.b(fVar, dVar);
            com.facebook.imagepipeline.h.d.d(dVarA);
        }
    }

    private a.l<com.facebook.imagepipeline.h.d> b(com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.e.a.a(f2425a, "Found image for %s in staging area", fVar.a());
        this.h.c(fVar);
        return a.l.a(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.memory.ah b(com.facebook.c.a.f fVar) throws IOException {
        try {
            com.facebook.d.e.a.a(f2425a, "Disk cache read for %s", fVar.a());
            com.facebook.b.a aVarA = this.f2426b.a(fVar);
            if (aVarA == null) {
                com.facebook.d.e.a.a(f2425a, "Disk cache miss for %s", fVar.a());
                this.h.g();
                return null;
            }
            com.facebook.d.e.a.a(f2425a, "Found entry in disk cache for %s", fVar.a());
            this.h.f();
            InputStream inputStreamA = aVarA.a();
            try {
                com.facebook.imagepipeline.memory.ah ahVarB = this.f2427c.b(inputStreamA, (int) aVarA.b());
                inputStreamA.close();
                com.facebook.d.e.a.a(f2425a, "Successful read from disk cache for %s", fVar.a());
                return ahVarB;
            } catch (Throwable th) {
                inputStreamA.close();
                throw th;
            }
        } catch (IOException e2) {
            com.facebook.d.e.a.a(f2425a, e2, "Exception reading from cache for %s", fVar.a());
            this.h.h();
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.e.a.a(f2425a, "About to write to disk-cache for key %s", fVar.a());
        try {
            this.f2426b.a(fVar, new j(this, dVar));
            com.facebook.d.e.a.a(f2425a, "Successful disk-cache write for key %s", fVar.a());
        } catch (IOException e2) {
            com.facebook.d.e.a.a(f2425a, e2, "Failed to write to disk-cache for key %s", fVar.a());
        }
    }
}
