package com.facebook;

import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProfileCache.java */
/* JADX INFO: loaded from: classes2.dex */
final class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f1798a = w.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    ay() {
    }

    Profile a() {
        String string = this.f1798a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e2) {
            }
        }
        return null;
    }

    void a(Profile profile) {
        com.facebook.i.az.a(profile, "profile");
        JSONObject jSONObjectC = profile.c();
        if (jSONObjectC != null) {
            this.f1798a.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObjectC.toString()).apply();
        }
    }

    void b() {
        this.f1798a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
