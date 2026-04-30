package c.a.a.a;

import android.content.Context;
import c.a.a.a.a.b.z;
import c.a.a.a.a.c.y;
import java.io.File;
import java.util.Collection;

/* JADX INFO: compiled from: Kit.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class q<Result> implements Comparable<q> {
    Context context;
    f fabric;
    z idManager;
    l<Result> initializationCallback;
    p<Result> initializationTask = new p<>(this);

    protected abstract Result doInBackground();

    public abstract String getIdentifier();

    public abstract String getVersion();

    void injectParameters(Context context, f fVar, l<Result> lVar, z zVar) {
        this.fabric = fVar;
        this.context = new j(context, getIdentifier(), getPath());
        this.initializationCallback = lVar;
        this.idManager = zVar;
    }

    final void initialize() {
        this.initializationTask.a(this.fabric.f(), (Object[]) new Void[]{(Void) null});
    }

    protected boolean onPreExecute() {
        return true;
    }

    protected void onPostExecute(Result result) {
    }

    protected void onCancelled(Result result) {
    }

    protected z getIdManager() {
        return this.idManager;
    }

    public Context getContext() {
        return this.context;
    }

    public f getFabric() {
        return this.fabric;
    }

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    @Override // java.lang.Comparable
    public int compareTo(q qVar) {
        if (containsAnnotatedDependency(qVar)) {
            return 1;
        }
        if (qVar.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (!hasAnnotatedDependency() || qVar.hasAnnotatedDependency()) {
            return (hasAnnotatedDependency() || !qVar.hasAnnotatedDependency()) ? 0 : -1;
        }
        return 1;
    }

    boolean containsAnnotatedDependency(q qVar) {
        c.a.a.a.a.c.n nVar = (c.a.a.a.a.c.n) getClass().getAnnotation(c.a.a.a.a.c.n.class);
        if (nVar != null) {
            Class<?>[] clsArrA = nVar.a();
            for (Class<?> cls : clsArrA) {
                if (cls.equals(qVar.getClass())) {
                    return true;
                }
            }
        }
        return false;
    }

    boolean hasAnnotatedDependency() {
        return ((c.a.a.a.a.c.n) getClass().getAnnotation(c.a.a.a.a.c.n.class)) != null;
    }

    protected Collection<y> getDependencies() {
        return this.initializationTask.getDependencies();
    }
}
