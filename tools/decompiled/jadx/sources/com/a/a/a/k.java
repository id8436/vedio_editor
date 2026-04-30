package com.a.a.a;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: ConsumerManager.java */
/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ag f592a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f597f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f598g;
    private final int h;
    private final x j;
    private final com.a.a.a.k.b k;
    private final com.a.a.a.g.c l;
    private final ThreadFactory n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<m> f593b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<m> f594c = new ArrayList();
    private final CopyOnWriteArrayList<Runnable> o = new CopyOnWriteArrayList<>();
    private final Map<String, s> m = new HashMap();
    private final ThreadGroup i = new ThreadGroup("JobConsumers");

    k(x xVar, com.a.a.a.k.b bVar, com.a.a.a.g.c cVar, com.a.a.a.c.a aVar) {
        this.j = xVar;
        this.k = bVar;
        this.l = cVar;
        this.h = aVar.k();
        this.f596e = aVar.i();
        this.f595d = aVar.h();
        this.f597f = ((long) (aVar.f() * 1000)) * 1000000;
        this.f598g = aVar.p();
        this.n = aVar.q();
        this.f592a = new ag(bVar);
    }

    void a() {
        a(false);
    }

    boolean b() {
        return a(true);
    }

    void c() {
        Iterator<m> it = this.f594c.iterator();
        while (it.hasNext()) {
            com.a.a.a.g.h hVar = it.next().f603a;
            com.a.a.a.g.a.e eVar = (com.a.a.a.g.a.e) this.l.a(com.a.a.a.g.a.e.class);
            eVar.a(2);
            hVar.a(eVar);
        }
        if (this.f594c.isEmpty()) {
            Iterator<Runnable> it2 = this.o.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }
    }

    private boolean a(boolean z) {
        com.a.a.a.f.b.a("considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d", Boolean.valueOf(z), Boolean.valueOf(this.j.c()), Integer.valueOf(this.f593b.size()));
        if (!this.j.c()) {
            com.a.a.a.f.b.a("jobqueue is not running, no consumers will be added", new Object[0]);
            return false;
        }
        if (this.f593b.size() > 0) {
            com.a.a.a.f.b.a("there are waiting workers, will poke them instead", new Object[0]);
            for (int size = this.f593b.size() - 1; size >= 0; size--) {
                m mVarRemove = this.f593b.remove(size);
                com.a.a.a.g.a.e eVar = (com.a.a.a.g.a.e) this.l.a(com.a.a.a.g.a.e.class);
                eVar.a(2);
                mVarRemove.f603a.a(eVar);
                if (!z) {
                    break;
                }
            }
            com.a.a.a.f.b.a("there were waiting workers, poked them and I'm done", new Object[0]);
            return true;
        }
        boolean zG = g();
        com.a.a.a.f.b.a("nothing has been poked. are we above load factor? %s", Boolean.valueOf(zG));
        if (!zG) {
            return false;
        }
        f();
        return true;
    }

    private void f() {
        Thread thread;
        com.a.a.a.f.b.a("adding another consumer", new Object[0]);
        m mVar = new m(this.j.f638g, new com.a.a.a.g.h(this.k, this.l, "consumer"), this.l, this.k);
        if (this.n != null) {
            thread = this.n.newThread(mVar);
        } else {
            thread = new Thread(this.i, mVar, "job-queue-worker-" + UUID.randomUUID());
            thread.setPriority(this.f598g);
        }
        this.f594c.add(mVar);
        thread.start();
    }

    private boolean g() {
        int size = this.f594c.size();
        if (size >= this.f595d) {
            com.a.a.a.f.b.a("too many consumers, clearly above load factor %s", Integer.valueOf(size));
            return false;
        }
        int iD = this.j.d();
        int size2 = this.m.size();
        boolean z = this.h * size < iD + size2 || (size < this.f596e && size < iD + size2);
        com.a.a.a.f.b.a("check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s running holders: %s. isAbove:%s", Integer.valueOf(size), Integer.valueOf(this.f596e), Integer.valueOf(this.f595d), Integer.valueOf(this.h), Integer.valueOf(iD), Integer.valueOf(size2), Boolean.valueOf(z));
        return z;
    }

    boolean a(@NonNull com.a.a.a.g.a.g gVar) {
        s sVarA;
        m mVar = (m) gVar.d();
        if (mVar.f607e) {
            return true;
        }
        boolean zC = this.j.c();
        if (!zC) {
            sVarA = null;
        } else {
            sVarA = this.j.a(this.f592a.a());
        }
        if (sVarA != null) {
            mVar.f607e = true;
            this.f592a.a(sVarA.k());
            com.a.a.a.g.a.i iVar = (com.a.a.a.g.a.i) this.l.a(com.a.a.a.g.a.i.class);
            iVar.a(sVarA);
            this.m.put(sVarA.j().getId(), sVarA);
            if (sVarA.k() != null) {
                this.f592a.a(sVarA.k());
            }
            mVar.f603a.a(iVar);
            return true;
        }
        long jC = gVar.c() + this.f597f;
        com.a.a.a.f.b.a("keep alive: %s", Long.valueOf(jC));
        boolean z = this.f594c.size() > this.f596e;
        boolean z2 = !zC || (z && jC < this.k.a());
        com.a.a.a.f.b.a("Consumer idle, will kill? %s . isRunning: %s", Boolean.valueOf(z2), Boolean.valueOf(zC));
        if (z2) {
            com.a.a.a.g.a.e eVar = (com.a.a.a.g.a.e) this.l.a(com.a.a.a.g.a.e.class);
            eVar.a(1);
            mVar.f603a.a(eVar);
            this.f593b.remove(mVar);
            this.f594c.remove(mVar);
            com.a.a.a.f.b.a("killed consumers. remaining consumers %d", Integer.valueOf(this.f594c.size()));
            if (this.f594c.isEmpty() && this.o != null) {
                Iterator<Runnable> it = this.o.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        } else {
            if (!this.f593b.contains(mVar)) {
                this.f593b.add(mVar);
            }
            if (z || !this.j.a()) {
                com.a.a.a.g.a.e eVar2 = (com.a.a.a.g.a.e) this.l.a(com.a.a.a.g.a.e.class);
                eVar2.a(2);
                if (!z) {
                    jC = this.k.a() + this.f597f;
                }
                mVar.f603a.a(eVar2, jC);
                com.a.a.a.f.b.a("poke consumer manager at %s", Long.valueOf(jC));
            }
        }
        return false;
    }

    Set<String> a(ah ahVar, String[] strArr) {
        return a(ahVar, strArr, false);
    }

    Set<String> b(ah ahVar, String[] strArr) {
        return a(ahVar, strArr, true);
    }

    private Set<String> a(ah ahVar, String[] strArr, boolean z) {
        HashSet hashSet = new HashSet();
        for (s sVar : this.m.values()) {
            com.a.a.a.f.b.a("checking job tag %s. tags of job: %s", sVar.j(), sVar.j().getTags());
            if (sVar.q() && !sVar.n() && ahVar.a(strArr, sVar.l())) {
                hashSet.add(sVar.a());
                if (z) {
                    sVar.o();
                } else {
                    sVar.m();
                }
            }
        }
        return hashSet;
    }

    void a(com.a.a.a.g.a.j jVar, s sVar, ae aeVar) {
        m mVar = (m) jVar.e();
        if (!mVar.f607e) {
            throw new IllegalStateException("this worker should not have a job");
        }
        mVar.f607e = false;
        this.m.remove(sVar.j().getId());
        if (sVar.k() != null) {
            this.f592a.b(sVar.k());
            if (aeVar != null && aeVar.d() && aeVar.b().longValue() > 0) {
                this.f592a.a(sVar.k(), this.k.a() + (aeVar.b().longValue() * 1000000));
            }
        }
    }

    boolean a(String str) {
        return this.m.get(str) != null;
    }

    public int d() {
        return this.f594c.size();
    }

    public boolean a(com.a.a.a.j.c cVar) {
        for (s sVar : this.m.values()) {
            if (sVar.j().isPersistent() && cVar.c() >= sVar.f614d) {
                return true;
            }
        }
        return false;
    }

    public boolean e() {
        return this.f593b.size() == this.f594c.size();
    }
}
