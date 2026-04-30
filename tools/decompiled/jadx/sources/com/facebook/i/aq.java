package com.facebook.i;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProfileInformationCache.java */
/* JADX INFO: loaded from: classes2.dex */
class aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap<String, JSONObject> f2303a = new ConcurrentHashMap<>();

    public static JSONObject a(String str) {
        return f2303a.get(str);
    }

    public static void a(String str, JSONObject jSONObject) {
        f2303a.put(str, jSONObject);
    }
}
