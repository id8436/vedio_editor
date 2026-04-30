package com.google.gdata.client.authn.oauth;

import com.google.gdata.client.authn.oauthproxy.OAuthProxyRequest;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleOAuthHelper extends OAuthHelper {
    private static String requestTokenUrl = OAuthProxyRequest.DEFAULT_REQUEST_TOKEN_URL;
    private static String userAuthorizationUrl = OAuthProxyRequest.DEFAULT_AUTHORIZATION_URL;
    private static String accessTokenUrl = OAuthProxyRequest.DEFAULT_ACCESS_TOKEN_URL;
    private static String revokeTokenUrl = "https://www.google.com/accounts/AuthSubRevokeToken";

    public GoogleOAuthHelper(OAuthSigner oAuthSigner) {
        super(requestTokenUrl, userAuthorizationUrl, accessTokenUrl, revokeTokenUrl, oAuthSigner);
    }

    GoogleOAuthHelper(OAuthSigner oAuthSigner, OAuthHttpClient oAuthHttpClient) {
        super(requestTokenUrl, userAuthorizationUrl, accessTokenUrl, revokeTokenUrl, oAuthSigner, oAuthHttpClient);
    }
}
