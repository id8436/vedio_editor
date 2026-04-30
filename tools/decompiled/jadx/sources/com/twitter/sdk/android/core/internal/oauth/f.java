package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.v;

/* JADX INFO: compiled from: OAuth2Service.java */
/* JADX INFO: loaded from: classes3.dex */
class f extends com.twitter.sdk.android.core.c<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ OAuth2Token f3963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f3964b;

    f(e eVar, OAuth2Token oAuth2Token) {
        this.f3964b = eVar;
        this.f3963a = oAuth2Token;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<a> sVar) {
        this.f3964b.f3961a.success(new s(new GuestAuthToken(this.f3963a.c(), this.f3963a.d(), sVar.f4108a.f3951a), null));
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        v.h().c("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", ahVar);
        this.f3964b.f3961a.failure(ahVar);
    }
}
