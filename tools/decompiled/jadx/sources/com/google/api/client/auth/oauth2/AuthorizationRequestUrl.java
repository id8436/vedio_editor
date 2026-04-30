package com.google.api.client.auth.oauth2;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.gdata.client.authn.oauth.GoogleOAuthParameters;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class AuthorizationRequestUrl extends GenericUrl {

    @Key(BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID)
    private String clientId;

    @Key("redirect_uri")
    private String redirectUri;

    @Key("response_type")
    private String responseTypes;

    @Key(GoogleOAuthParameters.SCOPE_KEY)
    private String scopes;

    @Key
    private String state;

    public AuthorizationRequestUrl(String str, String str2, Collection<String> collection) {
        super(str);
        Preconditions.checkArgument(getFragment() == null);
        setClientId(str2);
        setResponseTypes(collection);
    }

    public final String getResponseTypes() {
        return this.responseTypes;
    }

    public AuthorizationRequestUrl setResponseTypes(Collection<String> collection) {
        this.responseTypes = Joiner.on(' ').join(collection);
        return this;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public AuthorizationRequestUrl setRedirectUri(String str) {
        this.redirectUri = str;
        return this;
    }

    public final String getScopes() {
        return this.scopes;
    }

    public AuthorizationRequestUrl setScopes(Collection<String> collection) {
        this.scopes = (collection == null || !collection.iterator().hasNext()) ? null : Joiner.on(' ').join(collection);
        return this;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public AuthorizationRequestUrl setClientId(String str) {
        this.clientId = (String) Preconditions.checkNotNull(str);
        return this;
    }

    public final String getState() {
        return this.state;
    }

    public AuthorizationRequestUrl setState(String str) {
        this.state = str;
        return this;
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public AuthorizationRequestUrl set(String str, Object obj) {
        return (AuthorizationRequestUrl) super.set(str, obj);
    }

    @Override // com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public AuthorizationRequestUrl clone() {
        return (AuthorizationRequestUrl) super.clone();
    }
}
