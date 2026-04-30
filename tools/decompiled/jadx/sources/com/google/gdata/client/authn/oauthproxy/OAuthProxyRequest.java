package com.google.gdata.client.authn.oauthproxy;

import com.google.gdata.client.authn.oauthproxy.OAuthProxyProtocol;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthProxyRequest extends HashMap<String, String> {
    public static final String DEFAULT_ACCESS_TOKEN_URL = "https://www.google.com/accounts/OAuthGetAccessToken";
    public static final String DEFAULT_AUTHORIZATION_URL = "https://www.google.com/accounts/OAuthAuthorizeToken";
    public static final String DEFAULT_REQUEST_TOKEN_URL = "https://www.google.com/accounts/OAuthGetRequestToken";
    public static final String DEFAULT_SERVICE_NAME = "google";
    public static final String DEFAULT_USE_TOKEN = "always";
    private String requestTokenUrl;
    private String scope;

    public OAuthProxyRequest() {
        setAccessTokenUrl(DEFAULT_ACCESS_TOKEN_URL);
        setAuthorizationUrl(DEFAULT_AUTHORIZATION_URL);
        setRequestTokenUrl(DEFAULT_REQUEST_TOKEN_URL);
        setServiceName("google");
        setUseToken(DEFAULT_USE_TOKEN);
    }

    public String getAcessTokenUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_ACCESS_TOKEN_URL);
    }

    public void setAccessTokenUrl(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_ACCESS_TOKEN_URL, str);
    }

    public String getAuthorizationUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_AUTHORIZATION_URL);
    }

    public void setAuthorizationUrl(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_AUTHORIZATION_URL, str);
    }

    public String getDesiredCallbackUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_DESIRED_CALLBACK_URL);
    }

    public void setDesiredCallbackUrl(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_DESIRED_CALLBACK_URL, str);
    }

    public String getReceivedCallbackUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_RECEIVED_CALLBACK_URL);
    }

    public void setReceivedCallbackUrl(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_RECEIVED_CALLBACK_URL, str);
    }

    public String getRequestTokenUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_REQUEST_TOKEN_URL);
    }

    public void setRequestTokenUrl(String str) {
        this.requestTokenUrl = str;
        storeRequestTokenUrl();
    }

    public String getScope() {
        return this.scope;
    }

    public void setScope(String str) {
        this.scope = str;
        storeRequestTokenUrl();
    }

    public String getServiceName() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_SERVICE_NAME);
    }

    public void setServiceName(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_SERVICE_NAME, str);
    }

    public String getState() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_STATE);
    }

    public void setState(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_STATE, str);
    }

    public String getTokenName() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_TOKEN_NAME);
    }

    public void setTokenName(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_TOKEN_NAME, str);
    }

    public String getUseToken() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_USE_TOKEN);
    }

    public void setUseToken(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_USE_TOKEN, str);
    }

    private void storeRequestTokenUrl() {
        if (this.requestTokenUrl != null && this.scope != null) {
            this.requestTokenUrl += (this.requestTokenUrl.indexOf(63) == -1 ? "?" : "&");
            try {
                this.requestTokenUrl += "scope=" + URLEncoder.encode(this.scope, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        put(OAuthProxyProtocol.Header.X_OAUTH_REQUEST_TOKEN_URL, this.requestTokenUrl);
    }
}
