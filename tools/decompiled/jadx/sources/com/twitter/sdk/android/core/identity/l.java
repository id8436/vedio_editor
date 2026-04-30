package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.gdata.data.appsforyourdomain.Login;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.internal.scribe.an;
import com.twitter.sdk.android.core.u;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.z;

/* JADX INFO: compiled from: TwitterAuthClient.java */
/* JADX INFO: loaded from: classes3.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final af f3897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f3898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final u<aj> f3899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final TwitterAuthConfig f3900d;

    public int a() {
        return this.f3900d.c();
    }

    public l() {
        this(af.a(), af.a().c(), af.a().f(), m.f3901a);
    }

    l(af afVar, TwitterAuthConfig twitterAuthConfig, u<aj> uVar, b bVar) {
        this.f3897a = afVar;
        this.f3898b = bVar;
        this.f3900d = twitterAuthConfig;
        this.f3899c = uVar;
    }

    public void a(Activity activity, com.twitter.sdk.android.core.c<aj> cVar) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        }
        if (cVar == null) {
            throw new IllegalArgumentException("Callback must not be null.");
        }
        if (activity.isFinishing()) {
            v.h().c("Twitter", "Cannot authorize, activity is finishing.", null);
        } else {
            b(activity, cVar);
        }
    }

    private void b(Activity activity, com.twitter.sdk.android.core.c<aj> cVar) {
        c();
        n nVar = new n(this.f3899c, cVar);
        if (!a(activity, nVar) && !b(activity, nVar)) {
            nVar.failure(new z("Authorize failed."));
        }
    }

    private boolean a(Activity activity, n nVar) {
        if (!k.a((Context) activity)) {
            return false;
        }
        v.h().a("Twitter", "Using SSO");
        return this.f3898b.a(activity, new k(this.f3900d, nVar, this.f3900d.c()));
    }

    private boolean b(Activity activity, n nVar) {
        v.h().a("Twitter", "Using OAuth");
        return this.f3898b.a(activity, new g(this.f3900d, nVar, this.f3900d.c()));
    }

    private void c() {
        com.twitter.sdk.android.core.internal.scribe.a aVarB = b();
        if (aVarB != null) {
            aVarB.a(new com.twitter.sdk.android.core.internal.scribe.f().a(c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE).b(Login.EXTENSION_LOCAL_NAME).c("").d("").e("").f("impression").a());
        }
    }

    public void a(int i, int i2, Intent intent) {
        v.h().a("Twitter", "onActivityResult called with " + i + " " + i2);
        if (!this.f3898b.b()) {
            v.h().c("Twitter", "Authorize not in progress", null);
            return;
        }
        a aVarC = this.f3898b.c();
        if (aVarC != null && aVarC.a(i, i2, intent)) {
            this.f3898b.a();
        }
    }

    protected com.twitter.sdk.android.core.internal.scribe.a b() {
        return an.a();
    }
}
