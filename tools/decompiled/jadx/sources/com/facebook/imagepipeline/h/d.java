package com.facebook.imagepipeline.h;

import android.util.Pair;
import com.facebook.d.d.k;
import com.facebook.d.d.m;
import com.facebook.h.h;
import com.facebook.imagepipeline.memory.ah;
import com.facebook.imagepipeline.memory.ak;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: EncodedImage.java */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class d implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final com.facebook.d.h.a<ah> f2578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final m<FileInputStream> f2579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.facebook.g.c f2580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2584g;
    private int h;

    @Nullable
    private com.facebook.c.a.f i;

    public d(com.facebook.d.h.a<ah> aVar) {
        this.f2580c = com.facebook.g.c.f2252a;
        this.f2581d = -1;
        this.f2582e = -1;
        this.f2583f = -1;
        this.f2584g = 1;
        this.h = -1;
        k.a(com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar));
        this.f2578a = aVar.clone();
        this.f2579b = null;
    }

    public d(m<FileInputStream> mVar) {
        this.f2580c = com.facebook.g.c.f2252a;
        this.f2581d = -1;
        this.f2582e = -1;
        this.f2583f = -1;
        this.f2584g = 1;
        this.h = -1;
        k.a(mVar);
        this.f2578a = null;
        this.f2579b = mVar;
    }

    public d(m<FileInputStream> mVar, int i) {
        this(mVar);
        this.h = i;
    }

    public static d a(d dVar) {
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    public d a() {
        d dVar;
        if (this.f2579b != null) {
            dVar = new d(this.f2579b, this.h);
        } else {
            com.facebook.d.h.a aVarB = com.facebook.d.h.a.b(this.f2578a);
            if (aVarB == null) {
                dVar = null;
            } else {
                try {
                    dVar = new d((com.facebook.d.h.a<ah>) aVarB);
                } finally {
                    com.facebook.d.h.a.c(aVarB);
                }
            }
        }
        if (dVar != null) {
            dVar.b(this);
        }
        return dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.d.h.a.c(this.f2578a);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean b() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.facebook.d.h.a<com.facebook.imagepipeline.memory.ah> r0 = r1.f2578a     // Catch: java.lang.Throwable -> L12
            boolean r0 = com.facebook.d.h.a.a(r0)     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto Ld
            com.facebook.d.d.m<java.io.FileInputStream> r0 = r1.f2579b     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
        Ld:
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.h.d.b():boolean");
    }

    public com.facebook.d.h.a<ah> c() {
        return com.facebook.d.h.a.b(this.f2578a);
    }

    public InputStream d() {
        if (this.f2579b != null) {
            return this.f2579b.b();
        }
        com.facebook.d.h.a aVarB = com.facebook.d.h.a.b(this.f2578a);
        if (aVarB != null) {
            try {
                return new ak((ah) aVarB.a());
            } finally {
                com.facebook.d.h.a.c(aVarB);
            }
        }
        return null;
    }

    public void a(com.facebook.g.c cVar) {
        this.f2580c = cVar;
    }

    public void a(int i) {
        this.f2583f = i;
    }

    public void b(int i) {
        this.f2582e = i;
    }

    public void c(int i) {
        this.f2581d = i;
    }

    public void d(int i) {
        this.f2584g = i;
    }

    public void a(@Nullable com.facebook.c.a.f fVar) {
        this.i = fVar;
    }

    public com.facebook.g.c e() {
        return this.f2580c;
    }

    public int f() {
        return this.f2581d;
    }

    public int g() {
        return this.f2582e;
    }

    public int h() {
        return this.f2583f;
    }

    public int i() {
        return this.f2584g;
    }

    @Nullable
    public com.facebook.c.a.f j() {
        return this.i;
    }

    public boolean e(int i) {
        if (this.f2580c != com.facebook.g.b.f2245a || this.f2579b != null) {
            return true;
        }
        k.a(this.f2578a);
        ah ahVarA = this.f2578a.a();
        return ahVarA.a(i + (-2)) == -1 && ahVarA.a(i + (-1)) == -39;
    }

    public int k() {
        return (this.f2578a == null || this.f2578a.a() == null) ? this.h : this.f2578a.a().a();
    }

    public void l() {
        Pair<Integer, Integer> pairN;
        com.facebook.g.c cVarC = com.facebook.g.e.c(d());
        this.f2580c = cVarC;
        if (com.facebook.g.b.a(cVarC)) {
            pairN = m();
        } else {
            pairN = n();
        }
        if (cVarC == com.facebook.g.b.f2245a && this.f2581d == -1) {
            if (pairN != null) {
                this.f2581d = com.facebook.h.c.a(com.facebook.h.c.a(d()));
                return;
            }
            return;
        }
        this.f2581d = 0;
    }

    private Pair<Integer, Integer> m() {
        Pair<Integer, Integer> pairA = h.a(d());
        if (pairA != null) {
            this.f2582e = ((Integer) pairA.first).intValue();
            this.f2583f = ((Integer) pairA.second).intValue();
        }
        return pairA;
    }

    private Pair<Integer, Integer> n() {
        InputStream inputStreamD = null;
        try {
            inputStreamD = d();
            Pair<Integer, Integer> pairA = com.facebook.h.a.a(inputStreamD);
            if (pairA != null) {
                this.f2582e = ((Integer) pairA.first).intValue();
                this.f2583f = ((Integer) pairA.second).intValue();
            }
            return pairA;
        } finally {
            if (inputStreamD != null) {
                try {
                    inputStreamD.close();
                } catch (IOException e2) {
                }
            }
        }
    }

    public void b(d dVar) {
        this.f2580c = dVar.e();
        this.f2582e = dVar.g();
        this.f2583f = dVar.h();
        this.f2581d = dVar.f();
        this.f2584g = dVar.i();
        this.h = dVar.k();
        this.i = dVar.j();
    }

    public static boolean c(d dVar) {
        return dVar.f2581d >= 0 && dVar.f2582e >= 0 && dVar.f2583f >= 0;
    }

    public static void d(@Nullable d dVar) {
        if (dVar != null) {
            dVar.close();
        }
    }

    public static boolean e(@Nullable d dVar) {
        return dVar != null && dVar.b();
    }
}
