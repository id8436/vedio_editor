package com.b.a.d.b;

import android.os.Looper;
import android.util.Log;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements com.b.a.d.b.b.p, p, t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<com.b.a.d.c, l> f865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.b.b.o f867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<com.b.a.d.c, WeakReference<s<?>>> f869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final aa f870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h f871g;
    private ReferenceQueue<s<?>> h;

    public f(com.b.a.d.b.b.o oVar, com.b.a.d.b.b.b bVar, ExecutorService executorService, ExecutorService executorService2) {
        this(oVar, bVar, executorService, executorService2, null, null, null, null, null);
    }

    f(com.b.a.d.b.b.o oVar, com.b.a.d.b.b.b bVar, ExecutorService executorService, ExecutorService executorService2, Map<com.b.a.d.c, l> map, r rVar, Map<com.b.a.d.c, WeakReference<s<?>>> map2, g gVar, aa aaVar) {
        this.f867c = oVar;
        this.f871g = new h(bVar);
        this.f869e = map2 == null ? new HashMap<>() : map2;
        this.f866b = rVar == null ? new r() : rVar;
        this.f865a = map == null ? new HashMap<>() : map;
        this.f868d = gVar == null ? new g(executorService, executorService2, this) : gVar;
        this.f870f = aaVar == null ? new aa() : aaVar;
        oVar.a(this);
    }

    public <T, Z, R> i a(com.b.a.d.c cVar, int i, int i2, com.b.a.d.a.c<T> cVar2, com.b.a.g.b<T, Z> bVar, com.b.a.d.g<Z> gVar, com.b.a.d.d.f.c<Z, R> cVar3, com.b.a.k kVar, boolean z, e eVar, com.b.a.h.f fVar) {
        com.b.a.j.h.a();
        long jA = com.b.a.j.d.a();
        q qVarA = this.f866b.a(cVar2.b(), cVar, i, i2, bVar.a(), bVar.b(), gVar, bVar.d(), cVar3, bVar.c());
        s<?> sVarB = b(qVarA, z);
        if (sVarB != null) {
            fVar.a(sVarB);
            if (Log.isLoggable("Engine", 2)) {
                a("Loaded resource from cache", jA, qVarA);
            }
            return null;
        }
        s<?> sVarA = a(qVarA, z);
        if (sVarA != null) {
            fVar.a(sVarA);
            if (Log.isLoggable("Engine", 2)) {
                a("Loaded resource from active resources", jA, qVarA);
            }
            return null;
        }
        l lVar = this.f865a.get(qVarA);
        if (lVar != null) {
            lVar.a(fVar);
            if (Log.isLoggable("Engine", 2)) {
                a("Added to existing load", jA, qVarA);
            }
            return new i(fVar, lVar);
        }
        l lVarA = this.f868d.a(qVarA, z);
        u uVar = new u(lVarA, new a(qVarA, i, i2, cVar2, bVar, gVar, cVar3, this.f871g, eVar, kVar), kVar);
        this.f865a.put(qVarA, lVarA);
        lVarA.a(fVar);
        lVarA.a(uVar);
        if (Log.isLoggable("Engine", 2)) {
            a("Started new load", jA, qVarA);
        }
        return new i(fVar, lVarA);
    }

    private static void a(String str, long j, com.b.a.d.c cVar) {
        Log.v("Engine", str + " in " + com.b.a.j.d.a(j) + "ms, key: " + cVar);
    }

    private s<?> a(com.b.a.d.c cVar, boolean z) {
        s<?> sVar;
        if (!z) {
            return null;
        }
        WeakReference<s<?>> weakReference = this.f869e.get(cVar);
        if (weakReference != null) {
            sVar = weakReference.get();
            if (sVar != null) {
                sVar.e();
            } else {
                this.f869e.remove(cVar);
            }
        } else {
            sVar = null;
        }
        return sVar;
    }

    private s<?> b(com.b.a.d.c cVar, boolean z) {
        if (!z) {
            return null;
        }
        s<?> sVarA = a(cVar);
        if (sVarA != null) {
            sVarA.e();
            this.f869e.put(cVar, new k(cVar, sVarA, a()));
            return sVarA;
        }
        return sVarA;
    }

    private s<?> a(com.b.a.d.c cVar) {
        z<?> zVarA = this.f867c.a(cVar);
        if (zVarA == null) {
            return null;
        }
        if (zVarA instanceof s) {
            return (s) zVarA;
        }
        return new s<>(zVarA, true);
    }

    public void a(z zVar) {
        com.b.a.j.h.a();
        if (zVar instanceof s) {
            ((s) zVar).f();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Override // com.b.a.d.b.p
    public void a(com.b.a.d.c cVar, s<?> sVar) {
        com.b.a.j.h.a();
        if (sVar != null) {
            sVar.a(cVar, this);
            if (sVar.a()) {
                this.f869e.put(cVar, new k(cVar, sVar, a()));
            }
        }
        this.f865a.remove(cVar);
    }

    @Override // com.b.a.d.b.p
    public void a(l lVar, com.b.a.d.c cVar) {
        com.b.a.j.h.a();
        if (lVar.equals(this.f865a.get(cVar))) {
            this.f865a.remove(cVar);
        }
    }

    @Override // com.b.a.d.b.b.p
    public void b(z<?> zVar) {
        com.b.a.j.h.a();
        this.f870f.a(zVar);
    }

    @Override // com.b.a.d.b.t
    public void b(com.b.a.d.c cVar, s sVar) {
        com.b.a.j.h.a();
        this.f869e.remove(cVar);
        if (sVar.a()) {
            this.f867c.b(cVar, sVar);
        } else {
            this.f870f.a(sVar);
        }
    }

    private ReferenceQueue<s<?>> a() {
        if (this.h == null) {
            this.h = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new j(this.f869e, this.h));
        }
        return this.h;
    }
}
