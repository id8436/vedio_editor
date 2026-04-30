package com.behance.sdk.exception;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKException extends Exception {
    private static final long serialVersionUID = 4460485212019462046L;
    private int errorCode;

    public BehanceSDKException() {
    }

    public BehanceSDKException(String str) {
        super(str);
    }

    public BehanceSDKException(String str, Throwable th) {
        super(str, th);
    }

    public BehanceSDKException(Throwable th) {
        super(th);
    }

    public BehanceSDKException(int i) {
        this.errorCode = i;
    }

    public BehanceSDKException(int i, String str, Throwable th) {
        super(str, th);
        this.errorCode = i;
    }

    public BehanceSDKException(int i, String str) {
        super(str);
        this.errorCode = i;
    }

    public BehanceSDKException(int i, Throwable th) {
        super(th);
        this.errorCode = i;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }
}
