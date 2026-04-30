package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.facebook.i.ba;
import com.facebook.i.bf;

/* JADX INFO: compiled from: WebViewLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class ab extends bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2990b;

    public ab(Context context, String str, Bundle bundle) {
        super(context, str, "oauth", bundle);
    }

    public ab a(String str) {
        this.f2989a = str;
        return this;
    }

    public ab a(boolean z) {
        this.f2990b = z;
        return this;
    }

    @Override // com.facebook.i.bf
    public ba a() {
        Bundle bundleE = e();
        bundleE.putString("redirect_uri", "fbconnect://success");
        bundleE.putString(BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, b());
        bundleE.putString("e2e", this.f2989a);
        bundleE.putString("response_type", "token,signed_request");
        bundleE.putString("return_scopes", "true");
        if (this.f2990b) {
            bundleE.putString("auth_type", "rerequest");
        }
        return new ba(c(), "oauth", bundleE, d(), f());
    }
}
