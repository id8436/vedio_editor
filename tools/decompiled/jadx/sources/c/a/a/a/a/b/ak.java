package c.a.a.a.a.b;

import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: compiled from: TimingMetric.java */
/* JADX INFO: loaded from: classes.dex */
public class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f148e;

    public ak(String str, String str2) {
        this.f144a = str;
        this.f145b = str2;
        this.f146c = !Log.isLoggable(str2, 2);
    }

    public synchronized void a() {
        if (!this.f146c) {
            this.f147d = SystemClock.elapsedRealtime();
            this.f148e = 0L;
        }
    }

    public synchronized void b() {
        if (!this.f146c && this.f148e == 0) {
            this.f148e = SystemClock.elapsedRealtime() - this.f147d;
            c();
        }
    }

    private void c() {
        Log.v(this.f145b, this.f144a + ": " + this.f148e + "ms");
    }
}
