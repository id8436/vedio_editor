package com.adobe.creativesdk.foundation.adobeinternal.auth;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeSocialLoginParams {
    protected String idp_token = null;
    protected SocialProvider socialProvider;

    public enum SocialProvider {
        GOOGLE,
        FACEBOOK
    }

    public String getIdp_token() {
        return this.idp_token;
    }

    protected void setIdp_token(String str) {
        this.idp_token = str;
    }

    public SocialProvider getProvider() {
        return this.socialProvider;
    }
}
