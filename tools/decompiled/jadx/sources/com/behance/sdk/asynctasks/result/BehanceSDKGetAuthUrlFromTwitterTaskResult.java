package com.behance.sdk.asynctasks.result;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetAuthUrlFromTwitterTaskResult {
    private String authURL;
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

    public String getAuthURL() {
        return this.authURL;
    }

    public void setAuthURL(String str) {
        this.authURL = str;
    }
}
