package d.a.b;

import d.bi;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: RouteDatabase.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<bi> f4233a = new LinkedHashSet();

    public synchronized void a(bi biVar) {
        this.f4233a.add(biVar);
    }

    public synchronized void b(bi biVar) {
        this.f4233a.remove(biVar);
    }

    public synchronized boolean c(bi biVar) {
        return this.f4233a.contains(biVar);
    }
}
