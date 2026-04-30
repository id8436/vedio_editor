package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class UnsupportedMediaTypeException extends ServiceException {
    public UnsupportedMediaTypeException(String str) {
        super(str);
        initResponseCode();
    }

    public UnsupportedMediaTypeException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public UnsupportedMediaTypeException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public UnsupportedMediaTypeException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public UnsupportedMediaTypeException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public UnsupportedMediaTypeException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(415);
    }
}
