package com.b.a.d.b;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: EngineJob.java */
/* JADX INFO: loaded from: classes2.dex */
class l implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n f882a = new n();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Handler f883b = new Handler(Looper.getMainLooper(), new o());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<com.b.a.h.f> f884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p f886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.b.a.d.c f887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ExecutorService f888g;
    private final ExecutorService h;
    private final boolean i;
    private boolean j;
    private z<?> k;
    private boolean l;
    private Exception m;
    private boolean n;
    private Set<com.b.a.h.f> o;
    private u p;
    private s<?> q;
    private volatile Future<?> r;

    public l(com.b.a.d.c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, p pVar) {
        this(cVar, executorService, executorService2, z, pVar, f882a);
    }

    public l(com.b.a.d.c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, p pVar, n nVar) {
        this.f884c = new ArrayList();
        this.f887f = cVar;
        this.f888g = executorService;
        this.h = executorService2;
        this.i = z;
        this.f886e = pVar;
        this.f885d = nVar;
    }

    public void a(u uVar) {
        this.p = uVar;
        this.r = this.f888g.submit(uVar);
    }

    @Override // com.b.a.d.b.v
    public void b(u uVar) {
        this.r = this.h.submit(uVar);
    }

    public void a(com.b.a.h.f fVar) {
        com.b.a.j.h.a();
        if (this.l) {
            fVar.a(this.q);
        } else if (this.n) {
            fVar.a(this.m);
        } else {
            this.f884c.add(fVar);
        }
    }

    public void b(com.b.a.h.f fVar) {
        com.b.a.j.h.a();
        if (this.l || this.n) {
            c(fVar);
            return;
        }
        this.f884c.remove(fVar);
        if (this.f884c.isEmpty()) {
            a();
        }
    }

    private void c(com.b.a.h.f fVar) {
        if (this.o == null) {
            this.o = new HashSet();
        }
        this.o.add(fVar);
    }

    private boolean d(com.b.a.h.f fVar) {
        return this.o != null && this.o.contains(fVar);
    }

    void a() {
        if (!this.n && !this.l && !this.j) {
            this.p.a();
            Future<?> future = this.r;
            if (future != null) {
                future.cancel(true);
            }
            this.j = true;
            this.f886e.a(this, this.f887f);
        }
    }

    @Override // com.b.a.h.f
    public void a(z<?> zVar) {
        this.k = zVar;
        f883b.obtainMessage(1, this).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.j) {
            this.k.d();
            return;
        }
        if (this.f884c.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
        this.q = this.f885d.a(this.k, this.i);
        this.l = true;
        this.q.e();
        this.f886e.a(this.f887f, this.q);
        for (com.b.a.h.f fVar : this.f884c) {
            if (!d(fVar)) {
                this.q.e();
                fVar.a(this.q);
            }
        }
        this.q.f();
    }

    @Override // com.b.a.h.f
    public void a(Exception exc) {
        this.m = exc;
        f883b.obtainMessage(2, this).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!this.j) {
            if (this.f884c.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            this.n = true;
            this.f886e.a(this.f887f, (s<?>) null);
            for (com.b.a.h.f fVar : this.f884c) {
                if (!d(fVar)) {
                    fVar.a(this.m);
                }
            }
        }
    }
}
