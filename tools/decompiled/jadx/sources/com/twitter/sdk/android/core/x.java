package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import f.av;

/* JADX INFO: compiled from: TwitterApiException.java */
/* JADX INFO: loaded from: classes3.dex */
public class x extends ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.twitter.sdk.android.core.a.a f4127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ai f4128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final av f4130d;

    public x(av avVar) {
        this(avVar, b(avVar), a(avVar), avVar.a());
    }

    x(av avVar, com.twitter.sdk.android.core.a.a aVar, ai aiVar, int i) {
        super(a(i));
        this.f4127a = aVar;
        this.f4128b = aiVar;
        this.f4129c = i;
        this.f4130d = avVar;
    }

    public static ai a(av avVar) {
        return new ai(avVar.b());
    }

    public static com.twitter.sdk.android.core.a.a b(av avVar) {
        try {
            String strP = avVar.e().d().c().clone().p();
            if (!TextUtils.isEmpty(strP)) {
                return a(strP);
            }
        } catch (Exception e2) {
            v.h().c("Twitter", "Unexpected response", e2);
        }
        return null;
    }

    static com.twitter.sdk.android.core.a.a a(String str) {
        try {
            com.twitter.sdk.android.core.a.b bVar = (com.twitter.sdk.android.core.a.b) new GsonBuilder().registerTypeAdapterFactory(new com.twitter.sdk.android.core.a.k()).registerTypeAdapterFactory(new com.twitter.sdk.android.core.a.m()).create().fromJson(str, com.twitter.sdk.android.core.a.b.class);
            if (!bVar.f3821a.isEmpty()) {
                return bVar.f3821a.get(0);
            }
        } catch (JsonSyntaxException e2) {
            v.h().c("Twitter", "Invalid json: " + str, e2);
        }
        return null;
    }

    static String a(int i) {
        return "HTTP request failed, Status: " + i;
    }
}
