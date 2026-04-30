package d;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: CacheControl.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4643c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f4644d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4645e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f4646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f4647g;
    boolean h;

    public f a() {
        this.f4641a = true;
        return this;
    }

    public f a(int i, TimeUnit timeUnit) {
        int i2;
        if (i < 0) {
            throw new IllegalArgumentException("maxStale < 0: " + i);
        }
        long seconds = timeUnit.toSeconds(i);
        if (seconds > 2147483647L) {
            i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        } else {
            i2 = (int) seconds;
        }
        this.f4644d = i2;
        return this;
    }

    public f b() {
        this.f4646f = true;
        return this;
    }

    public e c() {
        return new e(this);
    }
}
