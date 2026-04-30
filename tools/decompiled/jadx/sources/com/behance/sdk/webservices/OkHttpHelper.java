package com.behance.sdk.webservices;

import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.webservices.apis.BehanceUniversalInterceptor;
import com.google.gson.Gson;
import d.ar;
import d.at;
import d.ax;
import d.g;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpHelper {
    private static final String HEADER_ACCESS_TOKEN_NAME = "Authorization";
    private static final String HEADER_ACCESS_TOKEN_VALUE_PREFIX = "Bearer ";
    private static final ar okHttpClient = new at().a(new BehanceUniversalInterceptor()).a();
    private static final Gson gson = new Gson();

    public static g call(ax axVar) {
        return okHttpClient.a(axVar);
    }

    public static g callWithAuth(ax axVar) {
        return call(axVar.e().a("Authorization", HEADER_ACCESS_TOKEN_VALUE_PREFIX + BehanceSDKUserManager.getInstance().getAccessToken()).b());
    }

    public static Gson getGson() {
        return gson;
    }
}
