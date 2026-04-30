package com.facebook.d.l;

import android.os.SystemClock;

/* JADX INFO: compiled from: RealtimeSinceBootClock.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f1986a = new b();

    private b() {
    }

    public static b a() {
        return f1986a;
    }

    public long b() {
        return SystemClock.elapsedRealtime();
    }
}
