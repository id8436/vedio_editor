package com.google.gdata.util;

import com.google.gdata.client.authn.oauthproxy.OAuthProxyResponse;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthProxyException extends ServiceException {
    private final OAuthProxyResponse response;

    public OAuthProxyException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        this.response = super.getOAuthProxyResponse();
    }

    public String getState() {
        return this.response.getState();
    }

    public String getApprovalUrl() {
        return this.response.getApprovalUrl();
    }

    public String getError() {
        return this.response.getError();
    }

    public String getErrorText() {
        return this.response.getErrorText();
    }
}
