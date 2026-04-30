package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.login.LoginClient;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: LoginLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.a.a f3013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3015c;

    q(Context context, String str) {
        PackageInfo packageInfo;
        this.f3014b = str;
        this.f3013a = com.facebook.a.a.a(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) != null) {
                this.f3015c = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException e2) {
        }
    }

    public String a() {
        return this.f3014b;
    }

    static Bundle a(String str) {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", str);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    public void a(LoginClient.Request request) {
        Bundle bundleA = a(request.e());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("login_behavior", request.b().toString());
            jSONObject.put("request_code", LoginClient.d());
            jSONObject.put("permissions", TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, request.a()));
            jSONObject.put("default_audience", request.c().toString());
            jSONObject.put("isReauthorize", request.f());
            if (this.f3015c != null) {
                jSONObject.put("facebookVersion", this.f3015c);
            }
            bundleA.putString("6_extras", jSONObject.toString());
        } catch (JSONException e2) {
        }
        this.f3013a.a("fb_mobile_login_start", (Double) null, bundleA);
    }

    public void a(String str, Map<String, String> map, m mVar, Map<String, String> map2, Exception exc) {
        Bundle bundleA = a(str);
        if (mVar != null) {
            bundleA.putString("2_result", mVar.a());
        }
        if (exc != null && exc.getMessage() != null) {
            bundleA.putString("5_error_message", exc.getMessage());
        }
        JSONObject jSONObject = !map.isEmpty() ? new JSONObject(map) : null;
        if (map2 != null) {
            JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
            try {
                for (Map.Entry<String, String> entry : map2.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject = jSONObject2;
            } catch (JSONException e2) {
                jSONObject = jSONObject2;
            }
        }
        if (jSONObject != null) {
            bundleA.putString("6_extras", jSONObject.toString());
        }
        this.f3013a.a("fb_mobile_login_complete", (Double) null, bundleA);
    }

    public void a(String str, String str2) {
        Bundle bundleA = a(str);
        bundleA.putString("3_method", str2);
        this.f3013a.a("fb_mobile_login_method_start", (Double) null, bundleA);
    }

    public void a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        Bundle bundleA = a(str);
        if (str3 != null) {
            bundleA.putString("2_result", str3);
        }
        if (str4 != null) {
            bundleA.putString("5_error_message", str4);
        }
        if (str5 != null) {
            bundleA.putString("4_error_code", str5);
        }
        if (map != null && !map.isEmpty()) {
            bundleA.putString("6_extras", new JSONObject(map).toString());
        }
        bundleA.putString("3_method", str2);
        this.f3013a.a("fb_mobile_login_method_complete", (Double) null, bundleA);
    }

    public void b(String str, String str2) {
        a(str, str2, "");
    }

    public void a(String str, String str2, String str3) {
        Bundle bundleA = a("");
        bundleA.putString("2_result", m.ERROR.a());
        bundleA.putString("5_error_message", str2);
        bundleA.putString("3_method", str3);
        this.f3013a.a(str, (Double) null, bundleA);
    }
}
