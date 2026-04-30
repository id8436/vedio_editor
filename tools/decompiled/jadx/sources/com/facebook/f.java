package com.facebook;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AccessTokenManager.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Set f2233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Set f2234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ d f2235d;

    f(d dVar, AtomicBoolean atomicBoolean, Set set, Set set2) {
        this.f2235d = dVar;
        this.f2232a = atomicBoolean;
        this.f2233b = set;
        this.f2234c = set2;
    }

    @Override // com.facebook.ai
    public void a(as asVar) {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectB = asVar.b();
        if (jSONObjectB != null && (jSONArrayOptJSONArray = jSONObjectB.optJSONArray("data")) != null) {
            this.f2232a.set(true);
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("permission");
                    String strOptString2 = jSONObjectOptJSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                    if (!com.facebook.i.as.a(strOptString) && !com.facebook.i.as.a(strOptString2)) {
                        String lowerCase = strOptString2.toLowerCase(Locale.US);
                        if (lowerCase.equals("granted")) {
                            this.f2233b.add(strOptString);
                        } else if (lowerCase.equals("declined")) {
                            this.f2234c.add(strOptString);
                        } else {
                            Log.w("AccessTokenManager", "Unexpected status: " + lowerCase);
                        }
                    }
                }
            }
        }
    }
}
