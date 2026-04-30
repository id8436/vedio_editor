package com.a.a.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: BatchingScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends com.a.a.a.j.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f402a = TimeUnit.SECONDS.toMillis(900);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.a.a.a.j.a f405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<c> f406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.a.a.a.k.b f407f;

    public a(com.a.a.a.j.a aVar, com.a.a.a.k.b bVar) {
        this(aVar, bVar, f402a);
    }

    public a(com.a.a.a.j.a aVar, com.a.a.a.k.b bVar, long j) {
        this.f406e = new ArrayList();
        this.f405d = aVar;
        this.f407f = bVar;
        this.f403b = j;
        this.f404c = TimeUnit.MILLISECONDS.toNanos(j);
    }

    @Override // com.a.a.a.j.a
    public void a(Context context, com.a.a.a.j.b bVar) {
        super.a(context, bVar);
        this.f405d.a(context, new b(this));
    }

    private void b(com.a.a.a.j.c cVar) {
        synchronized (this.f406e) {
            for (int size = this.f406e.size() - 1; size >= 0; size--) {
                if (this.f406e.get(size).f439c.a().equals(cVar.a())) {
                    this.f406e.remove(size);
                }
            }
        }
    }

    private boolean c(com.a.a.a.j.c cVar) {
        Long lValueOf;
        boolean z;
        long jA = this.f407f.a();
        long nanos = TimeUnit.MILLISECONDS.toNanos(cVar.b()) + jA;
        Long lValueOf2 = cVar.d() == null ? null : Long.valueOf(TimeUnit.MILLISECONDS.toNanos(cVar.d().longValue()) + jA);
        synchronized (this.f406e) {
            Iterator<c> it = this.f406e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (a(it.next(), cVar, nanos, lValueOf2)) {
                        z = false;
                        break;
                    }
                } else {
                    long jB = ((cVar.b() / this.f403b) + 1) * this.f403b;
                    cVar.a(jB);
                    if (cVar.d() != null) {
                        lValueOf = Long.valueOf(((cVar.d().longValue() / this.f403b) + 1) * this.f403b);
                        cVar.a(lValueOf);
                    } else {
                        lValueOf = null;
                    }
                    this.f406e.add(new c(TimeUnit.MILLISECONDS.toNanos(jB) + jA, lValueOf != null ? Long.valueOf(TimeUnit.MILLISECONDS.toNanos(lValueOf.longValue()) + jA) : null, cVar));
                    z = true;
                }
            }
        }
        return z;
    }

    private boolean a(c cVar, com.a.a.a.j.c cVar2, long j, Long l) {
        if (cVar.f439c.c() != cVar2.c()) {
            return false;
        }
        if (l != null) {
            if (cVar.f438b == null) {
                return false;
            }
            long jLongValue = cVar.f438b.longValue() - l.longValue();
            if (jLongValue < 1 || jLongValue > this.f404c) {
                return false;
            }
        } else if (cVar.f438b != null) {
            return false;
        }
        long j2 = cVar.f437a - j;
        return j2 > 0 && j2 <= this.f404c;
    }

    @Override // com.a.a.a.j.a
    public void a(com.a.a.a.j.c cVar) {
        if (c(cVar)) {
            this.f405d.a(cVar);
        }
    }

    @Override // com.a.a.a.j.a
    public void a(com.a.a.a.j.c cVar, boolean z) {
        b(cVar);
        this.f405d.a(cVar, false);
        if (z) {
            a(cVar);
        }
    }

    @Override // com.a.a.a.j.a
    public void a() {
        synchronized (this.f406e) {
            this.f406e.clear();
        }
        this.f405d.a();
    }
}
