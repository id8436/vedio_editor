package com.adobe.creativesdk.foundation.adobeinternal.auth;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeSocialLoginParams;

/* JADX INFO: loaded from: classes.dex */
public class AdobeGoogleLoginParams extends AdobeSocialLoginParams {
    public AdobeGoogleLoginParams(String str) {
        this.socialProvider = AdobeSocialLoginParams.SocialProvider.GOOGLE;
        setIdp_token(str);
    }
}
