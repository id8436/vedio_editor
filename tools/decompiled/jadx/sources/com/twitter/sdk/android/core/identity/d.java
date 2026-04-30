package com.twitter.sdk.android.core.identity;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.z;

/* JADX INFO: compiled from: OAuthController.java */
/* JADX INFO: loaded from: classes3.dex */
class d extends com.twitter.sdk.android.core.c<OAuthResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f3893a;

    d(c cVar) {
        this.f3893a = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<OAuthResponse> sVar) {
        this.f3893a.f3888b = sVar.f4108a.f3948a;
        String strA = this.f3893a.f3892f.a(this.f3893a.f3888b);
        v.h().a("Twitter", "Redirecting user to web view to complete authorization flow");
        this.f3893a.a(this.f3893a.f3890d, new i(this.f3893a.f3892f.a(this.f3893a.f3891e), this.f3893a), strA, new h());
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        v.h().c("Twitter", "Failed to get request token", ahVar);
        this.f3893a.a(1, new z("Failed to get request token"));
    }
}
