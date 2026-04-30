package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.support.v7.widget.ActivityChooserView;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: BasePool.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<V> implements z<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.facebook.d.g.b f2874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ae f2875b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Set<V> f2877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    final b f2878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    final b f2879f;
    private boolean h;
    private final af i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class<?> f2880g = getClass();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SparseArray<i<V>> f2876c = new SparseArray<>();

    protected abstract V b(int i);

    protected abstract void b(V v);

    protected abstract int c(int i);

    protected abstract int c(V v);

    protected abstract int d(int i);

    public a(com.facebook.d.g.b bVar, ae aeVar, af afVar) {
        this.f2874a = (com.facebook.d.g.b) com.facebook.d.d.k.a(bVar);
        this.f2875b = (ae) com.facebook.d.d.k.a(aeVar);
        this.i = (af) com.facebook.d.d.k.a(afVar);
        a(new SparseIntArray(0));
        this.f2877d = com.facebook.d.d.l.a();
        this.f2879f = new b();
        this.f2878e = new b();
    }

    protected void a() {
        this.f2874a.a(this);
        this.i.a(this);
    }

    @Override // com.facebook.imagepipeline.memory.z
    public V a(int i) throws Throwable {
        V vB;
        d();
        int iC = c(i);
        synchronized (this) {
            i<V> iVarF = f(iC);
            if (iVarF != null && (vB = iVarF.c()) != null) {
                com.facebook.d.d.k.b(this.f2877d.add(vB));
                int iC2 = c(vB);
                int iD = d(iC2);
                this.f2878e.a(iD);
                this.f2879f.b(iD);
                this.i.a(iD);
                e();
                if (com.facebook.d.e.a.a(2)) {
                    com.facebook.d.e.a.a(this.f2880g, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(vB)), Integer.valueOf(iC2));
                }
            } else {
                int iD2 = d(iC);
                if (!h(iD2)) {
                    throw new d(this.f2875b.f2902a, this.f2878e.f2920b, this.f2879f.f2920b, iD2);
                }
                this.f2878e.a(iD2);
                if (iVarF != null) {
                    iVarF.e();
                }
                vB = null;
                try {
                    vB = b(iC);
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f2878e.b(iD2);
                        i<V> iVarF2 = f(iC);
                        if (iVarF2 != null) {
                            iVarF2.f();
                        }
                        com.facebook.d.d.p.a(th);
                    }
                }
                synchronized (this) {
                    com.facebook.d.d.k.b(this.f2877d.add(vB));
                    b();
                    this.i.b(iD2);
                    e();
                    if (com.facebook.d.e.a.a(2)) {
                        com.facebook.d.e.a.a(this.f2880g, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(vB)), Integer.valueOf(iC));
                    }
                }
            }
        }
        return vB;
    }

    @Override // com.facebook.imagepipeline.memory.z, com.facebook.d.h.i
    public void a(V v) {
        com.facebook.d.d.k.a(v);
        int iC = c(v);
        int iD = d(iC);
        synchronized (this) {
            i<V> iVarF = f(iC);
            if (!this.f2877d.remove(v)) {
                com.facebook.d.e.a.c(this.f2880g, "release (free, value unrecognized) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(iC));
                b(v);
                this.i.c(iD);
            } else if (iVarF == null || iVarF.a() || c() || !d(v)) {
                if (iVarF != null) {
                    iVarF.f();
                }
                if (com.facebook.d.e.a.a(2)) {
                    com.facebook.d.e.a.a(this.f2880g, "release (free) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(iC));
                }
                b(v);
                this.f2878e.b(iD);
                this.i.c(iD);
            } else {
                iVarF.a(v);
                this.f2879f.a(iD);
                this.f2878e.b(iD);
                this.i.d(iD);
                if (com.facebook.d.e.a.a(2)) {
                    com.facebook.d.e.a.a(this.f2880g, "release (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(iC));
                }
            }
            e();
        }
    }

    protected boolean d(V v) {
        com.facebook.d.d.k.a(v);
        return true;
    }

    private synchronized void d() {
        com.facebook.d.d.k.b(!c() || this.f2879f.f2920b == 0);
    }

    private synchronized void a(SparseIntArray sparseIntArray) {
        synchronized (this) {
            com.facebook.d.d.k.a(sparseIntArray);
            this.f2876c.clear();
            SparseIntArray sparseIntArray2 = this.f2875b.f2904c;
            if (sparseIntArray2 != null) {
                for (int i = 0; i < sparseIntArray2.size(); i++) {
                    int iKeyAt = sparseIntArray2.keyAt(i);
                    this.f2876c.put(iKeyAt, new i<>(d(iKeyAt), sparseIntArray2.valueAt(i), sparseIntArray.get(iKeyAt, 0)));
                }
                this.h = false;
            } else {
                this.h = true;
            }
        }
    }

    synchronized void b() {
        if (c()) {
            e(this.f2875b.f2903b);
        }
    }

    synchronized void e(int i) {
        int iMin = Math.min((this.f2878e.f2920b + this.f2879f.f2920b) - i, this.f2879f.f2920b);
        if (iMin > 0) {
            if (com.facebook.d.e.a.a(2)) {
                com.facebook.d.e.a.a(this.f2880g, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i), Integer.valueOf(this.f2878e.f2920b + this.f2879f.f2920b), Integer.valueOf(iMin));
            }
            e();
            for (int i2 = 0; i2 < this.f2876c.size() && iMin > 0; i2++) {
                i<V> iVarValueAt = this.f2876c.valueAt(i2);
                while (iMin > 0) {
                    V vD = iVarValueAt.d();
                    if (vD == null) {
                        break;
                    }
                    b(vD);
                    iMin -= iVarValueAt.f2929a;
                    this.f2879f.b(iVarValueAt.f2929a);
                }
            }
            e();
            if (com.facebook.d.e.a.a(2)) {
                com.facebook.d.e.a.a(this.f2880g, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i), Integer.valueOf(this.f2878e.f2920b + this.f2879f.f2920b));
            }
        }
    }

    synchronized i<V> f(int i) {
        i<V> iVarG;
        iVarG = this.f2876c.get(i);
        if (iVarG == null && this.h) {
            if (com.facebook.d.e.a.a(2)) {
                com.facebook.d.e.a.a(this.f2880g, "creating new bucket %s", Integer.valueOf(i));
            }
            iVarG = g(i);
            this.f2876c.put(i, iVarG);
        }
        return iVarG;
    }

    i<V> g(int i) {
        return new i<>(d(i), ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0);
    }

    synchronized boolean c() {
        boolean z;
        z = this.f2878e.f2920b + this.f2879f.f2920b > this.f2875b.f2903b;
        if (z) {
            this.i.b();
        }
        return z;
    }

    synchronized boolean h(int i) {
        boolean z = false;
        synchronized (this) {
            int i2 = this.f2875b.f2902a;
            if (i > i2 - this.f2878e.f2920b) {
                this.i.c();
            } else {
                int i3 = this.f2875b.f2903b;
                if (i > i3 - (this.f2878e.f2920b + this.f2879f.f2920b)) {
                    e(i3 - i);
                }
                if (i > i2 - (this.f2878e.f2920b + this.f2879f.f2920b)) {
                    this.i.c();
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void e() {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(this.f2880g, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f2878e.f2919a), Integer.valueOf(this.f2878e.f2920b), Integer.valueOf(this.f2879f.f2919a), Integer.valueOf(this.f2879f.f2920b));
        }
    }
}
