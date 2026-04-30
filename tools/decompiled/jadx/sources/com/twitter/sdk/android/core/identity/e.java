package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.z;

/* JADX INFO: compiled from: OAuthController.java */
/* JADX INFO: loaded from: classes3.dex */
class e extends com.twitter.sdk.android.core.c<OAuthResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f3894a;

    e(c cVar) {
        this.f3894a = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<OAuthResponse> sVar) {
        Intent intent = new Intent();
        OAuthResponse oAuthResponse = sVar.f4108a;
        intent.putExtra("screen_name", oAuthResponse.f3949b);
        intent.putExtra(BehanceSDKUrlUtil.KEY_USER_ID, oAuthResponse.f3950c);
        intent.putExtra("tk", oAuthResponse.f3948a.f3818b);
        intent.putExtra("ts", oAuthResponse.f3948a.f3819c);
        this.f3894a.f3887a.a(-1, intent);
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        v.h().c("Twitter", "Failed to get access token", ahVar);
        this.f3894a.a(1, new z("Failed to get access token"));
    }
}
