package com.behance.sdk.exception;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectParseException extends Exception {
    private static final long serialVersionUID = 3300493169515637398L;

    public BehanceSDKProjectParseException(int i) {
        super(String.valueOf(i));
    }

    public BehanceSDKProjectParseException(int i, Throwable th) {
        super(String.valueOf(i), th);
    }

    public BehanceSDKProjectParseException(String str, Throwable th) {
        super(str, th);
    }
}
