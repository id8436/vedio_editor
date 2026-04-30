package com.twitter.sdk.android.core.internal;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: compiled from: SessionMonitor.java */
/* JADX INFO: loaded from: classes3.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Calendar f4099c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

    public synchronized boolean a(long j) {
        boolean z = true;
        synchronized (this) {
            boolean z2 = j - this.f4098b > 21600000;
            boolean z3 = !a(j, this.f4098b);
            if (this.f4097a || !(z2 || z3)) {
                z = false;
            } else {
                this.f4097a = true;
            }
        }
        return z;
    }

    public synchronized void b(long j) {
        this.f4097a = false;
        this.f4098b = j;
    }

    private boolean a(long j, long j2) {
        this.f4099c.setTimeInMillis(j);
        int i = this.f4099c.get(6);
        int i2 = this.f4099c.get(1);
        this.f4099c.setTimeInMillis(j2);
        return i == this.f4099c.get(6) && i2 == this.f4099c.get(1);
    }
}
