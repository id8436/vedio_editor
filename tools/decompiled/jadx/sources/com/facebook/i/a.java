package com.facebook.i;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppEventsLoggerUtility.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<c, String> f2273a = new b();

    public static JSONObject a(c cVar, d dVar, String str, boolean z, Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, f2273a.get(cVar));
        as.a(jSONObject, dVar, str, z);
        try {
            as.a(jSONObject, context);
        } catch (Exception e2) {
            ag.a(com.facebook.av.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e2.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
