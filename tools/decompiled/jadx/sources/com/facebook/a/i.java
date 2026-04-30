package com.facebook.a;

import android.os.Bundle;
import com.facebook.av;
import com.facebook.i.ag;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final HashSet<String> f1710c = new HashSet<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f1711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1712b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1713d;

    public i(String str, String str2, Double d2, Bundle bundle, boolean z) {
        try {
            a(str2);
            this.f1713d = str2;
            this.f1712b = z;
            this.f1711a = new JSONObject();
            this.f1711a.put("_eventName", str2);
            this.f1711a.put("_logTime", System.currentTimeMillis() / 1000);
            this.f1711a.put("_ui", str);
            if (d2 != null) {
                this.f1711a.put("_valueToSum", d2.doubleValue());
            }
            if (this.f1712b) {
                this.f1711a.put("_implicitlyLogged", "1");
            }
            if (bundle != null) {
                for (String str3 : bundle.keySet()) {
                    a(str3);
                    Object obj = bundle.get(str3);
                    if (!(obj instanceof String) && !(obj instanceof Number)) {
                        throw new com.facebook.q(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str3));
                    }
                    this.f1711a.put(str3, obj.toString());
                }
            }
            if (!this.f1712b) {
                ag.a(av.APP_EVENTS, "AppEvents", "Created app event '%s'", this.f1711a.toString());
            }
        } catch (com.facebook.q e2) {
            ag.a(av.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", e2.toString());
            this.f1711a = null;
        } catch (JSONException e3) {
            ag.a(av.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e3.toString());
            this.f1711a = null;
        }
    }

    public boolean a() {
        return this.f1712b;
    }

    public JSONObject b() {
        return this.f1711a;
    }

    private void a(String str) throws com.facebook.q {
        boolean zContains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            if (str == null) {
                str = "<None Provided>";
            }
            throw new com.facebook.q(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str, 40));
        }
        synchronized (f1710c) {
            zContains = f1710c.contains(str);
        }
        if (!zContains) {
            if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                synchronized (f1710c) {
                    f1710c.add(str);
                }
                return;
            }
            throw new com.facebook.q(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f1711a.optString("_eventName"), Boolean.valueOf(this.f1712b), this.f1711a.toString());
    }
}
