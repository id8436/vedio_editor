package com.facebook.imagepipeline.c;

import android.graphics.Bitmap;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: CountingMemoryCache.java */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class m<K, V> implements com.facebook.d.g.a, ad<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final long f2443a = TimeUnit.MINUTES.toMillis(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    final l<K, r<K, V>> f2444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    final l<K, r<K, V>> f2445c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    protected ae f2447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final am<V> f2448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final q f2449g;
    private final com.facebook.d.d.m<ae> h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    final Map<Bitmap, Object> f2446d = new WeakHashMap();

    @GuardedBy("this")
    private long i = SystemClock.uptimeMillis();

    public m(am<V> amVar, q qVar, com.facebook.d.d.m<ae> mVar, com.facebook.imagepipeline.b.f fVar, boolean z) {
        this.f2448f = amVar;
        this.f2444b = new l<>(a((am) amVar));
        this.f2445c = new l<>(a((am) amVar));
        this.f2449g = qVar;
        this.h = mVar;
        this.f2447e = this.h.b();
        if (z) {
            fVar.a(new n(this));
        }
    }

    private am<r<K, V>> a(am<V> amVar) {
        return new o(this, amVar);
    }

    @Override // com.facebook.imagepipeline.c.ad
    public com.facebook.d.h.a<V> a(K k, com.facebook.d.h.a<V> aVar) {
        return a(k, aVar, null);
    }

    public com.facebook.d.h.a<V> a(K k, com.facebook.d.h.a<V> aVar, s<K> sVar) {
        r<K, V> rVarB;
        com.facebook.d.h.a<V> aVarI;
        com.facebook.d.h.a<V> aVarA;
        com.facebook.d.d.k.a(k);
        com.facebook.d.d.k.a(aVar);
        c();
        synchronized (this) {
            rVarB = this.f2444b.b(k);
            r<K, V> rVarB2 = this.f2445c.b(k);
            if (rVarB2 != null) {
                f(rVarB2);
                aVarI = i(rVarB2);
            } else {
                aVarI = null;
            }
            if (b(aVar.a())) {
                r<K, V> rVarA = r.a(k, aVar, sVar);
                this.f2445c.a(k, rVarA);
                aVarA = a((r) rVarA);
            } else {
                aVarA = null;
            }
        }
        com.facebook.d.h.a.c(aVarI);
        d(rVarB);
        d();
        return aVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean b(V r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.facebook.imagepipeline.c.am<V> r0 = r3.f2448f     // Catch: java.lang.Throwable -> L2a
            int r0 = r0.a(r4)     // Catch: java.lang.Throwable -> L2a
            com.facebook.imagepipeline.c.ae r1 = r3.f2447e     // Catch: java.lang.Throwable -> L2a
            int r1 = r1.f2402e     // Catch: java.lang.Throwable -> L2a
            if (r0 > r1) goto L28
            int r1 = r3.a()     // Catch: java.lang.Throwable -> L2a
            com.facebook.imagepipeline.c.ae r2 = r3.f2447e     // Catch: java.lang.Throwable -> L2a
            int r2 = r2.f2399b     // Catch: java.lang.Throwable -> L2a
            int r2 = r2 + (-1)
            if (r1 > r2) goto L28
            int r1 = r3.b()     // Catch: java.lang.Throwable -> L2a
            com.facebook.imagepipeline.c.ae r2 = r3.f2447e     // Catch: java.lang.Throwable -> L2a
            int r2 = r2.f2398a     // Catch: java.lang.Throwable -> L2a
            int r0 = r2 - r0
            if (r1 > r0) goto L28
            r0 = 1
        L26:
            monitor-exit(r3)
            return r0
        L28:
            r0 = 0
            goto L26
        L2a:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.c.m.b(java.lang.Object):boolean");
    }

    @Override // com.facebook.imagepipeline.c.ad
    @Nullable
    public com.facebook.d.h.a<V> a(K k) {
        r<K, V> rVarB;
        com.facebook.d.h.a<V> aVarA;
        com.facebook.d.d.k.a(k);
        synchronized (this) {
            rVarB = this.f2444b.b(k);
            r<K, V> rVarA = this.f2445c.a(k);
            if (rVarA == null) {
                aVarA = null;
            } else {
                aVarA = a((r) rVarA);
            }
        }
        d(rVarB);
        c();
        d();
        return aVarA;
    }

    private synchronized com.facebook.d.h.a<V> a(r<K, V> rVar) {
        g(rVar);
        return com.facebook.d.h.a.a(rVar.f2456b.a(), new p(this, rVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(r<K, V> rVar) {
        boolean zC;
        com.facebook.d.h.a<V> aVarI;
        com.facebook.d.d.k.a(rVar);
        synchronized (this) {
            h(rVar);
            zC = c(rVar);
            aVarI = i(rVar);
        }
        com.facebook.d.h.a.c(aVarI);
        if (!zC) {
            rVar = null;
        }
        e(rVar);
        c();
        d();
    }

    private synchronized boolean c(r<K, V> rVar) {
        boolean z;
        if (rVar.f2458d || rVar.f2457c != 0) {
            z = false;
        } else {
            this.f2444b.a(rVar.f2455a, rVar);
            z = true;
        }
        return z;
    }

    private synchronized void c() {
        if (this.i + f2443a <= SystemClock.uptimeMillis()) {
            this.i = SystemClock.uptimeMillis();
            this.f2447e = this.h.b();
        }
    }

    private void d() {
        ArrayList<r<K, V>> arrayListA;
        synchronized (this) {
            arrayListA = a(Math.min(this.f2447e.f2401d, this.f2447e.f2399b - a()), Math.min(this.f2447e.f2400c, this.f2447e.f2398a - b()));
            c(arrayListA);
        }
        a((ArrayList) arrayListA);
        b((ArrayList) arrayListA);
    }

    @Nullable
    private synchronized ArrayList<r<K, V>> a(int i, int i2) {
        ArrayList<r<K, V>> arrayList;
        int iMax = Math.max(i, 0);
        int iMax2 = Math.max(i2, 0);
        if (this.f2444b.a() <= iMax && this.f2444b.b() <= iMax2) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            while (true) {
                if (this.f2444b.a() <= iMax && this.f2444b.b() <= iMax2) {
                    break;
                }
                K kC = this.f2444b.c();
                this.f2444b.b(kC);
                arrayList.add(this.f2445c.b(kC));
            }
        }
        return arrayList;
    }

    private void a(@Nullable ArrayList<r<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<r<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                com.facebook.d.h.a.c(i(it.next()));
            }
        }
    }

    private void b(@Nullable ArrayList<r<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<r<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                d(it.next());
            }
        }
    }

    private static <K, V> void d(@Nullable r<K, V> rVar) {
        if (rVar != null && rVar.f2459e != null) {
            rVar.f2459e.a(rVar.f2455a, false);
        }
    }

    private static <K, V> void e(@Nullable r<K, V> rVar) {
        if (rVar != null && rVar.f2459e != null) {
            rVar.f2459e.a(rVar.f2455a, true);
        }
    }

    private synchronized void c(@Nullable ArrayList<r<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<r<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                f(it.next());
            }
        }
    }

    private synchronized void f(r<K, V> rVar) {
        synchronized (this) {
            com.facebook.d.d.k.a(rVar);
            com.facebook.d.d.k.b(rVar.f2458d ? false : true);
            rVar.f2458d = true;
        }
    }

    private synchronized void g(r<K, V> rVar) {
        com.facebook.d.d.k.a(rVar);
        com.facebook.d.d.k.b(!rVar.f2458d);
        rVar.f2457c++;
    }

    private synchronized void h(r<K, V> rVar) {
        com.facebook.d.d.k.a(rVar);
        com.facebook.d.d.k.b(rVar.f2457c > 0);
        rVar.f2457c--;
    }

    @Nullable
    private synchronized com.facebook.d.h.a<V> i(r<K, V> rVar) {
        com.facebook.d.d.k.a(rVar);
        return (rVar.f2458d && rVar.f2457c == 0) ? rVar.f2456b : null;
    }

    public synchronized int a() {
        return this.f2445c.a() - this.f2444b.a();
    }

    public synchronized int b() {
        return this.f2445c.b() - this.f2444b.b();
    }
}
