package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class NoLongerAvailableException extends ServiceException {
    public NoLongerAvailableException() {
        super("No longer available");
        initResponseCode();
    }

    public NoLongerAvailableException(String str) {
        super(str);
        initResponseCode();
    }

    public NoLongerAvailableException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public NoLongerAvailableException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public NoLongerAvailableException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public NoLongerAvailableException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(410);
    }
}
