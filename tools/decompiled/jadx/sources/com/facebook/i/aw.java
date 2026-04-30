package com.facebook.i;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
public class aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f2321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f2322d;

    /* JADX INFO: Access modifiers changed from: private */
    public static aw b(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("name");
        if (as.a(strOptString)) {
            return null;
        }
        String[] strArrSplit = strOptString.split("\\|");
        if (strArrSplit.length != 2) {
            return null;
        }
        String str = strArrSplit[0];
        String str2 = strArrSplit[1];
        if (as.a(str) || as.a(str2)) {
            return null;
        }
        String strOptString2 = jSONObject.optString("url");
        return new aw(str, str2, as.a(strOptString2) ? null : Uri.parse(strOptString2), a(jSONObject.optJSONArray("versions")));
    }

    private static int[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            int iOptInt = jSONArray.optInt(i, -1);
            if (iOptInt == -1) {
                String strOptString = jSONArray.optString(i);
                if (!as.a(strOptString)) {
                    try {
                        iOptInt = Integer.parseInt(strOptString);
                    } catch (NumberFormatException e2) {
                        as.a("FacebookSDK", (Exception) e2);
                        iOptInt = -1;
                    }
                }
            }
            iArr[i] = iOptInt;
        }
        return iArr;
    }

    private aw(String str, String str2, Uri uri, int[] iArr) {
        this.f2319a = str;
        this.f2320b = str2;
        this.f2321c = uri;
        this.f2322d = iArr;
    }

    public String a() {
        return this.f2319a;
    }

    public String b() {
        return this.f2320b;
    }
}
