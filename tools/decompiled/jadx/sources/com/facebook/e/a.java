package com.facebook.e;

import android.util.Pair;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: AbstractDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T> implements f<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private T f2205c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private Throwable f2206d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private float f2207e = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f2204b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private d f2203a = d.IN_PROGRESS;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<i<T>, Executor>> f2208f = new ConcurrentLinkedQueue<>();

    protected a() {
    }

    public synchronized boolean a() {
        return this.f2204b;
    }

    @Override // com.facebook.e.f
    public synchronized boolean b() {
        return this.f2203a != d.IN_PROGRESS;
    }

    @Override // com.facebook.e.f
    public synchronized boolean c() {
        return this.f2205c != null;
    }

    @Override // com.facebook.e.f
    @Nullable
    public synchronized T d() {
        return this.f2205c;
    }

    public synchronized boolean e() {
        return this.f2203a == d.FAILURE;
    }

    @Override // com.facebook.e.f
    @Nullable
    public synchronized Throwable f() {
        return this.f2206d;
    }

    @Override // com.facebook.e.f
    public synchronized float g() {
        return this.f2207e;
    }

    @Override // com.facebook.e.f
    public boolean h() {
        boolean z = true;
        synchronized (this) {
            if (this.f2204b) {
                z = false;
            } else {
                this.f2204b = true;
                T t = this.f2205c;
                this.f2205c = null;
                if (t != null) {
                    a(t);
                }
                if (!b()) {
                    j();
                }
                synchronized (this) {
                    this.f2208f.clear();
                }
            }
        }
        return z;
    }

    protected void a(@Nullable T t) {
    }

    @Override // com.facebook.e.f
    public void a(i<T> iVar, Executor executor) {
        com.facebook.d.d.k.a(iVar);
        com.facebook.d.d.k.a(executor);
        synchronized (this) {
            if (!this.f2204b) {
                if (this.f2203a == d.IN_PROGRESS) {
                    this.f2208f.add(Pair.create(iVar, executor));
                }
                boolean z = c() || b() || k();
                if (z) {
                    a(iVar, executor, e(), k());
                }
            }
        }
    }

    private void j() {
        boolean zE = e();
        boolean zK = k();
        for (Pair<i<T>, Executor> pair : this.f2208f) {
            a((i) pair.first, (Executor) pair.second, zE, zK);
        }
    }

    private void a(i<T> iVar, Executor executor, boolean z, boolean z2) {
        executor.execute(new b(this, z, iVar, z2));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean k() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.a()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            boolean r0 = r1.b()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.e.a.k():boolean");
    }

    protected boolean a(@Nullable T t, boolean z) throws Throwable {
        boolean zB = b(t, z);
        if (zB) {
            j();
        }
        return zB;
    }

    protected boolean a(Throwable th) {
        boolean zB = b(th);
        if (zB) {
            j();
        }
        return zB;
    }

    protected boolean a(float f2) {
        boolean zB = b(f2);
        if (zB) {
            i();
        }
        return zB;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(@javax.annotation.Nullable T r4, boolean r5) throws java.lang.Throwable {
        /*
            r3 = this;
            r1 = 0
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L3a
            boolean r0 = r3.f2204b     // Catch: java.lang.Throwable -> L2f
            if (r0 != 0) goto Lc
            com.facebook.e.d r0 = r3.f2203a     // Catch: java.lang.Throwable -> L2f
            com.facebook.e.d r2 = com.facebook.e.d.IN_PROGRESS     // Catch: java.lang.Throwable -> L2f
            if (r0 == r2) goto L14
        Lc:
            r0 = 0
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L13
            r3.a(r4)
        L13:
            return r0
        L14:
            if (r5 == 0) goto L1e
            com.facebook.e.d r0 = com.facebook.e.d.SUCCESS     // Catch: java.lang.Throwable -> L2f
            r3.f2203a = r0     // Catch: java.lang.Throwable -> L2f
            r0 = 1065353216(0x3f800000, float:1.0)
            r3.f2207e = r0     // Catch: java.lang.Throwable -> L2f
        L1e:
            T r0 = r3.f2205c     // Catch: java.lang.Throwable -> L2f
            if (r0 == r4) goto L42
            T r1 = r3.f2205c     // Catch: java.lang.Throwable -> L2f
            r3.f2205c = r4     // Catch: java.lang.Throwable -> L3f
            r4 = r1
        L27:
            r0 = 1
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L13
            r3.a(r4)
            goto L13
        L2f:
            r0 = move-exception
            r4 = r1
        L31:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3d
            throw r0     // Catch: java.lang.Throwable -> L33
        L33:
            r0 = move-exception
        L34:
            if (r4 == 0) goto L39
            r3.a(r4)
        L39:
            throw r0
        L3a:
            r0 = move-exception
            r4 = r1
            goto L34
        L3d:
            r0 = move-exception
            goto L31
        L3f:
            r0 = move-exception
            r4 = r1
            goto L31
        L42:
            r4 = r1
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.e.a.b(java.lang.Object, boolean):boolean");
    }

    private synchronized boolean b(Throwable th) {
        boolean z;
        if (this.f2204b || this.f2203a != d.IN_PROGRESS) {
            z = false;
        } else {
            this.f2203a = d.FAILURE;
            this.f2206d = th;
            z = true;
        }
        return z;
    }

    private synchronized boolean b(float f2) {
        boolean z = false;
        synchronized (this) {
            if (!this.f2204b && this.f2203a == d.IN_PROGRESS && f2 >= this.f2207e) {
                this.f2207e = f2;
                z = true;
            }
        }
        return z;
    }

    protected void i() {
        for (Pair<i<T>, Executor> pair : this.f2208f) {
            ((Executor) pair.second).execute(new c(this, (i) pair.first));
        }
    }
}
