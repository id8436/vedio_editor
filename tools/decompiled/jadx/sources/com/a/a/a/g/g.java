package com.a.a.a.g;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PriorityMessageQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class g implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.a.a.a.k.b f505d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f508g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f502a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f506e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f507f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j[] f503b = new j[i.o + 1];

    public g(com.a.a.a.k.b bVar, c cVar) {
        this.f504c = new a(cVar);
        this.f508g = cVar;
        this.f505d = bVar;
    }

    public void a(f fVar) {
        if (this.f506e.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        while (this.f506e.get()) {
            b bVarB = b(fVar);
            if (bVarB != null) {
                com.a.a.a.f.b.a("[%s] consuming message of type %s", "priority_mq", bVarB.f497a);
                fVar.a(bVarB);
                this.f508g.a(bVarB);
            }
        }
    }

    public void a() {
        synchronized (this.f502a) {
            for (int i = i.o; i >= 0; i--) {
                j jVar = this.f503b[i];
                if (jVar != null) {
                    jVar.b();
                }
            }
        }
    }

    public void b() {
        this.f506e.set(false);
        synchronized (this.f502a) {
            this.f505d.b(this.f502a);
        }
    }

    public b b(f fVar) {
        long jA;
        Long lA;
        b bVarC;
        boolean z = false;
        while (this.f506e.get()) {
            synchronized (this.f502a) {
                jA = this.f505d.a();
                com.a.a.a.f.b.a("[%s] looking for next message at time %s", "priority_mq", Long.valueOf(jA));
                lA = this.f504c.a(jA, this);
                com.a.a.a.f.b.a("[%s] next delayed job %s", "priority_mq", lA);
                for (int i = i.o; i >= 0; i--) {
                    j jVar = this.f503b[i];
                    if (jVar != null && (bVarC = jVar.c()) != null) {
                        return bVarC;
                    }
                }
                this.f507f = false;
            }
            if (!z) {
                fVar.b();
                z = true;
            }
            synchronized (this.f502a) {
                com.a.a.a.f.b.a("[%s] did on idle post a message? %s", "priority_mq", Boolean.valueOf(this.f507f));
                if (!this.f507f) {
                    if (lA == null || lA.longValue() > jA) {
                        if (this.f506e.get()) {
                            if (lA == null) {
                                try {
                                    this.f505d.a(this.f502a);
                                } catch (InterruptedException e2) {
                                }
                            } else {
                                this.f505d.a(this.f502a, lA.longValue());
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.a.a.a.g.e
    public void a(b bVar) {
        synchronized (this.f502a) {
            this.f507f = true;
            int i = bVar.f497a.n;
            if (this.f503b[i] == null) {
                this.f503b[i] = new j(this.f508g, "queue_" + bVar.f497a.name());
            }
            this.f503b[i].a(bVar);
            this.f505d.b(this.f502a);
        }
    }

    public void a(b bVar, long j) {
        synchronized (this.f502a) {
            this.f507f = true;
            this.f504c.a(bVar, j);
            this.f505d.b(this.f502a);
        }
    }
}
