package com.facebook.i;

import android.util.Log;
import com.google.gdata.data.photos.TagData;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes2.dex */
public class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f2283a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.av f2284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private StringBuilder f2286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2287e = 3;

    public static synchronized void a(String str, String str2) {
        f2283a.put(str, str2);
    }

    public static synchronized void a(String str) {
        if (!com.facebook.w.a(com.facebook.av.INCLUDE_ACCESS_TOKENS)) {
            a(str, "ACCESS_TOKEN_REMOVED");
        }
    }

    public static void a(com.facebook.av avVar, String str, String str2) {
        a(avVar, 3, str, str2);
    }

    public static void a(com.facebook.av avVar, String str, String str2, Object... objArr) {
        if (com.facebook.w.a(avVar)) {
            a(avVar, 3, str, String.format(str2, objArr));
        }
    }

    public static void a(com.facebook.av avVar, int i, String str, String str2, Object... objArr) {
        if (com.facebook.w.a(avVar)) {
            a(avVar, i, str, String.format(str2, objArr));
        }
    }

    public static void a(com.facebook.av avVar, int i, String str, String str2) {
        if (com.facebook.w.a(avVar)) {
            String strD = d(str2);
            if (!str.startsWith("FacebookSDK.")) {
                str = "FacebookSDK." + str;
            }
            Log.println(i, str, strD);
            if (avVar == com.facebook.av.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    private static synchronized String d(String str) {
        for (Map.Entry<String, String> entry : f2283a.entrySet()) {
            str = str.replace(entry.getKey(), entry.getValue());
        }
        return str;
    }

    public ag(com.facebook.av avVar, String str) {
        az.a(str, TagData.KIND);
        this.f2284b = avVar;
        this.f2285c = "FacebookSDK." + str;
        this.f2286d = new StringBuilder();
    }

    public void a() {
        b(this.f2286d.toString());
        this.f2286d = new StringBuilder();
    }

    public void b(String str) {
        a(this.f2284b, this.f2287e, this.f2285c, str);
    }

    public void c(String str) {
        if (b()) {
            this.f2286d.append(str);
        }
    }

    public void a(String str, Object... objArr) {
        if (b()) {
            this.f2286d.append(String.format(str, objArr));
        }
    }

    public void a(String str, Object obj) {
        a("  %s:\t%s\n", str, obj);
    }

    private boolean b() {
        return com.facebook.w.a(this.f2284b);
    }
}
