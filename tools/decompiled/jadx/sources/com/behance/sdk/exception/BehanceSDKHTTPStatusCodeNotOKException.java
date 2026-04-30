package com.behance.sdk.exception;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKHTTPStatusCodeNotOKException extends BehanceSDKException {
    public static final int GET_USER_PROJECT_LIST_GET_PROJECTS_UNEXPECTED_RESPONSE_CODE = 10001;
    public static final int USER_AUTH_NOT_OK_HTTP_CODE_ERROR = 6001;
    private static final long serialVersionUID = -9092412635513018765L;
    private int httpStatusCode;

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public void setHttpStatusCode(int i) {
        this.httpStatusCode = i;
    }
}
