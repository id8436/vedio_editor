package com.adobe.creativesdk.foundation.adobeinternal.auth;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeSocialLoginParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeFacebookLoginParams extends AdobeSocialLoginParams {
    public AdobeFacebookLoginParams(String str) {
        this.socialProvider = AdobeSocialLoginParams.SocialProvider.FACEBOOK;
        setIdp_token(str);
    }
}
