package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String authURL;
    private String consumerKey;
    private String consumerSecret;

    public String getAuthURL() {
        return this.authURL;
    }

    public void setAuthURL(String str) {
        this.authURL = str;
    }

    public String getConsumerKey() {
        return this.consumerKey;
    }

    public void setConsumerKey(String str) {
        this.consumerKey = str;
    }

    public String getConsumerSecret() {
        return this.consumerSecret;
    }

    public void setConsumerSecret(String str) {
        this.consumerSecret = str;
    }
}
