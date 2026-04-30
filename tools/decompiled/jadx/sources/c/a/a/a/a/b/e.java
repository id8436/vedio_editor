package c.a.a.a.a.b;

import android.content.Context;

/* JADX INFO: compiled from: AdvertisingInfoReflectionStrategy.java */
/* JADX INFO: loaded from: classes.dex */
class e implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f155a;

    public e(Context context) {
        this.f155a = context.getApplicationContext();
    }

    boolean a(Context context) {
        try {
            return ((Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context)).intValue() == 0;
        } catch (Exception e2) {
            return false;
        }
    }

    @Override // c.a.a.a.a.b.j
    public b a() {
        if (a(this.f155a)) {
            return new b(b(), c());
        }
        return null;
    }

    private String b() {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(d(), new Object[0]);
        } catch (Exception e2) {
            c.a.a.a.f.h().d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    private boolean c() {
        try {
            return ((Boolean) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(d(), new Object[0])).booleanValue();
        } catch (Exception e2) {
            c.a.a.a.f.h().d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    private Object d() {
        try {
            return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f155a);
        } catch (Exception e2) {
            c.a.a.a.f.h().d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }
}
