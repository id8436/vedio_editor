package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public class NotAcceptableException extends ServiceException {
    public NotAcceptableException() {
        super(HttpStatus.Not_Acceptable);
        initResponseCode();
    }

    public NotAcceptableException(String str) {
        super(str);
        initResponseCode();
    }

    public NotAcceptableException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public NotAcceptableException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public NotAcceptableException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(406);
    }
}
