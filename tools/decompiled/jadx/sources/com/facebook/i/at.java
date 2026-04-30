package com.facebook.i;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
final class at implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f2316c;

    at(Context context, String str, String str2) {
        this.f2314a = context;
        this.f2315b = str;
        this.f2316c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject;
        SharedPreferences sharedPreferences = this.f2314a.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
        String string = sharedPreferences.getString(this.f2315b, null);
        if (!as.a(string)) {
            try {
                jSONObject = new JSONObject(string);
            } catch (JSONException e2) {
                as.a("FacebookSDK", (Exception) e2);
                jSONObject = null;
            }
            if (jSONObject != null) {
                as.b(this.f2316c, jSONObject);
            }
        }
        JSONObject jSONObjectF = as.f(this.f2316c);
        if (jSONObjectF != null) {
            as.b(this.f2316c, jSONObjectF);
            sharedPreferences.edit().putString(this.f2315b, jSONObjectF.toString()).apply();
        }
        as.f2309c.set(false);
    }
}
