package c.a.a.a.a.g;

import android.content.Context;
import c.a.a.a.a.b.aj;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: Settings.java */
/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference<w> f340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CountDownLatch f341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v f342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f343d;

    public static q a() {
        return s.f344a;
    }

    private q() {
        this.f340a = new AtomicReference<>();
        this.f341b = new CountDownLatch(1);
        this.f343d = false;
    }

    public synchronized q a(c.a.a.a.q qVar, c.a.a.a.a.b.z zVar, c.a.a.a.a.e.m mVar, String str, String str2, String str3) {
        q qVar2;
        if (this.f343d) {
            qVar2 = this;
        } else {
            if (this.f342c == null) {
                Context context = qVar.getContext();
                String strC = zVar.c();
                String strA = new c.a.a.a.a.b.k().a(context);
                String strH = zVar.h();
                this.f342c = new j(qVar, new z(strA, zVar.a(strA, strC), c.a.a.a.a.b.m.a(c.a.a.a.a.b.m.m(context)), str2, str, c.a.a.a.a.b.t.a(strH).a(), c.a.a.a.a.b.m.k(context)), new aj(), new k(), new i(qVar), new l(qVar, str3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", strC), mVar));
            }
            this.f343d = true;
            qVar2 = this;
        }
        return qVar2;
    }

    public <T> T a(t<T> tVar, T t) {
        w wVar = this.f340a.get();
        return wVar == null ? t : tVar.usingSettings(wVar);
    }

    public w b() {
        try {
            this.f341b.await();
            return this.f340a.get();
        } catch (InterruptedException e2) {
            c.a.a.a.f.h().e("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    public synchronized boolean c() {
        w wVarA;
        wVarA = this.f342c.a();
        a(wVarA);
        return wVarA != null;
    }

    public synchronized boolean d() {
        w wVarA;
        wVarA = this.f342c.a(u.SKIP_CACHE_LOOKUP);
        a(wVarA);
        if (wVarA == null) {
            c.a.a.a.f.h().e("Fabric", "Failed to force reload of settings from Crashlytics.", null);
        }
        return wVarA != null;
    }

    private void a(w wVar) {
        this.f340a.set(wVar);
        this.f341b.countDown();
    }
}
