package e;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: SegmentPool.java */
/* JADX INFO: loaded from: classes.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    static x f4758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f4759b;

    private y() {
    }

    static x a() {
        synchronized (y.class) {
            if (f4758a != null) {
                x xVar = f4758a;
                f4758a = xVar.f4756f;
                xVar.f4756f = null;
                f4759b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return xVar;
            }
            return new x();
        }
    }

    static void a(x xVar) {
        if (xVar.f4756f != null || xVar.f4757g != null) {
            throw new IllegalArgumentException();
        }
        if (!xVar.f4754d) {
            synchronized (y.class) {
                if (f4759b + PlaybackStateCompat.ACTION_PLAY_FROM_URI <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    f4759b += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    xVar.f4756f = f4758a;
                    xVar.f4753c = 0;
                    xVar.f4752b = 0;
                    f4758a = xVar;
                }
            }
        }
    }
}
