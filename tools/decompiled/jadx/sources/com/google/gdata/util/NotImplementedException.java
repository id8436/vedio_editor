package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class NotImplementedException extends ServiceException {
    public NotImplementedException(String str) {
        super(str);
        initResponseCode();
    }

    public NotImplementedException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public NotImplementedException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public NotImplementedException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public NotImplementedException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public NotImplementedException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(501);
    }
}
