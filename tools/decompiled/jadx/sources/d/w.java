package d;

import android.support.v7.widget.ActivityChooserView;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Runnable f4692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private ExecutorService f4693d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4690a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4691b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<aw> f4694e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Deque<aw> f4695f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Deque<av> f4696g = new ArrayDeque();

    public synchronized ExecutorService a() {
        if (this.f4693d == null) {
            this.f4693d = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), d.a.c.a("OkHttp Dispatcher", false));
        }
        return this.f4693d;
    }

    synchronized void a(aw awVar) {
        if (this.f4695f.size() < this.f4690a && c(awVar) < this.f4691b) {
            this.f4695f.add(awVar);
            a().execute(awVar);
        } else {
            this.f4694e.add(awVar);
        }
    }

    private void c() {
        if (this.f4695f.size() < this.f4690a && !this.f4694e.isEmpty()) {
            Iterator<aw> it = this.f4694e.iterator();
            while (it.hasNext()) {
                aw next = it.next();
                if (c(next) < this.f4691b) {
                    it.remove();
                    this.f4695f.add(next);
                    a().execute(next);
                }
                if (this.f4695f.size() >= this.f4690a) {
                    return;
                }
            }
        }
    }

    private int c(aw awVar) {
        int i = 0;
        Iterator<aw> it = this.f4695f.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().a().equals(awVar.a()) ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    synchronized void a(av avVar) {
        this.f4696g.add(avVar);
    }

    void b(aw awVar) {
        a(this.f4695f, awVar, true);
    }

    void b(av avVar) {
        a(this.f4696g, avVar, false);
    }

    private <T> void a(Deque<T> deque, T t, boolean z) {
        int iB;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                c();
            }
            iB = b();
            runnable = this.f4692c;
        }
        if (iB == 0 && runnable != null) {
            runnable.run();
        }
    }

    public synchronized int b() {
        return this.f4695f.size() + this.f4696g.size();
    }
}
