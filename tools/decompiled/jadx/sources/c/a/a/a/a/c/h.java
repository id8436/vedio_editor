package c.a.a.a.a.c;

import java.util.LinkedList;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class h implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LinkedList<Runnable> f213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f214b;

    private h() {
        this.f213a = new LinkedList<>();
    }

    /* synthetic */ h(b bVar) {
        this();
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f213a.offer(new i(this, runnable));
        if (this.f214b == null) {
            a();
        }
    }

    protected synchronized void a() {
        Runnable runnablePoll = this.f213a.poll();
        this.f214b = runnablePoll;
        if (runnablePoll != null) {
            a.f195b.execute(this.f214b);
        }
    }
}
