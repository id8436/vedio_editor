package c.a.a.a;

import android.annotation.TargetApi;
import android.app.Application;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: ActivityLifecycleManager.java */
/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Application.ActivityLifecycleCallbacks> f364a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application f365b;

    b(Application application) {
        this.f365b = application;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(14)
    public void a() {
        Iterator<Application.ActivityLifecycleCallbacks> it = this.f364a.iterator();
        while (it.hasNext()) {
            this.f365b.unregisterActivityLifecycleCallbacks(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(14)
    public boolean a(d dVar) {
        if (this.f365b == null) {
            return false;
        }
        c cVar = new c(this, dVar);
        this.f365b.registerActivityLifecycleCallbacks(cVar);
        this.f364a.add(cVar);
        return true;
    }
}
