package c.a.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import c.a.a.a.a.g.ab;
import c.a.a.a.a.g.w;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: Onboarding.java */
/* JADX INFO: loaded from: classes.dex */
class u extends q<Boolean> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.a.a.e.m f395a = new c.a.a.a.a.e.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PackageManager f396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PackageInfo f398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f400f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f401g;
    private String h;
    private String i;
    private final Future<Map<String, s>> j;
    private final Collection<q> k;

    public u(Future<Map<String, s>> future, Collection<q> collection) {
        this.j = future;
        this.k = collection;
    }

    @Override // c.a.a.a.q
    public String getVersion() {
        return "1.3.6.79";
    }

    @Override // c.a.a.a.q
    protected boolean onPreExecute() {
        boolean z = false;
        try {
            this.f401g = getIdManager().h();
            this.f396b = getContext().getPackageManager();
            this.f397c = getContext().getPackageName();
            this.f398d = this.f396b.getPackageInfo(this.f397c, 0);
            this.f399e = Integer.toString(this.f398d.versionCode);
            this.f400f = this.f398d.versionName == null ? "0.0" : this.f398d.versionName;
            this.h = this.f396b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.i = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            z = true;
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            f.h().e("Fabric", "Failed init", e2);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c.a.a.a.q
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean doInBackground() throws Throwable {
        Map<String, s> map;
        boolean zA;
        String strK = c.a.a.a.a.b.m.k(getContext());
        w wVarC = c();
        if (wVarC == null) {
            zA = false;
        } else {
            try {
                if (this.j != null) {
                    map = this.j.get();
                } else {
                    map = new HashMap<>();
                }
                zA = a(strK, wVarC.f349a, a(map, this.k).values());
            } catch (Exception e2) {
                f.h().e("Fabric", "Error performing auto configuration.", e2);
                zA = false;
            }
        }
        return Boolean.valueOf(zA);
    }

    private w c() {
        try {
            c.a.a.a.a.g.q.a().a(this, this.idManager, this.f395a, this.f399e, this.f400f, b()).c();
            return c.a.a.a.a.g.q.a().b();
        } catch (Exception e2) {
            f.h().e("Fabric", "Error dealing with settings", e2);
            return null;
        }
    }

    Map<String, s> a(Map<String, s> map, Collection<q> collection) {
        for (q qVar : collection) {
            if (!map.containsKey(qVar.getIdentifier())) {
                map.put(qVar.getIdentifier(), new s(qVar.getIdentifier(), qVar.getVersion(), "binary"));
            }
        }
        return map;
    }

    @Override // c.a.a.a.q
    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    private boolean a(String str, c.a.a.a.a.g.e eVar, Collection<s> collection) {
        if ("new".equals(eVar.f304b)) {
            if (b(str, eVar, collection)) {
                return c.a.a.a.a.g.q.a().d();
            }
            f.h().e("Fabric", "Failed to create app with Crashlytics service.", null);
            return false;
        }
        if ("configured".equals(eVar.f304b)) {
            return c.a.a.a.a.g.q.a().d();
        }
        if (!eVar.f307e) {
            return true;
        }
        f.h().a("Fabric", "Server says an update is required - forcing a full App update.");
        c(str, eVar, collection);
        return true;
    }

    private boolean b(String str, c.a.a.a.a.g.e eVar, Collection<s> collection) {
        return new c.a.a.a.a.g.h(this, b(), eVar.f305c, this.f395a).a(a(c.a.a.a.a.g.n.a(getContext(), str), collection));
    }

    private boolean c(String str, c.a.a.a.a.g.e eVar, Collection<s> collection) {
        return a(eVar, c.a.a.a.a.g.n.a(getContext(), str), collection);
    }

    private boolean a(c.a.a.a.a.g.e eVar, c.a.a.a.a.g.n nVar, Collection<s> collection) {
        return new ab(this, b(), eVar.f305c, this.f395a).a(a(nVar, collection));
    }

    private c.a.a.a.a.g.d a(c.a.a.a.a.g.n nVar, Collection<s> collection) {
        Context context = getContext();
        return new c.a.a.a.a.g.d(new c.a.a.a.a.b.k().a(context), getIdManager().c(), this.f400f, this.f399e, c.a.a.a.a.b.m.a(c.a.a.a.a.b.m.m(context)), this.h, c.a.a.a.a.b.t.a(this.f401g).a(), this.i, "0", nVar, collection);
    }

    String b() {
        return c.a.a.a.a.b.m.b(getContext(), "com.crashlytics.ApiEndpoint");
    }
}
