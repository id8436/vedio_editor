package c.a.a.a.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: AdvertisingInfoProvider.java */
/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.a.a.f.c f152b;

    public c(Context context) {
        this.f151a = context.getApplicationContext();
        this.f152b = new c.a.a.a.a.f.d(context, "TwitterAdvertisingInfoPreferences");
    }

    public b a() {
        b bVarB = b();
        if (c(bVarB)) {
            c.a.a.a.f.h().a("Fabric", "Using AdvertisingInfo from Preference Store");
            a(bVarB);
            return bVarB;
        }
        b bVarE = e();
        b(bVarE);
        return bVarE;
    }

    private void a(b bVar) {
        new Thread(new d(this, bVar)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public void b(b bVar) {
        if (c(bVar)) {
            this.f152b.a(this.f152b.b().putString("advertising_id", bVar.f149a).putBoolean("limit_ad_tracking_enabled", bVar.f150b));
        } else {
            this.f152b.a(this.f152b.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
        }
    }

    protected b b() {
        return new b(this.f152b.a().getString("advertising_id", ""), this.f152b.a().getBoolean("limit_ad_tracking_enabled", false));
    }

    public j c() {
        return new e(this.f151a);
    }

    public j d() {
        return new f(this.f151a);
    }

    private boolean c(b bVar) {
        return (bVar == null || TextUtils.isEmpty(bVar.f149a)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e() {
        b bVarA = c().a();
        if (!c(bVarA)) {
            bVarA = d().a();
            if (!c(bVarA)) {
                c.a.a.a.f.h().a("Fabric", "AdvertisingInfo not present");
            } else {
                c.a.a.a.f.h().a("Fabric", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            c.a.a.a.f.h().a("Fabric", "Using AdvertisingInfo from Reflection Provider");
        }
        return bVarA;
    }
}
