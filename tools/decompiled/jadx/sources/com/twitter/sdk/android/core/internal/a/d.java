package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.t;
import d.ad;
import d.ai;
import d.aj;
import d.al;
import d.am;
import d.ax;
import d.az;
import d.bd;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: OAuth1aInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public class d implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t<? extends TwitterAuthToken> f3910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final TwitterAuthConfig f3911b;

    public d(t<? extends TwitterAuthToken> tVar, TwitterAuthConfig twitterAuthConfig) {
        this.f3910a = tVar;
        this.f3911b = twitterAuthConfig;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        ax axVarA = amVar.a();
        ax axVarB = axVarA.e().a(a(axVarA.a())).b();
        return amVar.a(axVarB.e().a("Authorization", a(axVarB)).b());
    }

    ai a(ai aiVar) {
        aj ajVarE = aiVar.p().e(null);
        int iM = aiVar.m();
        for (int i = 0; i < iM; i++) {
            ajVarE.b(f.c(aiVar.a(i)), f.c(aiVar.b(i)));
        }
        return ajVarE.c();
    }

    String a(ax axVar) throws IOException {
        return new com.twitter.sdk.android.core.internal.oauth.b().a(this.f3911b, (TwitterAuthToken) this.f3910a.a(), null, axVar.b(), axVar.a().toString(), b(axVar));
    }

    Map<String, String> b(ax axVar) throws IOException {
        HashMap map = new HashMap();
        if ("POST".equals(axVar.b().toUpperCase(Locale.US))) {
            az azVarD = axVar.d();
            if (azVarD instanceof ad) {
                ad adVar = (ad) azVarD;
                for (int i = 0; i < adVar.a(); i++) {
                    map.put(adVar.a(i), adVar.c(i));
                }
            }
        }
        return map;
    }
}
