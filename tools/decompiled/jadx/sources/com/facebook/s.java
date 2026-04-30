package com.facebook;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: FacebookRequestError.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final v f3035a = new v(200, 299);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f3036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f3040f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f3041g;
    private final String h;
    private final String i;
    private final String j;
    private final JSONObject k;
    private final JSONObject l;
    private final Object m;
    private final HttpURLConnection n;
    private final q o;

    private s(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, q qVar) {
        this.f3037c = i;
        this.f3038d = i2;
        this.f3039e = i3;
        this.f3040f = str;
        this.f3041g = str2;
        this.l = jSONObject;
        this.k = jSONObject2;
        this.m = obj;
        this.n = httpURLConnection;
        this.h = str3;
        this.i = str4;
        boolean z2 = false;
        if (qVar != null) {
            this.o = qVar;
            z2 = true;
        } else {
            this.o = new ac(this, str2);
        }
        com.facebook.i.x xVarG = g();
        this.f3036b = z2 ? u.OTHER : xVarG.a(i2, i3, z);
        this.j = xVarG.a(this.f3036b);
    }

    s(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof q ? (q) exc : new q(exc));
    }

    public s(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    public int a() {
        return this.f3037c;
    }

    public int b() {
        return this.f3038d;
    }

    public String c() {
        return this.f3040f;
    }

    public String d() {
        return this.f3041g != null ? this.f3041g : this.o.getLocalizedMessage();
    }

    public String e() {
        return this.i;
    }

    public q f() {
        return this.o;
    }

    public String toString() {
        return "{HttpStatus: " + this.f3037c + ", errorCode: " + this.f3038d + ", errorType: " + this.f3040f + ", errorMessage: " + d() + "}";
    }

    static s a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        try {
            if (jSONObject.has(ProjectHostingService.PROJECTHOSTING_SERVICE)) {
                int i = jSONObject.getInt(ProjectHostingService.PROJECTHOSTING_SERVICE);
                Object objA = com.facebook.i.as.a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT");
                if (objA != null && (objA instanceof JSONObject)) {
                    JSONObject jSONObject2 = (JSONObject) objA;
                    String strOptString = null;
                    String strOptString2 = null;
                    String strOptString3 = null;
                    String strOptString4 = null;
                    boolean zOptBoolean = false;
                    int iOptInt = -1;
                    int iOptInt2 = -1;
                    boolean z = false;
                    if (jSONObject2.has(Adobe360Constants.kAdobe360SatusError)) {
                        JSONObject jSONObject3 = (JSONObject) com.facebook.i.as.a(jSONObject2, Adobe360Constants.kAdobe360SatusError, (String) null);
                        strOptString = jSONObject3.optString("type", null);
                        strOptString2 = jSONObject3.optString("message", null);
                        iOptInt = jSONObject3.optInt(ProjectHostingService.PROJECTHOSTING_SERVICE, -1);
                        iOptInt2 = jSONObject3.optInt("error_subcode", -1);
                        strOptString3 = jSONObject3.optString("error_user_msg", null);
                        strOptString4 = jSONObject3.optString("error_user_title", null);
                        zOptBoolean = jSONObject3.optBoolean("is_transient", false);
                        z = true;
                    } else if (jSONObject2.has("error_code") || jSONObject2.has("error_msg") || jSONObject2.has("error_reason")) {
                        strOptString = jSONObject2.optString("error_reason", null);
                        strOptString2 = jSONObject2.optString("error_msg", null);
                        iOptInt = jSONObject2.optInt("error_code", -1);
                        iOptInt2 = jSONObject2.optInt("error_subcode", -1);
                        z = true;
                    }
                    if (z) {
                        return new s(i, iOptInt, iOptInt2, strOptString, strOptString2, strOptString4, strOptString3, zOptBoolean, jSONObject2, jSONObject, obj, httpURLConnection, null);
                    }
                }
                if (!f3035a.a(i)) {
                    return new s(i, -1, -1, null, null, null, null, false, jSONObject.has(TtmlNode.TAG_BODY) ? (JSONObject) com.facebook.i.as.a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
                }
            }
        } catch (JSONException e2) {
        }
        return null;
    }

    static synchronized com.facebook.i.x g() {
        com.facebook.i.ax axVarC;
        axVarC = com.facebook.i.as.c(w.i());
        return axVarC == null ? com.facebook.i.x.a() : axVarC.b();
    }
}
