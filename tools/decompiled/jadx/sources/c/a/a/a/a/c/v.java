package c.a.a.a.a.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: PriorityTask.java */
/* JADX INFO: loaded from: classes.dex */
public class v implements l<y>, u, y {
    private final List<y> dependencies = new ArrayList();
    private final AtomicBoolean hasRun = new AtomicBoolean(false);
    private final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    @Override // c.a.a.a.a.c.l
    public synchronized Collection<y> getDependencies() {
        return Collections.unmodifiableCollection(this.dependencies);
    }

    @Override // c.a.a.a.a.c.l
    public synchronized void addDependency(y yVar) {
        this.dependencies.add(yVar);
    }

    @Override // c.a.a.a.a.c.l
    public boolean areDependenciesMet() {
        Iterator<y> it = getDependencies().iterator();
        while (it.hasNext()) {
            if (!it.next().isFinished()) {
                return false;
            }
        }
        return true;
    }

    @Override // c.a.a.a.a.c.y
    public synchronized void setFinished(boolean z) {
        this.hasRun.set(z);
    }

    @Override // c.a.a.a.a.c.y
    public boolean isFinished() {
        return this.hasRun.get();
    }

    @Override // c.a.a.a.a.c.u
    public o getPriority() {
        return o.NORMAL;
    }

    @Override // c.a.a.a.a.c.y
    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    public Throwable getError() {
        return this.throwable.get();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return o.a(this, obj);
    }

    public static boolean isProperDelegate(Object obj) {
        try {
            return (((l) obj) == null || ((y) obj) == null || ((u) obj) == null) ? false : true;
        } catch (ClassCastException e2) {
            return false;
        }
    }
}
