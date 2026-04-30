package com.facebook.e;

import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: IncreasingQualityDataSourceSupplier.java */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
class o<T> extends a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("IncreasingQualityDataSource.this")
    @Nullable
    private ArrayList<f<T>> f2228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("IncreasingQualityDataSource.this")
    private int f2229c;

    public o(n nVar) {
        this.f2227a = nVar;
        int size = nVar.f2226a.size();
        this.f2229c = size;
        this.f2228b = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            f<T> fVar = (f) ((com.facebook.d.d.m) nVar.f2226a.get(i)).b();
            this.f2228b.add(fVar);
            fVar.a(new p(this, i), com.facebook.d.b.a.a());
            if (fVar.c()) {
                return;
            }
        }
    }

    @Nullable
    private synchronized f<T> a(int i) {
        return (this.f2228b == null || i >= this.f2228b.size()) ? null : this.f2228b.get(i);
    }

    @Nullable
    private synchronized f<T> b(int i) {
        f<T> fVar = null;
        synchronized (this) {
            if (this.f2228b != null && i < this.f2228b.size()) {
                fVar = this.f2228b.set(i, null);
            }
        }
        return fVar;
    }

    @Nullable
    private synchronized f<T> j() {
        return a(this.f2229c);
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    @Nullable
    public synchronized T d() {
        f<T> fVarJ;
        fVarJ = j();
        return fVarJ != null ? fVarJ.d() : null;
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
            com.facebook.e.f r0 = r1.j()     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.e.o.c():boolean");
    }

    @Override // com.facebook.e.a, com.facebook.e.f
    public boolean h() {
        int i = 0;
        synchronized (this) {
            if (!super.h()) {
                return false;
            }
            ArrayList<f<T>> arrayList = this.f2228b;
            this.f2228b = null;
            if (arrayList != null) {
                while (true) {
                    int i2 = i;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    a((f) arrayList.get(i2));
                    i = i2 + 1;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, f<T> fVar) {
        a(i, fVar, fVar.b());
        if (fVar == j()) {
            a((Object) null, i == 0 && fVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, f<T> fVar) {
        a((f) c(i, fVar));
        if (i == 0) {
            a(fVar.f());
        }
    }

    private void a(int i, f<T> fVar, boolean z) {
        synchronized (this) {
            int i2 = this.f2229c;
            if (fVar == a(i) && i != this.f2229c) {
                if (j() == null || (z && i < this.f2229c)) {
                    this.f2229c = i;
                } else {
                    i = i2;
                }
                for (int i3 = this.f2229c; i3 > i; i3--) {
                    a((f) b(i3));
                }
            }
        }
    }

    @Nullable
    private synchronized f<T> c(int i, f<T> fVar) {
        if (fVar == j()) {
            fVar = null;
        } else if (fVar == a(i)) {
            fVar = b(i);
        }
        return fVar;
    }

    private void a(f<T> fVar) {
        if (fVar != null) {
            fVar.h();
        }
    }
}
