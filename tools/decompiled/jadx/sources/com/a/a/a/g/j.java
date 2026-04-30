package com.a.a.a.g;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: UnsafeMessageQueue.java */
/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicInteger f522d = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f524b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f525c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f526e;

    public j(c cVar, String str) {
        this.f526e = cVar;
        this.f523a = str + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + f522d.incrementAndGet();
    }

    b c() {
        b bVar = this.f524b;
        com.a.a.a.f.b.a("[%s] remove message %s", this.f523a, bVar);
        if (bVar != null) {
            this.f524b = bVar.f498b;
            if (this.f525c == bVar) {
                this.f525c = null;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(b bVar) {
        com.a.a.a.f.b.a("[%s] post message %s", this.f523a, bVar);
        if (this.f525c == null) {
            this.f524b = bVar;
            this.f525c = bVar;
        } else {
            this.f525c.f498b = bVar;
            this.f525c = bVar;
        }
    }

    protected void b(d dVar) {
        b bVar;
        b bVar2 = null;
        b bVar3 = this.f524b;
        while (bVar3 != null) {
            if (dVar.a(bVar3)) {
                bVar = bVar3.f498b;
                a(bVar2, bVar3);
            } else {
                bVar = bVar3.f498b;
                bVar2 = bVar3;
            }
            bVar3 = bVar;
        }
    }

    private void a(b bVar, b bVar2) {
        if (this.f525c == bVar2) {
            this.f525c = bVar;
        }
        if (bVar == null) {
            this.f524b = bVar2.f498b;
        } else {
            bVar.f498b = bVar2.f498b;
        }
        this.f526e.a(bVar2);
    }

    public void b() {
        while (this.f524b != null) {
            b bVar = this.f524b;
            this.f524b = bVar.f498b;
            this.f526e.a(bVar);
        }
        this.f525c = null;
    }
}
