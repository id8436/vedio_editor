package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.v;

/* JADX INFO: compiled from: OAuth2Service.java */
/* JADX INFO: loaded from: classes3.dex */
class e extends com.twitter.sdk.android.core.c<OAuth2Token> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.twitter.sdk.android.core.c f3961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ OAuth2Service f3962b;

    e(OAuth2Service oAuth2Service, com.twitter.sdk.android.core.c cVar) {
        this.f3962b = oAuth2Service;
        this.f3961a = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<OAuth2Token> sVar) {
        OAuth2Token oAuth2Token = sVar.f4108a;
        this.f3962b.a(new f(this, oAuth2Token), oAuth2Token);
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        v.h().c("Twitter", "Failed to get app auth token", ahVar);
        if (this.f3961a != null) {
            this.f3961a.failure(ahVar);
        }
    }
}
