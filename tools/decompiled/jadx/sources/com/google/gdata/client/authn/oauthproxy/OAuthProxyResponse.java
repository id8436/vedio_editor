package com.google.gdata.client.authn.oauthproxy;

import com.google.common.collect.Lists;
import com.google.gdata.client.authn.oauthproxy.OAuthProxyProtocol;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthProxyResponse extends HashMap<String, String> {
    public OAuthProxyResponse() {
    }

    public OAuthProxyResponse(Map<String, List<String>> map) {
        ArrayList arrayListNewArrayList = Lists.newArrayList(OAuthProxyProtocol.Header.X_OAUTH_APPROVAL_URL, OAuthProxyProtocol.Header.X_OAUTH_ERROR, OAuthProxyProtocol.Header.X_OAUTH_ERROR_TEXT, OAuthProxyProtocol.Header.X_OAUTH_STATE);
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (arrayListNewArrayList.contains(entry.getKey())) {
                put(entry.getKey(), entry.getValue().get(0));
            }
        }
    }

    public String getApprovalUrl() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_APPROVAL_URL);
    }

    public void setApprovalUrl(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_APPROVAL_URL, str);
    }

    public String getError() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_ERROR);
    }

    public void setError(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_ERROR, str);
    }

    public String getErrorText() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_ERROR_TEXT);
    }

    public void setErrorText(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_ERROR_TEXT, str);
    }

    public String getState() {
        return get(OAuthProxyProtocol.Header.X_OAUTH_STATE);
    }

    public void setState(String str) {
        put(OAuthProxyProtocol.Header.X_OAUTH_STATE, str);
    }
}
