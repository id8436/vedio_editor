package com.a.a.a.g;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SafeMessageQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends j implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.a.a.a.k.b f511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f514g;

    public h(com.a.a.a.k.b bVar, c cVar, String str) {
        super(cVar, str);
        this.f509b = new Object();
        this.f510c = new AtomicBoolean(false);
        this.f513f = false;
        this.f514g = cVar;
        this.f511d = bVar;
        this.f512e = new a(cVar);
    }

    public void a(f fVar) {
        if (this.f510c.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        fVar.a();
        while (this.f510c.get()) {
            b bVarB = b(fVar);
            if (bVarB != null) {
                fVar.a(bVarB);
                this.f514g.a(bVarB);
            }
        }
        com.a.a.a.f.b.a("[%s] finished queue", this.f523a);
    }

    public void a() {
        this.f510c.set(false);
        synchronized (this.f509b) {
            this.f511d.b(this.f509b);
        }
    }

    @Override // com.a.a.a.g.j
    public void b() {
        synchronized (this.f509b) {
            super.b();
        }
    }

    b b(f fVar) {
        long jA;
        Long lA;
        boolean z = false;
        while (this.f510c.get()) {
            synchronized (this.f509b) {
                jA = this.f511d.a();
                lA = this.f512e.a(jA, this);
                b bVarC = super.c();
                if (bVarC != null) {
                    return bVarC;
                }
                this.f513f = false;
            }
            if (!z) {
                fVar.b();
                z = true;
            }
            synchronized (this.f509b) {
                if (!this.f513f) {
                    if (lA != null && lA.longValue() <= jA) {
                        com.a.a.a.f.b.a("[%s] next message is ready, requery", this.f523a);
                    } else if (this.f510c.get()) {
                        if (lA == null) {
                            try {
                                com.a.a.a.f.b.a("[%s] will wait on the lock forever", this.f523a);
                                this.f511d.a(this.f509b);
                            } catch (InterruptedException e2) {
                            }
                        } else {
                            com.a.a.a.f.b.a("[%s] will wait on the lock until %d", this.f523a, lA);
                            this.f511d.a(this.f509b, lA.longValue());
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.a.a.a.g.j, com.a.a.a.g.e
    public void a(b bVar) {
        synchronized (this.f509b) {
            this.f513f = true;
            super.a(bVar);
            this.f511d.b(this.f509b);
        }
    }

    public void a(b bVar, long j) {
        synchronized (this.f509b) {
            this.f513f = true;
            this.f512e.a(bVar, j);
            this.f511d.b(this.f509b);
        }
    }

    public void a(d dVar) {
        synchronized (this.f509b) {
            super.b(dVar);
            this.f512e.a(dVar);
        }
    }
}
