package c.a.a.a.a.c;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: PriorityFutureTask.java */
/* JADX INFO: loaded from: classes.dex */
public class t<V> extends FutureTask<V> implements l<y>, u, y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object f233b;

    public t(Callable<V> callable) {
        super(callable);
        this.f233b = a(callable);
    }

    public t(Runnable runnable, V v) {
        super(runnable, v);
        this.f233b = a(runnable);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((u) a()).compareTo(obj);
    }

    @Override // c.a.a.a.a.c.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void addDependency(y yVar) {
        ((l) ((u) a())).addDependency(yVar);
    }

    @Override // c.a.a.a.a.c.l
    public Collection<y> getDependencies() {
        return ((l) ((u) a())).getDependencies();
    }

    @Override // c.a.a.a.a.c.l
    public boolean areDependenciesMet() {
        return ((l) ((u) a())).areDependenciesMet();
    }

    @Override // c.a.a.a.a.c.u
    public o getPriority() {
        return ((u) a()).getPriority();
    }

    @Override // c.a.a.a.a.c.y
    public void setFinished(boolean z) {
        ((y) ((u) a())).setFinished(z);
    }

    @Override // c.a.a.a.a.c.y
    public boolean isFinished() {
        return ((y) ((u) a())).isFinished();
    }

    @Override // c.a.a.a.a.c.y
    public void setError(Throwable th) {
        ((y) ((u) a())).setError(th);
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lc/a/a/a/a/c/l<Lc/a/a/a/a/c/y;>;:Lc/a/a/a/a/c/u;:Lc/a/a/a/a/c/y;>()TT; */
    public l a() {
        return (l) this.f233b;
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lc/a/a/a/a/c/l<Lc/a/a/a/a/c/y;>;:Lc/a/a/a/a/c/u;:Lc/a/a/a/a/c/y;>(Ljava/lang/Object;)TT; */
    protected l a(Object obj) {
        return v.isProperDelegate(obj) ? (l) obj : new v();
    }
}
