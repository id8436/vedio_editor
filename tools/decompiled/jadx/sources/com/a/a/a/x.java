package com.a.a.a;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: JobManagerThread.java */
/* JADX INFO: loaded from: classes.dex */
class x implements com.a.a.a.h.b, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.a.a.a.k.b f632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final aa f633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final aa f634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final k f635d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final d f637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final com.a.a.a.g.g f638g;

    @Nullable
    com.a.a.a.j.a h;
    private final Context i;
    private final long j;
    private final com.a.a.a.h.c k;
    private final com.a.a.a.d.a l;
    private final com.a.a.a.g.c m;

    @Nullable
    private List<g> n;

    @Nullable
    private List<com.a.a.a.j.c> o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final j f636e = new j();
    private boolean p = true;
    private boolean q = false;
    private boolean r = true;

    x(com.a.a.a.c.a aVar, com.a.a.a.g.g gVar, com.a.a.a.g.c cVar) {
        this.f638g = gVar;
        if (aVar.j() != null) {
            com.a.a.a.f.b.a(aVar.j());
        }
        this.m = cVar;
        this.f632a = aVar.m();
        this.i = aVar.a();
        this.j = this.f632a.a();
        this.h = aVar.o();
        if (this.h != null && aVar.c() && !(this.h instanceof a)) {
            this.h = new a(this.h, this.f632a);
        }
        this.f633b = aVar.d().a(aVar, this.j);
        this.f634c = aVar.d().b(aVar, this.j);
        this.k = aVar.g();
        this.l = aVar.e();
        if (this.k instanceof com.a.a.a.h.a) {
            ((com.a.a.a.h.a) this.k).a(this);
        }
        this.f635d = new k(this, this.f632a, cVar, aVar);
        this.f637f = new d(cVar, this.f632a);
    }

    boolean a() {
        return this.k instanceof com.a.a.a.h.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.a aVar) {
        r rVarC = aVar.c();
        long jA = this.f632a.a();
        s sVarA = new u().a(rVarC.getPriority()).a(rVarC).a(rVarC.getRunGroupId()).a(jA).b(rVarC.getDelayInMs() > 0 ? (rVarC.getDelayInMs() * 1000000) + jA : Long.MIN_VALUE).b(rVarC.getId()).a(rVarC.getTags()).a(rVarC.isPersistent()).b(0).a(rVarC.getDeadlineInMs() > 0 ? (rVarC.getDeadlineInMs() * 1000000) + jA : Long.MAX_VALUE, rVarC.shouldCancelOnDeadline()).c(rVarC.requiredNetworkType).d(Long.MIN_VALUE).a();
        s sVarA2 = a(rVarC.getSingleInstanceId());
        boolean z = sVarA2 == null || this.f635d.a(sVarA2.a());
        if (z) {
            aa aaVar = rVarC.isPersistent() ? this.f633b : this.f634c;
            if (sVarA2 != null) {
                this.f635d.b(ah.ANY, new String[]{rVarC.getSingleInstanceId()});
                aaVar.a(sVarA, sVarA2);
            } else {
                aaVar.a(sVarA);
            }
            if (com.a.a.a.f.b.b()) {
                com.a.a.a.f.b.a("added job class: %s priority: %d delay: %d group : %s persistent: %s", rVarC.getClass().getSimpleName(), Integer.valueOf(rVarC.getPriority()), Long.valueOf(rVarC.getDelayInMs()), rVarC.getRunGroupId(), Boolean.valueOf(rVarC.isPersistent()));
            }
        } else {
            com.a.a.a.f.b.a("another job with same singleId: %s was already queued", rVarC.getSingleInstanceId());
        }
        if (this.l != null) {
            this.l.a(rVarC);
        }
        sVarA.a(this.i);
        sVarA.j().onAdded();
        this.f637f.a(sVarA.j());
        if (z) {
            this.f635d.a();
            if (rVarC.isPersistent()) {
                a(sVarA, jA);
                return;
            }
            return;
        }
        a(sVarA, 1);
        this.f637f.b(sVarA.j());
    }

    private void a(s sVar, long j) {
        if (this.h != null) {
            int i = sVar.f614d;
            long jI = sVar.i();
            long jG = sVar.g();
            long millis = jI > j ? TimeUnit.NANOSECONDS.toMillis(jI - j) : 0L;
            Long lValueOf = jG != Long.MAX_VALUE ? Long.valueOf(TimeUnit.NANOSECONDS.toMillis(jG - j)) : null;
            boolean z = jI > j && millis >= 30000;
            boolean z2 = lValueOf != null && lValueOf.longValue() >= 30000;
            if (i != 0 || z || z2) {
                com.a.a.a.j.c cVar = new com.a.a.a.j.c(UUID.randomUUID().toString());
                cVar.a(i);
                cVar.a(millis);
                cVar.a(lValueOf);
                this.h.a(cVar);
                this.q = true;
            }
        }
    }

    private s a(String str) {
        if (str != null) {
            this.f636e.i();
            this.f636e.a(new String[]{str});
            this.f636e.a(ah.ANY);
            this.f636e.a(2);
            Set<s> setD = this.f634c.d(this.f636e);
            setD.addAll(this.f633b.d(this.f636e));
            if (!setD.isEmpty()) {
                for (s sVar : setD) {
                    if (!this.f635d.a(sVar.a())) {
                        return sVar;
                    }
                }
                return setD.iterator().next();
            }
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f638g.a(new y(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.h != null && this.o != null && !this.o.isEmpty() && this.f635d.e()) {
            for (int size = this.o.size() - 1; size >= 0; size--) {
                com.a.a.a.j.c cVarRemove = this.o.remove(size);
                this.h.a(cVarRemove, a(cVarRemove));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.k kVar) {
        int iC = kVar.c();
        if (iC == 1) {
            c(kVar.d());
        } else {
            if (iC == 2) {
                b(kVar.d());
                return;
            }
            throw new IllegalArgumentException("Unknown scheduler message with what " + iC);
        }
    }

    private boolean a(com.a.a.a.j.c cVar) {
        if (this.f635d.a(cVar)) {
            return true;
        }
        this.f636e.i();
        this.f636e.a(this.f632a.a());
        this.f636e.a(cVar.c());
        return this.f633b.a(this.f636e) > 0;
    }

    private void b(com.a.a.a.j.c cVar) {
        List<com.a.a.a.j.c> list = this.o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size).a().equals(cVar.a())) {
                    list.remove(size);
                }
            }
        }
        if (this.h != null && a(cVar)) {
            this.h.a(cVar);
        }
    }

    private void c(com.a.a.a.j.c cVar) {
        if (!c()) {
            if (this.h != null) {
                this.h.a(cVar, true);
            }
        } else if (!a(cVar)) {
            if (this.h != null) {
                this.h.a(cVar, false);
            }
        } else {
            if (this.o == null) {
                this.o = new ArrayList();
            }
            this.o.add(cVar);
            this.f635d.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.e eVar) {
        if (eVar.c() == 1) {
            this.f638g.b();
            this.f638g.a();
        }
    }

    int b() {
        return this.f633b.a() + this.f634c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.h hVar) {
        switch (hVar.d()) {
            case 0:
                hVar.c().a(b());
                return;
            case 1:
                hVar.c().a(b(g()));
                return;
            case 2:
                com.a.a.a.f.b.a("handling start request...", new Object[0]);
                if (!this.p) {
                    this.p = true;
                    this.f635d.b();
                    return;
                }
                return;
            case 3:
                com.a.a.a.f.b.a("handling stop request...", new Object[0]);
                this.p = false;
                this.f635d.c();
                return;
            case 4:
                hVar.c().a(b(hVar.e()).ordinal());
                return;
            case 5:
                f();
                if (hVar.c() != null) {
                    hVar.c().a(0);
                    return;
                }
                return;
            case 6:
                hVar.c().a(this.f635d.d());
                return;
            case 101:
                hVar.c().a(0);
                return;
            default:
                throw new IllegalArgumentException("cannot handle public query with type " + hVar.d());
        }
    }

    private void f() {
        this.f634c.b();
        this.f633b.b();
    }

    private ab b(String str) {
        if (this.f635d.a(str)) {
            return ab.RUNNING;
        }
        s sVarA = this.f634c.a(str);
        if (sVarA == null) {
            sVarA = this.f633b.a(str);
        }
        if (sVarA == null) {
            return ab.UNKNOWN;
        }
        int iG = g();
        long jA = this.f632a.a();
        if (iG < sVarA.f614d) {
            return ab.WAITING_NOT_READY;
        }
        if (sVarA.i() > jA) {
            return ab.WAITING_NOT_READY;
        }
        return ab.WAITING_READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.c cVar) {
        g gVar = new g(cVar.c(), cVar.d(), cVar.e());
        gVar.a(this, this.f635d);
        if (gVar.a()) {
            gVar.a(this);
            return;
        }
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.j jVar) {
        int i;
        int i2;
        int i3 = 0;
        int iD = jVar.d();
        s sVarC = jVar.c();
        this.f637f.a(sVarC.j(), iD);
        ae aeVarT = null;
        switch (iD) {
            case 1:
                c(sVarC);
                break;
            case 2:
                a(sVarC, 2);
                c(sVarC);
                break;
            case 3:
                com.a.a.a.f.b.a("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the CancelHandler", new Object[0]);
                break;
            case 4:
                aeVarT = sVarC.t();
                a(sVarC);
                break;
            case 5:
                a(sVarC, 5);
                c(sVarC);
                break;
            case 6:
                a(sVarC, 6);
                c(sVarC);
                break;
            case 7:
                a(sVarC, 7);
                c(sVarC);
                break;
            default:
                throw new IllegalArgumentException("unknown job holder result");
        }
        this.f635d.a(jVar, sVarC, aeVarT);
        this.f637f.b(sVarC.j(), iD);
        if (this.n != null) {
            int size = this.n.size();
            while (i3 < size) {
                g gVar = this.n.get(i3);
                gVar.a(sVarC, iD);
                if (gVar.a()) {
                    gVar.a(this);
                    this.n.remove(i3);
                    i = i3 - 1;
                    i2 = size - 1;
                } else {
                    i = i3;
                    i2 = size;
                }
                size = i2;
                i3 = i + 1;
            }
        }
    }

    private void a(s sVar, int i) {
        try {
            sVar.c(i);
        } catch (Throwable th) {
            com.a.a.a.f.b.a(th, "job's onCancel did throw an exception, ignoring...", new Object[0]);
        }
        this.f637f.a(sVar.j(), false, sVar.u());
    }

    private void a(s sVar) {
        long jA;
        ae aeVarT = sVar.t();
        if (aeVarT == null) {
            b(sVar);
            return;
        }
        if (aeVarT.c() != null) {
            sVar.a(aeVarT.c().intValue());
        }
        long jLongValue = -1;
        if (aeVarT.b() != null) {
            jLongValue = aeVarT.b().longValue();
        }
        if (jLongValue > 0) {
            jA = (jLongValue * 1000000) + this.f632a.a();
        } else {
            jA = Long.MIN_VALUE;
        }
        sVar.b(jA);
        b(sVar);
    }

    private void b(s sVar) {
        if (!sVar.n()) {
            if (sVar.j().isPersistent()) {
                this.f633b.b(sVar);
                return;
            } else {
                this.f634c.b(sVar);
                return;
            }
        }
        com.a.a.a.f.b.a("not re-adding cancelled job " + sVar, new Object[0]);
    }

    private void c(s sVar) {
        if (sVar.j().isPersistent()) {
            this.f633b.c(sVar);
        } else {
            this.f634c.c(sVar);
        }
        this.f637f.b(sVar.j());
    }

    @Override // com.a.a.a.h.b
    public void a(int i) {
        this.f638g.a((com.a.a.a.g.a.f) this.m.a(com.a.a.a.g.a.f.class));
    }

    boolean c() {
        return this.p;
    }

    int d() {
        return b(g());
    }

    private int b(int i) {
        Collection<String> collectionA = this.f635d.f592a.a();
        this.f636e.i();
        this.f636e.a(this.f632a.a());
        this.f636e.a(i);
        this.f636e.a(collectionA);
        this.f636e.a(true);
        this.f636e.a(Long.valueOf(this.f632a.a()));
        return 0 + this.f634c.a(this.f636e) + this.f633b.a(this.f636e);
    }

    private int g() {
        if (this.k == null) {
            return 2;
        }
        return this.k.a(this.i);
    }

    Long a(boolean z) {
        Long lB = this.f635d.f592a.b();
        int iG = g();
        Collection<String> collectionA = this.f635d.f592a.a();
        this.f636e.i();
        this.f636e.a(this.f632a.a());
        this.f636e.a(iG);
        this.f636e.a(collectionA);
        this.f636e.a(true);
        Long lC = this.f634c.c(this.f636e);
        Long lC2 = this.f633b.c(this.f636e);
        if (lB == null) {
            lB = null;
        }
        if (lC != null) {
            lB = Long.valueOf(lB == null ? lC.longValue() : Math.min(lC.longValue(), lB.longValue()));
        }
        if (lC2 != null) {
            lB = Long.valueOf(lB == null ? lC2.longValue() : Math.min(lC2.longValue(), lB.longValue()));
        }
        if (!z || (this.k instanceof com.a.a.a.h.a)) {
            return lB;
        }
        long jA = this.f632a.a() + v.f625a;
        if (lB != null) {
            jA = Math.min(jA, lB.longValue());
        }
        return Long.valueOf(jA);
    }

    s a(Collection<String> collection) {
        return a(collection, false);
    }

    s a(Collection<String> collection, boolean z) {
        boolean z2;
        if (!this.p && !z) {
            return null;
        }
        s sVar = null;
        while (sVar == null) {
            int iG = g();
            com.a.a.a.f.b.c("looking for next job", new Object[0]);
            this.f636e.i();
            long jA = this.f632a.a();
            this.f636e.a(jA);
            this.f636e.a(iG);
            this.f636e.a(collection);
            this.f636e.a(true);
            this.f636e.a(Long.valueOf(jA));
            s sVarB = this.f634c.b(this.f636e);
            com.a.a.a.f.b.c("non persistent result %s", sVarB);
            if (sVarB == null) {
                sVarB = this.f633b.b(this.f636e);
                com.a.a.a.f.b.c("persistent result %s", sVarB);
                z2 = true;
            } else {
                z2 = false;
            }
            if (sVarB == null) {
                return null;
            }
            if (z2 && this.l != null) {
                this.l.a(sVarB.j());
            }
            sVarB.a(this.i);
            sVarB.a(sVarB.g() <= jA);
            if (sVarB.g() > jA || !sVarB.h()) {
                sVar = sVarB;
            } else {
                a(sVarB, 7);
                c(sVarB);
                sVar = null;
            }
        }
        return sVar;
    }
}
