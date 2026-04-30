package com.learnncode.mediachooser.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b<Params, Progress, Result> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f3682b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h f3685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile Executor f3686f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadFactory f3683c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f3684d = new LinkedBlockingQueue(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f3681a = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, f3684d, f3683c);
    private volatile k i = k.PENDING;
    private final AtomicBoolean j = new AtomicBoolean();
    private final AtomicBoolean k = new AtomicBoolean();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l<Params, Result> f3687g = new d(this);
    private final FutureTask<Result> h = new e(this, this.f3687g);

    protected abstract Result a(Params... paramsArr);

    static {
        c cVar = null;
        f3682b = new i(cVar);
        f3685e = new h(cVar);
        f3686f = f3682b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Result result) {
        if (!this.k.get()) {
            d(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result d(Result result) {
        f3685e.obtainMessage(1, new g(this, result)).sendToTarget();
        return result;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        b();
    }

    protected void b() {
    }

    public final boolean c() {
        return this.j.get();
    }

    public final b<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.i != k.PENDING) {
            switch (f.f3691a[this.i.ordinal()]) {
                case 1:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case 2:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.i = k.RUNNING;
        a();
        this.f3687g.f3702b = paramsArr;
        executor.execute(this.h);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Result result) {
        if (c()) {
            b(result);
        } else {
            a(result);
        }
        this.i = k.FINISHED;
    }
}
