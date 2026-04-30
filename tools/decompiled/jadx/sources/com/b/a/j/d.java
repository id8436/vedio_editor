package com.b.a.j;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* JADX INFO: compiled from: LogTime.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final double f1226a;

    static {
        f1226a = 17 <= Build.VERSION.SDK_INT ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    @TargetApi(17)
    public static long a() {
        return 17 <= Build.VERSION.SDK_INT ? SystemClock.elapsedRealtimeNanos() : System.currentTimeMillis();
    }

    public static double a(long j) {
        return (a() - j) * f1226a;
    }
}
