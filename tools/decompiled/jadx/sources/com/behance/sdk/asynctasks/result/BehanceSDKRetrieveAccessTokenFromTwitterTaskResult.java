package com.behance.sdk.asynctasks.result;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKRetrieveAccessTokenFromTwitterTaskResult {
    private String accessToken;
    private String accessTokenSecret;
    private Exception exception;
    private boolean exceptionOccurred;

    public boolean isExceptionOccurred() {
        return this.exceptionOccurred;
    }

    public void setExceptionOccurred(boolean z) {
        this.exceptionOccurred = z;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public String getAccessTokenSecret() {
        return this.accessTokenSecret;
    }

    public void setAccessTokenSecret(String str) {
        this.accessTokenSecret = str;
    }
}
