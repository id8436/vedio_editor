package b.a.a;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: PendingPost.java */
/* JADX INFO: loaded from: classes.dex */
final class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<k> f89d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f90a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    p f91b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    k f92c;

    private k(Object obj, p pVar) {
        this.f90a = obj;
        this.f91b = pVar;
    }

    static k a(p pVar, Object obj) {
        synchronized (f89d) {
            int size = f89d.size();
            if (size > 0) {
                k kVarRemove = f89d.remove(size - 1);
                kVarRemove.f90a = obj;
                kVarRemove.f91b = pVar;
                kVarRemove.f92c = null;
                return kVarRemove;
            }
            return new k(obj, pVar);
        }
    }

    static void a(k kVar) {
        kVar.f90a = null;
        kVar.f91b = null;
        kVar.f92c = null;
        synchronized (f89d) {
            if (f89d.size() < 10000) {
                f89d.add(kVar);
            }
        }
    }
}
