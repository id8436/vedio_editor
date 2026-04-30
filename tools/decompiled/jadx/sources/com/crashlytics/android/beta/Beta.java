package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import c.a.a.a.a.a.b;
import c.a.a.a.a.b.aa;
import c.a.a.a.a.b.aj;
import c.a.a.a.a.b.m;
import c.a.a.a.a.b.u;
import c.a.a.a.a.b.z;
import c.a.a.a.a.f.d;
import c.a.a.a.a.g.w;
import c.a.a.a.f;
import c.a.a.a.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Beta extends q<Boolean> implements u {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final b<String> deviceTokenCache = new b<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    public static Beta getInstance() {
        return (Beta) f.a(Beta.class);
    }

    @Override // c.a.a.a.q
    @TargetApi(14)
    protected boolean onPreExecute() {
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, (Application) getContext().getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // c.a.a.a.q
    public Boolean doInBackground() throws Throwable {
        f.h().a(TAG, "Beta kit initializing...");
        Context context = getContext();
        z idManager = getIdManager();
        if (TextUtils.isEmpty(getBetaDeviceToken(context, idManager.h()))) {
            f.h().a(TAG, "A Beta device token was not found for this app");
            return false;
        }
        f.h().a(TAG, "Beta device token is present, checking for app updates.");
        c.a.a.a.a.g.f betaSettingsData = getBetaSettingsData();
        BuildProperties buildPropertiesLoadBuildProperties = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettingsData, buildPropertiesLoadBuildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, buildPropertiesLoadBuildProperties, new d(this), new aj(), new c.a.a.a.a.e.b(f.h()));
        }
        return true;
    }

    @TargetApi(14)
    UpdatesController createUpdatesController(int i, Application application) {
        return i >= 14 ? new ActivityLifecycleCheckForUpdatesController(getFabric().e(), getFabric().f()) : new ImmediateCheckForUpdatesController();
    }

    @Override // c.a.a.a.a.b.u
    public Map<aa, String> getDeviceIdentifiers() {
        String betaDeviceToken = getBetaDeviceToken(getContext(), getIdManager().h());
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            map.put(aa.FONT_TOKEN, betaDeviceToken);
        }
        return map;
    }

    @Override // c.a.a.a.q
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // c.a.a.a.q
    public String getVersion() {
        return "1.1.3.61";
    }

    @TargetApi(11)
    boolean isAppPossiblyInstalledByBeta(String str, int i) {
        if (i < 11) {
            return str == null;
        }
        return "io.crash.air".equals(str);
    }

    boolean canCheckForUpdates(c.a.a.a.a.g.f fVar, BuildProperties buildProperties) {
        return (fVar == null || TextUtils.isEmpty(fVar.f309a) || buildProperties == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String str) {
        if (isAppPossiblyInstalledByBeta(str, Build.VERSION.SDK_INT)) {
            f.h().a(TAG, "App was possibly installed by Beta. Getting device token");
            try {
                String strA = this.deviceTokenCache.a(context, this.deviceTokenLoader);
                if ("".equals(strA)) {
                    strA = null;
                }
                return strA;
            } catch (Exception e2) {
                f.h().e(TAG, "Failed to load the Beta device token", e2);
                return null;
            }
        }
        f.h().a(TAG, "App was not installed by Beta. Skipping device token");
        return null;
    }

    private c.a.a.a.a.g.f getBetaSettingsData() {
        w wVarB = c.a.a.a.a.g.q.a().b();
        if (wVarB != null) {
            return wVarB.f354f;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.crashlytics.android.beta.BuildProperties loadBuildProperties(android.content.Context r8) throws java.lang.Throwable {
        /*
            r7 = this;
            r1 = 0
            android.content.res.AssetManager r0 = r8.getAssets()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> L96
            java.lang.String r2 = "crashlytics-build.properties"
            java.io.InputStream r2 = r0.open(r2)     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> L96
            if (r2 == 0) goto Lb9
            com.crashlytics.android.beta.BuildProperties r1 = com.crashlytics.android.beta.BuildProperties.fromPropertiesStream(r2)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Laf
            c.a.a.a.t r0 = c.a.a.a.f.h()     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r3 = "Beta"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            r4.<init>()     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = r1.packageName     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = " build properties: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = r1.versionName     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = " ("
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = r1.versionCode     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = ")"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = " - "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r5 = r1.buildId     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            r0.a(r3, r4)     // Catch: java.lang.Throwable -> Lad java.lang.Exception -> Lb4
            r0 = r1
        L5a:
            if (r2 == 0) goto L5f
            r2.close()     // Catch: java.io.IOException -> L60
        L5f:
            return r0
        L60:
            r1 = move-exception
            c.a.a.a.t r2 = c.a.a.a.f.h()
            java.lang.String r3 = "Beta"
            java.lang.String r4 = "Error closing Beta build properties asset"
            r2.e(r3, r4, r1)
            goto L5f
        L6f:
            r0 = move-exception
            r2 = r1
            r6 = r1
            r1 = r0
            r0 = r6
        L74:
            c.a.a.a.t r3 = c.a.a.a.f.h()     // Catch: java.lang.Throwable -> Lad
            java.lang.String r4 = "Beta"
            java.lang.String r5 = "Error reading Beta build properties"
            r3.e(r4, r5, r1)     // Catch: java.lang.Throwable -> Lad
            if (r2 == 0) goto L5f
            r2.close()     // Catch: java.io.IOException -> L87
            goto L5f
        L87:
            r1 = move-exception
            c.a.a.a.t r2 = c.a.a.a.f.h()
            java.lang.String r3 = "Beta"
            java.lang.String r4 = "Error closing Beta build properties asset"
            r2.e(r3, r4, r1)
            goto L5f
        L96:
            r0 = move-exception
            r2 = r1
        L98:
            if (r2 == 0) goto L9d
            r2.close()     // Catch: java.io.IOException -> L9e
        L9d:
            throw r0
        L9e:
            r1 = move-exception
            c.a.a.a.t r2 = c.a.a.a.f.h()
            java.lang.String r3 = "Beta"
            java.lang.String r4 = "Error closing Beta build properties asset"
            r2.e(r3, r4, r1)
            goto L9d
        Lad:
            r0 = move-exception
            goto L98
        Laf:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L74
        Lb4:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L74
        Lb9:
            r0 = r1
            goto L5a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.Beta.loadBuildProperties(android.content.Context):com.crashlytics.android.beta.BuildProperties");
    }

    String getOverridenSpiEndpoint() {
        return m.b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
