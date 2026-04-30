package com.b.a.d.b;

import android.util.Log;

/* JADX INFO: compiled from: EngineRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
class u implements com.b.a.d.b.c.i, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.k f902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a<?, ?, ?> f904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w f905d = w.CACHE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f906e;

    public u(v vVar, a<?, ?, ?> aVar, com.b.a.k kVar) {
        this.f903b = vVar;
        this.f904c = aVar;
        this.f902a = kVar;
    }

    public void a() {
        this.f906e = true;
        this.f904c.d();
    }

    @Override // java.lang.Runnable
    public void run() {
        z<?> zVarD;
        Exception xVar = null;
        if (!this.f906e) {
            try {
                zVarD = d();
            } catch (Exception e2) {
                if (Log.isLoggable("EngineRunnable", 2)) {
                    Log.v("EngineRunnable", "Exception decoding", e2);
                }
                xVar = e2;
                zVarD = null;
            } catch (OutOfMemoryError e3) {
                if (Log.isLoggable("EngineRunnable", 2)) {
                    Log.v("EngineRunnable", "Out Of Memory Error decoding", e3);
                }
                xVar = new x(e3);
                zVarD = null;
            }
            if (this.f906e) {
                if (zVarD != null) {
                    zVarD.d();
                }
            } else if (zVarD == null) {
                a(xVar);
            } else {
                a(zVarD);
            }
        }
    }

    private boolean c() {
        return this.f905d == w.CACHE;
    }

    private void a(z zVar) {
        this.f903b.a((z<?>) zVar);
    }

    private void a(Exception exc) {
        if (c()) {
            this.f905d = w.SOURCE;
            this.f903b.b(this);
        } else {
            this.f903b.a(exc);
        }
    }

    private z<?> d() throws Exception {
        return c() ? e() : f();
    }

    private z<?> e() throws Exception {
        z<?> zVarA;
        try {
            zVarA = this.f904c.a();
        } catch (Exception e2) {
            if (Log.isLoggable("EngineRunnable", 3)) {
                Log.d("EngineRunnable", "Exception decoding result from cache: " + e2);
            }
            zVarA = null;
        }
        if (zVarA == null) {
            return this.f904c.b();
        }
        return zVarA;
    }

    private z<?> f() throws Exception {
        return this.f904c.c();
    }

    @Override // com.b.a.d.b.c.i
    public int b() {
        return this.f902a.ordinal();
    }
}
