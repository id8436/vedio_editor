package com.facebook.e;

import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: FirstAvailableDataSourceSupplier.java */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
class l<T> extends a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f2221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2222b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f<T> f2223c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f<T> f2224d = null;

    public l(j jVar) {
        this.f2221a = jVar;
        if (!j()) {
            a((Throwable) new RuntimeException("No data source supplier or supplier returned null."));
        }
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    @Nullable
    public synchronized T d() {
        f<T> fVarL;
        fVarL = l();
        return fVarL != null ? fVarL.d() : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    @Override // com.facebook.e.a, com.facebook.e.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean c() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.facebook.e.f r0 = r1.l()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            boolean r0 = r0.c()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.e.l.c():boolean");
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    public boolean h() {
        synchronized (this) {
            if (!super.h()) {
                return false;
            }
            f<T> fVar = this.f2223c;
            this.f2223c = null;
            f<T> fVar2 = this.f2224d;
            this.f2224d = null;
            e(fVar2);
            e(fVar);
            return true;
        }
    }

    private boolean j() {
        k kVar = null;
        com.facebook.d.d.m<f<T>> mVarK = k();
        f<T> fVarB = mVarK != null ? mVarK.b() : null;
        if (a((f) fVarB) && fVarB != null) {
            fVarB.a(new m(this), com.facebook.d.b.a.a());
            return true;
        }
        e(fVarB);
        return false;
    }

    @Nullable
    private synchronized com.facebook.d.d.m<f<T>> k() {
        com.facebook.d.d.m<f<T>> mVar;
        if (a() || this.f2222b >= this.f2221a.f2220a.size()) {
            mVar = null;
        } else {
            List list = this.f2221a.f2220a;
            int i = this.f2222b;
            this.f2222b = i + 1;
            mVar = (com.facebook.d.d.m) list.get(i);
        }
        return mVar;
    }

    private synchronized boolean a(f<T> fVar) {
        boolean z;
        if (a()) {
            z = false;
        } else {
            this.f2223c = fVar;
            z = true;
        }
        return z;
    }

    private synchronized boolean b(f<T> fVar) {
        boolean z;
        if (a() || fVar != this.f2223c) {
            z = false;
        } else {
            this.f2223c = null;
            z = true;
        }
        return z;
    }

    @Nullable
    private synchronized f<T> l() {
        return this.f2224d;
    }

    private void a(f<T> fVar, boolean z) {
        f<T> fVar2 = null;
        synchronized (this) {
            if (fVar == this.f2223c && fVar != this.f2224d) {
                if (this.f2224d == null || z) {
                    fVar2 = this.f2224d;
                    this.f2224d = fVar;
                }
                e(fVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(f<T> fVar) {
        if (b(fVar)) {
            if (fVar != l()) {
                e(fVar);
            }
            if (!j()) {
                a(fVar.f());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(f<T> fVar) {
        a((f) fVar, fVar.b());
        if (fVar == l()) {
            a((Object) null, fVar.b());
        }
    }

    private void e(f<T> fVar) {
        if (fVar != null) {
            fVar.h();
        }
    }
}
