package com.facebook.imagepipeline.c;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: StagingArea.java */
/* JADX INFO: loaded from: classes2.dex */
public class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2415a = al.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private Map<com.facebook.c.a.f, com.facebook.imagepipeline.h.d> f2416b = new HashMap();

    private al() {
    }

    public static al a() {
        return new al();
    }

    public synchronized void a(com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        com.facebook.d.d.k.a(fVar);
        com.facebook.d.d.k.a(com.facebook.imagepipeline.h.d.e(dVar));
        com.facebook.imagepipeline.h.d.d(this.f2416b.put(fVar, com.facebook.imagepipeline.h.d.a(dVar)));
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: all -> 0x005b, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0002, B:9:0x001c, B:17:0x0042, B:19:0x0051, B:20:0x005a, B:14:0x0032, B:12:0x0028, B:16:0x003d), top: B:26:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean b(com.facebook.c.a.f r7, com.facebook.imagepipeline.h.d r8) {
        /*
            r6 = this;
            r1 = 0
            monitor-enter(r6)
            com.facebook.d.d.k.a(r7)     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.d.k.a(r8)     // Catch: java.lang.Throwable -> L5b
            boolean r0 = com.facebook.imagepipeline.h.d.e(r8)     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.d.k.a(r0)     // Catch: java.lang.Throwable -> L5b
            java.util.Map<com.facebook.c.a.f, com.facebook.imagepipeline.h.d> r0 = r6.f2416b     // Catch: java.lang.Throwable -> L5b
            java.lang.Object r0 = r0.get(r7)     // Catch: java.lang.Throwable -> L5b
            com.facebook.imagepipeline.h.d r0 = (com.facebook.imagepipeline.h.d) r0     // Catch: java.lang.Throwable -> L5b
            if (r0 != 0) goto L1c
            r0 = r1
        L1a:
            monitor-exit(r6)
            return r0
        L1c:
            com.facebook.d.h.a r2 = r0.c()     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.h.a r3 = r8.c()     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L32
            if (r3 == 0) goto L32
            java.lang.Object r4 = r2.a()     // Catch: java.lang.Throwable -> L50
            java.lang.Object r5 = r3.a()     // Catch: java.lang.Throwable -> L50
            if (r4 == r5) goto L3d
        L32:
            com.facebook.d.h.a.c(r3)     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.h.a.c(r2)     // Catch: java.lang.Throwable -> L5b
            com.facebook.imagepipeline.h.d.d(r0)     // Catch: java.lang.Throwable -> L5b
            r0 = r1
            goto L1a
        L3d:
            java.util.Map<com.facebook.c.a.f, com.facebook.imagepipeline.h.d> r1 = r6.f2416b     // Catch: java.lang.Throwable -> L50
            r1.remove(r7)     // Catch: java.lang.Throwable -> L50
            com.facebook.d.h.a.c(r3)     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.h.a.c(r2)     // Catch: java.lang.Throwable -> L5b
            com.facebook.imagepipeline.h.d.d(r0)     // Catch: java.lang.Throwable -> L5b
            r6.b()     // Catch: java.lang.Throwable -> L5b
            r0 = 1
            goto L1a
        L50:
            r1 = move-exception
            com.facebook.d.h.a.c(r3)     // Catch: java.lang.Throwable -> L5b
            com.facebook.d.h.a.c(r2)     // Catch: java.lang.Throwable -> L5b
            com.facebook.imagepipeline.h.d.d(r0)     // Catch: java.lang.Throwable -> L5b
            throw r1     // Catch: java.lang.Throwable -> L5b
        L5b:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.c.al.b(com.facebook.c.a.f, com.facebook.imagepipeline.h.d):boolean");
    }

    public synchronized com.facebook.imagepipeline.h.d a(com.facebook.c.a.f fVar) {
        com.facebook.imagepipeline.h.d dVarA;
        com.facebook.d.d.k.a(fVar);
        dVarA = this.f2416b.get(fVar);
        if (dVarA != null) {
            synchronized (dVarA) {
                if (!com.facebook.imagepipeline.h.d.e(dVarA)) {
                    this.f2416b.remove(fVar);
                    com.facebook.d.e.a.b(f2415a, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(dVarA)), fVar.a(), Integer.valueOf(System.identityHashCode(fVar)));
                    dVarA = null;
                } else {
                    dVarA = com.facebook.imagepipeline.h.d.a(dVarA);
                }
            }
        }
        return dVarA;
    }

    public synchronized boolean b(com.facebook.c.a.f fVar) {
        boolean z;
        com.facebook.d.d.k.a(fVar);
        if (this.f2416b.containsKey(fVar)) {
            com.facebook.imagepipeline.h.d dVar = this.f2416b.get(fVar);
            synchronized (dVar) {
                if (com.facebook.imagepipeline.h.d.e(dVar)) {
                    z = true;
                } else {
                    this.f2416b.remove(fVar);
                    com.facebook.d.e.a.b(f2415a, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(dVar)), fVar.a(), Integer.valueOf(System.identityHashCode(fVar)));
                    z = false;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private synchronized void b() {
        com.facebook.d.e.a.a(f2415a, "Count = %d", Integer.valueOf(this.f2416b.size()));
    }
}
