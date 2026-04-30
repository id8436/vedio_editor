package c.a.a.a.a.c;

import java.util.Collection;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: PriorityAsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p<Params, Progress, Result> extends a<Params, Progress, Result> implements l<y>, u, y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v f229a = new v();

    public final void a(ExecutorService executorService, Params... paramsArr) {
        super.a(new q(executorService, this), paramsArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return o.a(this, obj);
    }

    @Override // c.a.a.a.a.c.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void addDependency(y yVar) {
        if (b() != j.PENDING) {
            throw new IllegalStateException("Must not add Dependency after task is running");
        }
        ((l) ((u) e())).addDependency(yVar);
    }

    @Override // c.a.a.a.a.c.l
    public Collection<y> getDependencies() {
        return ((l) ((u) e())).getDependencies();
    }

    @Override // c.a.a.a.a.c.l
    public boolean areDependenciesMet() {
        return ((l) ((u) e())).areDependenciesMet();
    }

    @Override // c.a.a.a.a.c.u
    public o getPriority() {
        return ((u) e()).getPriority();
    }

    @Override // c.a.a.a.a.c.y
    public void setFinished(boolean z) {
        ((y) ((u) e())).setFinished(z);
    }

    @Override // c.a.a.a.a.c.y
    public boolean isFinished() {
        return ((y) ((u) e())).isFinished();
    }

    @Override // c.a.a.a.a.c.y
    public void setError(Throwable th) {
        ((y) ((u) e())).setError(th);
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lc/a/a/a/a/c/l<Lc/a/a/a/a/c/y;>;:Lc/a/a/a/a/c/u;:Lc/a/a/a/a/c/y;>()TT; */
    public l e() {
        return this.f229a;
    }
}
