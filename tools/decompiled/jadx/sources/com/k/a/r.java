package com.k.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes3.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final u f3557a = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f3558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ExecutorService f3559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final w f3560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<String, d> f3561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Map<Object, a> f3562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<Object, a> f3563g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final k k;
    final be l;
    final List<d> m;
    final v n;
    final boolean o;
    boolean p;

    r(Context context, ExecutorService executorService, Handler handler, w wVar, k kVar, be beVar) {
        this.f3557a.start();
        bm.a(this.f3557a.getLooper());
        this.f3558b = context;
        this.f3559c = executorService;
        this.f3561e = new LinkedHashMap();
        this.f3562f = new WeakHashMap();
        this.f3563g = new WeakHashMap();
        this.h = new HashSet();
        this.i = new s(this.f3557a.getLooper(), this);
        this.f3560d = wVar;
        this.j = handler;
        this.k = kVar;
        this.l = beVar;
        this.m = new ArrayList(4);
        this.p = bm.d(this.f3558b);
        this.o = bm.b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.n = new v(this);
        this.n.a();
    }

    void a(a aVar) {
        this.i.sendMessage(this.i.obtainMessage(1, aVar));
    }

    void b(a aVar) {
        this.i.sendMessage(this.i.obtainMessage(2, aVar));
    }

    void a(d dVar) {
        this.i.sendMessage(this.i.obtainMessage(4, dVar));
    }

    void b(d dVar) {
        this.i.sendMessageDelayed(this.i.obtainMessage(5, dVar), 500L);
    }

    void c(d dVar) {
        this.i.sendMessage(this.i.obtainMessage(6, dVar));
    }

    void a(NetworkInfo networkInfo) {
        this.i.sendMessage(this.i.obtainMessage(9, networkInfo));
    }

    void a(boolean z) {
        this.i.sendMessage(this.i.obtainMessage(10, z ? 1 : 0, 0));
    }

    void c(a aVar) {
        a(aVar, true);
    }

    void a(a aVar, boolean z) {
        if (this.h.contains(aVar.l())) {
            this.f3563g.put(aVar.d(), aVar);
            if (aVar.j().l) {
                bm.a("Dispatcher", "paused", aVar.f3414b.a(), "because tag '" + aVar.l() + "' is paused");
                return;
            }
            return;
        }
        d dVar = this.f3561e.get(aVar.e());
        if (dVar != null) {
            dVar.a(aVar);
            return;
        }
        if (this.f3559c.isShutdown()) {
            if (aVar.j().l) {
                bm.a("Dispatcher", "ignored", aVar.f3414b.a(), "because shut down");
                return;
            }
            return;
        }
        d dVarA = d.a(aVar.j(), this, this.k, this.l, aVar);
        dVarA.n = this.f3559c.submit(dVarA);
        this.f3561e.put(aVar.e(), dVarA);
        if (z) {
            this.f3562f.remove(aVar.d());
        }
        if (aVar.j().l) {
            bm.a("Dispatcher", "enqueued", aVar.f3414b.a());
        }
    }

    void d(a aVar) {
        String strE = aVar.e();
        d dVar = this.f3561e.get(strE);
        if (dVar != null) {
            dVar.b(aVar);
            if (dVar.b()) {
                this.f3561e.remove(strE);
                if (aVar.j().l) {
                    bm.a("Dispatcher", "canceled", aVar.c().a());
                }
            }
        }
        if (this.h.contains(aVar.l())) {
            this.f3563g.remove(aVar.d());
            if (aVar.j().l) {
                bm.a("Dispatcher", "canceled", aVar.c().a(), "because paused request got canceled");
            }
        }
        a aVarRemove = this.f3562f.remove(aVar.d());
        if (aVarRemove != null && aVarRemove.j().l) {
            bm.a("Dispatcher", "canceled", aVarRemove.c().a(), "from replaying");
        }
    }

    void a(Object obj) {
        if (this.h.add(obj)) {
            Iterator<d> it = this.f3561e.values().iterator();
            while (it.hasNext()) {
                d next = it.next();
                boolean z = next.j().l;
                a aVarI = next.i();
                List<a> listK = next.k();
                boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
                if (aVarI != null || z2) {
                    if (aVarI != null && aVarI.l().equals(obj)) {
                        next.b(aVarI);
                        this.f3563g.put(aVarI.d(), aVarI);
                        if (z) {
                            bm.a("Dispatcher", "paused", aVarI.f3414b.a(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = listK.size() - 1; size >= 0; size--) {
                            a aVar = listK.get(size);
                            if (aVar.l().equals(obj)) {
                                next.b(aVar);
                                this.f3563g.put(aVar.d(), aVar);
                                if (z) {
                                    bm.a("Dispatcher", "paused", aVar.f3414b.a(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.b()) {
                        it.remove();
                        if (z) {
                            bm.a("Dispatcher", "canceled", bm.a(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void b(Object obj) {
        if (this.h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<a> it = this.f3563g.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.l().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                this.j.sendMessage(this.j.obtainMessage(13, arrayList));
            }
        }
    }

    void d(d dVar) {
        NetworkInfo activeNetworkInfo;
        if (!dVar.c()) {
            if (this.f3559c.isShutdown()) {
                a(dVar, false);
                return;
            }
            if (!this.o) {
                activeNetworkInfo = null;
            } else {
                activeNetworkInfo = ((ConnectivityManager) bm.a(this.f3558b, "connectivity")).getActiveNetworkInfo();
            }
            boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            boolean zA = dVar.a(this.p, activeNetworkInfo);
            boolean zD = dVar.d();
            if (!zA) {
                boolean z2 = this.o && zD;
                a(dVar, z2);
                if (z2) {
                    f(dVar);
                    return;
                }
                return;
            }
            if (!this.o || z) {
                if (dVar.j().l) {
                    bm.a("Dispatcher", "retrying", bm.a(dVar));
                }
                if (dVar.l() instanceof ai) {
                    dVar.i |= ag.NO_CACHE.f3447d;
                }
                dVar.n = this.f3559c.submit(dVar);
                return;
            }
            a(dVar, zD);
            if (zD) {
                f(dVar);
            }
        }
    }

    void e(d dVar) {
        if (af.b(dVar.g())) {
            this.k.a(dVar.f(), dVar.e());
        }
        this.f3561e.remove(dVar.f());
        g(dVar);
        if (dVar.j().l) {
            bm.a("Dispatcher", "batched", bm.a(dVar), "for completion");
        }
    }

    void a() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        this.j.sendMessage(this.j.obtainMessage(8, arrayList));
        a((List<d>) arrayList);
    }

    void a(d dVar, boolean z) {
        if (dVar.j().l) {
            bm.a("Dispatcher", "batched", bm.a(dVar), "for error" + (z ? " (will replay)" : ""));
        }
        this.f3561e.remove(dVar.f());
        g(dVar);
    }

    void b(boolean z) {
        this.p = z;
    }

    void b(NetworkInfo networkInfo) {
        if (this.f3559c instanceof av) {
            ((av) this.f3559c).a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            b();
        }
    }

    private void b() {
        if (!this.f3562f.isEmpty()) {
            Iterator<a> it = this.f3562f.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                it.remove();
                if (next.j().l) {
                    bm.a("Dispatcher", "replaying", next.c().a());
                }
                a(next, false);
            }
        }
    }

    private void f(d dVar) {
        a aVarI = dVar.i();
        if (aVarI != null) {
            e(aVarI);
        }
        List<a> listK = dVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                e(listK.get(i));
            }
        }
    }

    private void e(a aVar) {
        Object objD = aVar.d();
        if (objD != null) {
            aVar.k = true;
            this.f3562f.put(objD, aVar);
        }
    }

    private void g(d dVar) {
        if (!dVar.c()) {
            this.m.add(dVar);
            if (!this.i.hasMessages(7)) {
                this.i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    private void a(List<d> list) {
        if (list != null && !list.isEmpty() && list.get(0).j().l) {
            StringBuilder sb = new StringBuilder();
            for (d dVar : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(bm.a(dVar));
            }
            bm.a("Dispatcher", "delivered", sb.toString());
        }
    }
}
