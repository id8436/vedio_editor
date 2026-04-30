package com.facebook.a;

import android.os.Bundle;
import com.facebook.av;
import com.facebook.i.ag;
import java.io.Serializable;
import java.util.Locale;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: FacebookTimeSpentData.java */
/* JADX INFO: loaded from: classes2.dex */
class r implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1746a = a.class.getCanonicalName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long[] f1747b = {300000, 900000, 1800000, DateUtils.MILLIS_PER_HOUR, 21600000, 43200000, DateUtils.MILLIS_PER_DAY, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1751f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1752g;
    private long h;
    private int i;
    private String j;

    r() {
        a();
    }

    void a(a aVar, long j, String str) {
        long j2 = 0;
        if (c() || j - this.f1750e > 300000) {
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", str);
            aVar.a("fb_mobile_activate_app", bundle);
            this.f1750e = j;
        }
        if (this.f1749d) {
            ag.a(av.APP_EVENTS, f1746a, "Resume for active app");
            return;
        }
        long j3 = b() ? j - this.f1752g : 0L;
        if (j3 < 0) {
            ag.a(av.APP_EVENTS, f1746a, "Clock skew detected");
        } else {
            j2 = j3;
        }
        if (j2 > DateUtils.MILLIS_PER_MINUTE) {
            a(aVar, j2);
        } else if (j2 > 1000) {
            this.i++;
        }
        if (this.i == 0) {
            this.j = str;
        }
        this.f1751f = j;
        this.f1749d = true;
    }

    private void a(a aVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", this.i);
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(a(j))));
        bundle.putString("fb_mobile_launch_source", this.j);
        aVar.a("fb_mobile_deactivate_app", this.h / 1000, bundle);
        a();
    }

    private static int a(long j) {
        int i = 0;
        while (i < f1747b.length && f1747b[i] < j) {
            i++;
        }
        return i;
    }

    private void a() {
        this.f1749d = false;
        this.f1751f = -1L;
        this.f1752g = -1L;
        this.i = 0;
        this.h = 0L;
    }

    private boolean b() {
        return this.f1752g != -1;
    }

    private boolean c() {
        boolean z = !this.f1748c;
        this.f1748c = true;
        return z;
    }
}
