package com.facebook.imagepipeline.k;

import android.os.SystemClock;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: JobScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
public class al {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f2623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ap f2624g;
    private final int j;
    private final Runnable h = new am(this);
    private final Runnable i = new an(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    com.facebook.imagepipeline.h.d f2618a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    boolean f2619b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    ar f2620c = ar.IDLE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    long f2621d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    long f2622e = 0;

    public al(Executor executor, ap apVar, int i) {
        this.f2623f = executor;
        this.f2624g = apVar;
        this.j = i;
    }

    public void a() {
        com.facebook.imagepipeline.h.d dVar;
        synchronized (this) {
            dVar = this.f2618a;
            this.f2618a = null;
            this.f2619b = false;
        }
        com.facebook.imagepipeline.h.d.d(dVar);
    }

    public boolean a(com.facebook.imagepipeline.h.d dVar, boolean z) {
        com.facebook.imagepipeline.h.d dVar2;
        if (!b(dVar, z)) {
            return false;
        }
        synchronized (this) {
            dVar2 = this.f2618a;
            this.f2618a = com.facebook.imagepipeline.h.d.a(dVar);
            this.f2619b = z;
        }
        com.facebook.imagepipeline.h.d.d(dVar2);
        return true;
    }

    public boolean b() {
        boolean z = false;
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jMax = 0;
        synchronized (this) {
            if (!b(this.f2618a, this.f2619b)) {
                return false;
            }
            switch (this.f2620c) {
                case IDLE:
                    jMax = Math.max(this.f2622e + ((long) this.j), jUptimeMillis);
                    this.f2621d = jUptimeMillis;
                    this.f2620c = ar.QUEUED;
                    z = true;
                    break;
                case RUNNING:
                    this.f2620c = ar.RUNNING_AND_PENDING;
                    break;
            }
            if (z) {
                a(jMax - jUptimeMillis);
            }
            return true;
        }
    }

    private void a(long j) {
        if (j > 0) {
            aq.a().schedule(this.i, j, TimeUnit.MILLISECONDS);
        } else {
            this.i.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f2623f.execute(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.facebook.imagepipeline.h.d dVar;
        boolean z;
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            dVar = this.f2618a;
            z = this.f2619b;
            this.f2618a = null;
            this.f2619b = false;
            this.f2620c = ar.RUNNING;
            this.f2622e = jUptimeMillis;
        }
        try {
            if (b(dVar, z)) {
                this.f2624g.a(dVar, z);
            }
        } finally {
            com.facebook.imagepipeline.h.d.d(dVar);
            f();
        }
    }

    private void f() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jMax = 0;
        boolean z = false;
        synchronized (this) {
            if (this.f2620c == ar.RUNNING_AND_PENDING) {
                jMax = Math.max(this.f2622e + ((long) this.j), jUptimeMillis);
                z = true;
                this.f2621d = jUptimeMillis;
                this.f2620c = ar.QUEUED;
            } else {
                this.f2620c = ar.IDLE;
            }
        }
        if (z) {
            a(jMax - jUptimeMillis);
        }
    }

    private static boolean b(com.facebook.imagepipeline.h.d dVar, boolean z) {
        return z || com.facebook.imagepipeline.h.d.e(dVar);
    }

    public synchronized long c() {
        return this.f2622e - this.f2621d;
    }
}
