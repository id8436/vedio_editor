package com.google.gdata.client.gtt;

import com.google.gdata.client.Query;
import com.google.gdata.client.authn.oauth.GoogleOAuthParameters;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class TranslationMemoryQuery extends Query {
    private String scope;

    public TranslationMemoryQuery(URL url) {
        super(url);
    }

    public String getScope() {
        return this.scope;
    }

    public void setScope(String str) {
        if (this.scope == null) {
            if (str == null) {
                return;
            }
        } else if (this.scope.equals(str)) {
            return;
        }
        this.scope = str;
        setStringCustomParameter(GoogleOAuthParameters.SCOPE_KEY, str);
    }
}
