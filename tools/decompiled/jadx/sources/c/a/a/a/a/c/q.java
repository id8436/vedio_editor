package c.a.a.a.a.c;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: PriorityAsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class q<Result> implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f231b;

    public q(Executor executor, p pVar) {
        this.f230a = executor;
        this.f231b = pVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f230a.execute(new r(this, runnable, null));
    }
}
