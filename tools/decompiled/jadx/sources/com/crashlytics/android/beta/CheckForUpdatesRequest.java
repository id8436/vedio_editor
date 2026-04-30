package com.crashlytics.android.beta;

import c.a.a.a.a.b.a;
import c.a.a.a.a.e.d;
import c.a.a.a.a.e.e;
import c.a.a.a.a.e.m;
import c.a.a.a.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class CheckForUpdatesRequest extends a {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String INSTANCE = "instance";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    public CheckForUpdatesRequest(q qVar, String str, String str2, m mVar, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(qVar, str, str2, mVar, d.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.crashlytics.android.beta.CheckForUpdatesResponse invoke(java.lang.String r8, java.lang.String r9, com.crashlytics.android.beta.BuildProperties r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.CheckForUpdatesRequest.invoke(java.lang.String, java.lang.String, com.crashlytics.android.beta.BuildProperties):com.crashlytics.android.beta.CheckForUpdatesResponse");
    }

    private e applyHeadersTo(e eVar, String str, String str2) {
        return eVar.a("Accept", "application/json").a("User-Agent", a.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).a(a.HEADER_DEVELOPER_TOKEN, a.CLS_ANDROID_SDK_DEVELOPER_TOKEN).a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, this.kit.getVersion()).a(a.HEADER_API_KEY, str).a(a.HEADER_D, str2);
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap map = new HashMap();
        map.put(BUILD_VERSION, buildProperties.versionCode);
        map.put(DISPLAY_VERSION, buildProperties.versionName);
        map.put(INSTANCE, buildProperties.buildId);
        map.put("source", BETA_SOURCE);
        return map;
    }
}
