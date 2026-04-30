package c.a.a.a.a.c;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<Params, Progress, Result> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f194a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f197d = f194a + 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f198e = (f194a * 2) + 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f199f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f200g = new LinkedBlockingQueue(128);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f195b = new ThreadPoolExecutor(f197d, f198e, 1, TimeUnit.SECONDS, f200g, f199f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Executor f196c = new h(null);
    private static final g h = new g();
    private static volatile Executor i = f196c;
    private volatile j l = j.PENDING;
    private final AtomicBoolean m = new AtomicBoolean();
    private final AtomicBoolean n = new AtomicBoolean();
    private final k<Params, Result> j = new c(this);
    private final FutureTask<Result> k = new d(this, this.j);

    protected abstract Result a(Params... paramsArr);

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Result result) {
        if (!this.n.get()) {
            d(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result d(Result result) {
        h.obtainMessage(1, new f(this, result)).sendToTarget();
        return result;
    }

    public final j b() {
        return this.l;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        c();
    }

    protected void c() {
    }

    public final boolean d() {
        return this.m.get();
    }

    public final boolean a(boolean z) {
        this.m.set(true);
        return this.k.cancel(z);
    }

    public final a<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.l != j.PENDING) {
            switch (this.l) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.l = j.RUNNING;
        a();
        this.j.f221b = paramsArr;
        executor.execute(this.k);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Result result) {
        if (d()) {
            b(result);
        } else {
            a(result);
        }
        this.l = j.FINISHED;
    }
}
