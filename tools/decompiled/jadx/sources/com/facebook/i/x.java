package com.facebook.i;

import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: FacebookRequestErrorClassification.java */
/* JADX INFO: loaded from: classes2.dex */
public final class x {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static x f2376g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f2377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f2378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f2379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2382f;

    x(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.f2377a = map;
        this.f2378b = map2;
        this.f2379c = map3;
        this.f2380d = str;
        this.f2381e = str2;
        this.f2382f = str3;
    }

    public String a(com.facebook.u uVar) {
        switch (uVar) {
            case OTHER:
                return this.f2380d;
            case LOGIN_RECOVERABLE:
                return this.f2382f;
            case TRANSIENT:
                return this.f2381e;
            default:
                return null;
        }
    }

    public com.facebook.u a(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z) {
            return com.facebook.u.TRANSIENT;
        }
        if (this.f2377a != null && this.f2377a.containsKey(Integer.valueOf(i)) && ((set3 = this.f2377a.get(Integer.valueOf(i))) == null || set3.contains(Integer.valueOf(i2)))) {
            return com.facebook.u.OTHER;
        }
        if (this.f2379c != null && this.f2379c.containsKey(Integer.valueOf(i)) && ((set2 = this.f2379c.get(Integer.valueOf(i))) == null || set2.contains(Integer.valueOf(i2)))) {
            return com.facebook.u.LOGIN_RECOVERABLE;
        }
        if (this.f2378b != null && this.f2378b.containsKey(Integer.valueOf(i)) && ((set = this.f2378b.get(Integer.valueOf(i))) == null || set.contains(Integer.valueOf(i2)))) {
            return com.facebook.u.TRANSIENT;
        }
        return com.facebook.u.OTHER;
    }

    public static synchronized x a() {
        if (f2376g == null) {
            f2376g = b();
        }
        return f2376g;
    }

    private static x b() {
        return new x(null, new y(), new z(), null, null, null);
    }

    private static Map<Integer, Set<Integer>> a(JSONObject jSONObject) {
        int iOptInt;
        HashSet hashSet;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("items");
        if (jSONArrayOptJSONArray.length() == 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && (iOptInt = jSONObjectOptJSONObject.optInt(ProjectHostingService.PROJECTHOSTING_SERVICE)) != 0) {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("subcodes");
                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                    hashSet = null;
                } else {
                    HashSet hashSet2 = new HashSet();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        int iOptInt2 = jSONArrayOptJSONArray2.optInt(i2);
                        if (iOptInt2 != 0) {
                            hashSet2.add(Integer.valueOf(iOptInt2));
                        }
                    }
                    hashSet = hashSet2;
                }
                map.put(Integer.valueOf(iOptInt), hashSet);
            }
        }
        return map;
    }

    public static x a(JSONArray jSONArray) {
        String strOptString;
        if (jSONArray == null) {
            return null;
        }
        String strOptString2 = null;
        String strOptString3 = null;
        String strOptString4 = null;
        Map<Integer, Set<Integer>> mapA = null;
        Map<Integer, Set<Integer>> mapA2 = null;
        Map<Integer, Set<Integer>> mapA3 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString("name")) != null) {
                if (strOptString.equalsIgnoreCase("other")) {
                    strOptString4 = jSONObjectOptJSONObject.optString("recovery_message", null);
                    mapA3 = a(jSONObjectOptJSONObject);
                } else if (strOptString.equalsIgnoreCase("transient")) {
                    strOptString3 = jSONObjectOptJSONObject.optString("recovery_message", null);
                    mapA2 = a(jSONObjectOptJSONObject);
                } else if (strOptString.equalsIgnoreCase("login_recoverable")) {
                    strOptString2 = jSONObjectOptJSONObject.optString("recovery_message", null);
                    mapA = a(jSONObjectOptJSONObject);
                }
            }
        }
        return new x(mapA3, mapA2, mapA, strOptString4, strOptString3, strOptString2);
    }
}
