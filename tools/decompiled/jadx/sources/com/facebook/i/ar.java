package com.facebook.i;

import java.util.Collection;

/* JADX INFO: compiled from: ServerProtocol.java */
/* JADX INFO: loaded from: classes2.dex */
public final class ar {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f2306c = ar.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Collection<String> f2304a = as.a("service_disabled", "AndroidAuthKillSwitchException");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Collection<String> f2305b = as.a("access_denied", "OAuthAccessDeniedException");

    public static final String a() {
        return String.format("m.%s", com.facebook.w.e());
    }

    public static final String b() {
        return String.format("https://graph.%s", com.facebook.w.e());
    }

    public static final String c() {
        return String.format("https://graph-video.%s", com.facebook.w.e());
    }

    public static final String d() {
        return "v2.4";
    }
}
