package d;

import android.support.v7.widget.ActivityChooserView;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ConnectionPool.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f4663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f4664d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d.a.b.d f4665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4666b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f4668f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4669g;
    private final Deque<d.a.b.c> h;

    static {
        f4663c = !p.class.desiredAssertionStatus();
        f4664d = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), d.a.c.a("OkHttp ConnectionPool", true));
    }

    public p() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public p(int i, long j, TimeUnit timeUnit) {
        this.f4669g = new q(this);
        this.h = new ArrayDeque();
        this.f4665a = new d.a.b.d();
        this.f4667e = i;
        this.f4668f = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    @Nullable
    d.a.b.c a(a aVar, d.a.b.h hVar, bi biVar) {
        if (!f4663c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (d.a.b.c cVar : this.h) {
            if (cVar.a(aVar, biVar)) {
                hVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    @Nullable
    Socket a(a aVar, d.a.b.h hVar) {
        if (!f4663c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (d.a.b.c cVar : this.h) {
            if (cVar.a(aVar, null) && cVar.e() && cVar != hVar.b()) {
                return hVar.a(cVar);
            }
        }
        return null;
    }

    void a(d.a.b.c cVar) {
        if (!f4663c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f4666b) {
            this.f4666b = true;
            f4664d.execute(this.f4669g);
        }
        this.h.add(cVar);
    }

    boolean b(d.a.b.c cVar) {
        if (!f4663c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (cVar.f4227a || this.f4667e == 0) {
            this.h.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    long a(long j) {
        d.a.b.c cVar;
        long j2;
        d.a.b.c cVar2 = null;
        long j3 = Long.MIN_VALUE;
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            for (d.a.b.c cVar3 : this.h) {
                if (a(cVar3, j) > 0) {
                    i2++;
                } else {
                    int i3 = i + 1;
                    long j4 = j - cVar3.f4231e;
                    if (j4 > j3) {
                        cVar = cVar3;
                        j2 = j4;
                    } else {
                        cVar = cVar2;
                        j2 = j3;
                    }
                    j3 = j2;
                    cVar2 = cVar;
                    i = i3;
                }
            }
            if (j3 >= this.f4668f || i > this.f4667e) {
                this.h.remove(cVar2);
                d.a.c.a(cVar2.c());
                return 0L;
            }
            if (i > 0) {
                return this.f4668f - j3;
            }
            if (i2 > 0) {
                return this.f4668f;
            }
            this.f4666b = false;
            return -1L;
        }
    }

    private int a(d.a.b.c cVar, long j) {
        List<Reference<d.a.b.h>> list = cVar.f4230d;
        int i = 0;
        while (i < list.size()) {
            Reference<d.a.b.h> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                d.a.g.i.b().a("A connection to " + cVar.a().a().a() + " was leaked. Did you forget to close a response body?", ((d.a.b.i) reference).f4252a);
                list.remove(i);
                cVar.f4227a = true;
                if (list.isEmpty()) {
                    cVar.f4231e = j - this.f4668f;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
