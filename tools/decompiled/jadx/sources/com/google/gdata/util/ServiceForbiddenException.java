package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceForbiddenException extends ServiceException {
    public ServiceForbiddenException(String str) {
        super(str);
        initResponseCode();
    }

    public ServiceForbiddenException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public ServiceForbiddenException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public ServiceForbiddenException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public ServiceForbiddenException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public ServiceForbiddenException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(403);
    }
}
