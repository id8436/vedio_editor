package com.google.gdata.client.authn.oauth;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleOAuthParameters extends OAuthParameters {
    public static final String SCOPE_KEY = "scope";

    public String getScope() {
        return get(SCOPE_KEY, this.baseParameters);
    }

    public void setScope(String str) {
        put(SCOPE_KEY, str, this.baseParameters);
    }

    public boolean checkScopeExists() {
        return checkExists(SCOPE_KEY, this.baseParameters);
    }

    public void assertScopeExists() throws OAuthException {
        assertExists(SCOPE_KEY, this.baseParameters);
    }

    @Override // com.google.gdata.client.authn.oauth.OAuthParameters
    public void reset() {
        super.reset();
        remove(SCOPE_KEY, this.baseParameters);
    }
}
