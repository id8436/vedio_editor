package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.internal.z;
import d.at;
import f.aw;
import f.ay;

/* JADX INFO: compiled from: OAuthService.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final af f3965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z f3966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aw f3968d = new ay().a(d().a()).a(new at().a(new j(this)).a(com.twitter.sdk.android.core.internal.a.e.a()).a()).a(f.a.a.a.a()).a();

    i(af afVar, z zVar) {
        this.f3965a = afVar;
        this.f3966b = zVar;
        this.f3967c = z.a("TwitterAndroidSDK", afVar.b());
    }

    protected af c() {
        return this.f3965a;
    }

    protected z d() {
        return this.f3966b;
    }

    protected String e() {
        return this.f3967c;
    }

    protected aw f() {
        return this.f3968d;
    }
}
