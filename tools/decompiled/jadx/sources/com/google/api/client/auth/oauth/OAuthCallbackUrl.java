package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
@Beta
public class OAuthCallbackUrl extends GenericUrl {

    @Key(com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_TOKEN_KEY)
    public String token;

    @Key(com.google.gdata.client.authn.oauth.OAuthParameters.OAUTH_VERIFIER_KEY)
    public String verifier;

    public OAuthCallbackUrl(String str) {
        super(str);
    }
}
