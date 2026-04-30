package com.facebook.i;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: BundleJSONConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, q> f2363a = new HashMap();

    static {
        f2363a.put(Boolean.class, new j());
        f2363a.put(Integer.class, new k());
        f2363a.put(Long.class, new l());
        f2363a.put(Double.class, new m());
        f2363a.put(String.class, new n());
        f2363a.put(String[].class, new o());
        f2363a.put(JSONArray.class, new p());
    }

    public static Bundle a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, a((JSONObject) obj));
                } else {
                    q qVar = f2363a.get(obj.getClass());
                    if (qVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    qVar.a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}
