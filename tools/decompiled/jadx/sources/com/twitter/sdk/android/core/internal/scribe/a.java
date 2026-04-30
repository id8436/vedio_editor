package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: DefaultScribeClient.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledExecutorService f3993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> f3994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f3996e;

    public a(Context context, com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> uVar, com.twitter.sdk.android.core.g gVar, com.twitter.sdk.android.core.internal.s sVar, aa aaVar) {
        this(context, com.twitter.sdk.android.core.af.a().c(), uVar, gVar, sVar, aaVar);
    }

    a(Context context, TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> uVar, com.twitter.sdk.android.core.g gVar, com.twitter.sdk.android.core.internal.s sVar, aa aaVar) {
        super(context, d(), aaVar, new ac(c()), twitterAuthConfig, uVar, gVar, sVar);
        this.f3996e = context;
        this.f3994c = uVar;
        this.f3995d = sVar.c();
    }

    public void a(e... eVarArr) {
        for (e eVar : eVarArr) {
            a(eVar, Collections.emptyList());
        }
    }

    public void a(e eVar, List<Object> list) {
        a(ad.a(eVar, "", System.currentTimeMillis(), b(), this.f3995d, list));
    }

    public void a(ab abVar) {
        super.a(abVar, a(a()));
    }

    com.twitter.sdk.android.core.t a() {
        return this.f3994c.b();
    }

    long a(com.twitter.sdk.android.core.t tVar) {
        if (tVar != null) {
            return tVar.b();
        }
        return 0L;
    }

    private String b() {
        return this.f3996e.getResources().getConfiguration().locale.getLanguage();
    }

    private static Gson c() {
        return new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).create();
    }

    private static ScheduledExecutorService d() {
        if (f3993b == null) {
            synchronized (a.class) {
                if (f3993b == null) {
                    f3993b = com.twitter.sdk.android.core.internal.p.b("scribe");
                }
            }
        }
        return f3993b;
    }

    public static aa a(String str, String str2) {
        return new aa(e(), c("https://syndication.twitter.com", ""), "i", "sdk", "", b(str, str2), 100, 600);
    }

    private static boolean e() {
        return !"release".equals("debug");
    }

    static String b(String str, String str2) {
        return "TwitterKit/3.0 (Android " + Build.VERSION.SDK_INT + ") " + str + URIUtil.SLASH + str2;
    }

    static String c(String str, String str2) {
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }
}
