package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public class NotModifiedException extends ServiceException {
    public NotModifiedException() {
        super(HttpStatus.Not_Modified);
        initResponseCode();
    }

    public NotModifiedException(String str) {
        super(str);
        initResponseCode();
    }

    public NotModifiedException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public NotModifiedException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public NotModifiedException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public NotModifiedException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(304);
    }
}
