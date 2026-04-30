package c.a.a.a.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesUtil;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes.dex */
class f implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f156a;

    public f(Context context) {
        this.f156a = context.getApplicationContext();
    }

    @Override // c.a.a.a.a.b.j
    public b a() {
        b bVar = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c.a.a.a.f.h().a("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
        } else {
            try {
                this.f156a.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
                h hVar = new h();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                    } catch (Exception e2) {
                        c.a.a.a.f.h().d("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", e2);
                    } finally {
                        this.f156a.unbindService(hVar);
                    }
                    if (this.f156a.bindService(intent, hVar, 1)) {
                        i iVar = new i(hVar.a());
                        bVar = new b(iVar.a(), iVar.b());
                    } else {
                        c.a.a.a.f.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
                    }
                } catch (Throwable th) {
                    c.a.a.a.f.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", th);
                }
            } catch (PackageManager.NameNotFoundException e3) {
                c.a.a.a.f.h().a("Fabric", "Unable to find Google Play Services package name");
            } catch (Exception e4) {
                c.a.a.a.f.h().a("Fabric", "Unable to determine if Google Play Services is available", e4);
            }
        }
        return bVar;
    }
}
