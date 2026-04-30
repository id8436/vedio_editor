package com.facebook.i;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.support.annotation.Nullable;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: AttributionIdentifiers.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2351a = d.class.getCanonicalName();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static d f2352g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2357f;

    private static d b(Context context) {
        d dVarC = c(context);
        if (dVarC == null) {
            d dVarD = d(context);
            if (dVarD == null) {
                return new d();
            }
            return dVarD;
        }
        return dVarC;
    }

    private static d c(Context context) {
        Object objA;
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new com.facebook.q("getAndroidId cannot be called on the main thread.");
            }
            Method methodA = as.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
            if (methodA == null) {
                return null;
            }
            Object objA2 = as.a((Object) null, methodA, context);
            if (!(objA2 instanceof Integer) || ((Integer) objA2).intValue() != 0) {
                return null;
            }
            Method methodA2 = as.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
            if (methodA2 != null && (objA = as.a((Object) null, methodA2, context)) != null) {
                Method methodA3 = as.a(objA.getClass(), "getId", (Class<?>[]) new Class[0]);
                Method methodA4 = as.a(objA.getClass(), "isLimitAdTrackingEnabled", (Class<?>[]) new Class[0]);
                if (methodA3 == null || methodA4 == null) {
                    return null;
                }
                d dVar = new d();
                dVar.f2354c = (String) as.a(objA, methodA3, new Object[0]);
                dVar.f2356e = ((Boolean) as.a(objA, methodA4, new Object[0])).booleanValue();
                return dVar;
            }
            return null;
        } catch (Exception e2) {
            as.a("android_id", e2);
            return null;
        }
    }

    private static d d(Context context) {
        g gVar = new g();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, gVar, 1)) {
                f fVar = new f(gVar.a());
                d dVar = new d();
                dVar.f2354c = fVar.a();
                dVar.f2356e = fVar.b();
                return dVar;
            }
        } catch (Exception e2) {
            as.a("android_id", e2);
        } finally {
            context.unbindService(gVar);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.i.d a(android.content.Context r8) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.i.d.a(android.content.Context):com.facebook.i.d");
    }

    private static d a(d dVar) {
        dVar.f2357f = System.currentTimeMillis();
        f2352g = dVar;
        return dVar;
    }

    public String a() {
        return this.f2353b;
    }

    public String b() {
        return this.f2354c;
    }

    public String c() {
        return this.f2355d;
    }

    public boolean d() {
        return this.f2356e;
    }

    @Nullable
    private static String e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }
}
