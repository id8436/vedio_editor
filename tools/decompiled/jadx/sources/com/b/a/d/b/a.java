package com.b.a.d.b;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: DecodeJob.java */
/* JADX INFO: loaded from: classes2.dex */
class a<A, T, Z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f780a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q f781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.b.a.d.a.c<A> f784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.b.a.g.b<A, T> f785f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.b.a.d.g<T> f786g;
    private final com.b.a.d.d.f.c<T, Z> h;
    private final b i;
    private final e j;
    private final com.b.a.k k;
    private final c l;
    private volatile boolean m;

    public a(q qVar, int i, int i2, com.b.a.d.a.c<A> cVar, com.b.a.g.b<A, T> bVar, com.b.a.d.g<T> gVar, com.b.a.d.d.f.c<T, Z> cVar2, b bVar2, e eVar, com.b.a.k kVar) {
        this(qVar, i, i2, cVar, bVar, gVar, cVar2, bVar2, eVar, kVar, f780a);
    }

    a(q qVar, int i, int i2, com.b.a.d.a.c<A> cVar, com.b.a.g.b<A, T> bVar, com.b.a.d.g<T> gVar, com.b.a.d.d.f.c<T, Z> cVar2, b bVar2, e eVar, com.b.a.k kVar, c cVar3) {
        this.f781b = qVar;
        this.f782c = i;
        this.f783d = i2;
        this.f784e = cVar;
        this.f785f = bVar;
        this.f786g = gVar;
        this.h = cVar2;
        this.i = bVar2;
        this.j = eVar;
        this.k = kVar;
        this.l = cVar3;
    }

    public z<Z> a() throws Exception {
        if (!this.j.b()) {
            return null;
        }
        long jA = com.b.a.j.d.a();
        z<T> zVarA = a((com.b.a.d.c) this.f781b);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Decoded transformed from cache", jA);
        }
        long jA2 = com.b.a.j.d.a();
        z<Z> zVarD = d(zVarA);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Transcoded transformed from cache", jA2);
            return zVarD;
        }
        return zVarD;
    }

    public z<Z> b() throws Exception {
        if (!this.j.a()) {
            return null;
        }
        long jA = com.b.a.j.d.a();
        z<T> zVarA = a(this.f781b.a());
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Decoded source from cache", jA);
        }
        return a((z) zVarA);
    }

    public z<Z> c() throws Exception {
        return a((z) e());
    }

    public void d() {
        this.m = true;
        this.f784e.c();
    }

    private z<Z> a(z<T> zVar) {
        long jA = com.b.a.j.d.a();
        z<T> zVarC = c(zVar);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Transformed resource from source", jA);
        }
        b((z) zVarC);
        long jA2 = com.b.a.j.d.a();
        z<Z> zVarD = d(zVarC);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Transcoded transformed from source", jA2);
        }
        return zVarD;
    }

    private void b(z<T> zVar) {
        if (zVar != null && this.j.b()) {
            long jA = com.b.a.j.d.a();
            this.i.a().a(this.f781b, new d(this, this.f785f.d(), zVar));
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Wrote transformed from source to cache", jA);
            }
        }
    }

    private z<T> e() throws Exception {
        try {
            long jA = com.b.a.j.d.a();
            A a2 = this.f784e.a(this.k);
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Fetched data", jA);
            }
            if (!this.m) {
                return a(a2);
            }
            return null;
        } finally {
            this.f784e.a();
        }
    }

    private z<T> a(A a2) throws IOException {
        if (this.j.a()) {
            return b(a2);
        }
        long jA = com.b.a.j.d.a();
        z<T> zVarA = this.f785f.b().a(a2, this.f782c, this.f783d);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Decoded from source", jA);
            return zVarA;
        }
        return zVarA;
    }

    private z<T> b(A a2) throws IOException {
        long jA = com.b.a.j.d.a();
        this.i.a().a(this.f781b.a(), new d(this, this.f785f.c(), a2));
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Wrote source to cache", jA);
        }
        long jA2 = com.b.a.j.d.a();
        z<T> zVarA = a(this.f781b.a());
        if (Log.isLoggable("DecodeJob", 2) && zVarA != null) {
            a("Decoded source from cache", jA2);
        }
        return zVarA;
    }

    private z<T> a(com.b.a.d.c cVar) throws IOException {
        z<T> zVarA = null;
        File fileA = this.i.a().a(cVar);
        if (fileA != null) {
            try {
                zVarA = this.f785f.a().a(fileA, this.f782c, this.f783d);
                if (zVarA == null) {
                    this.i.a().b(cVar);
                }
            } catch (Throwable th) {
                if (0 == 0) {
                    this.i.a().b(cVar);
                }
                throw th;
            }
        }
        return zVarA;
    }

    private z<T> c(z<T> zVar) {
        if (zVar == null) {
            return null;
        }
        z<T> zVarA = this.f786g.a(zVar, this.f782c, this.f783d);
        if (!zVar.equals(zVarA)) {
            zVar.d();
            return zVarA;
        }
        return zVarA;
    }

    private z<Z> d(z<T> zVar) {
        if (zVar == null) {
            return null;
        }
        return this.h.a(zVar);
    }

    private void a(String str, long j) {
        Log.v("DecodeJob", str + " in " + com.b.a.j.d.a(j) + ", key: " + this.f781b);
    }
}
