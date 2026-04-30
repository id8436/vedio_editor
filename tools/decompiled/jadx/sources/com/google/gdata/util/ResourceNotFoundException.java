package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class ResourceNotFoundException extends ServiceException {
    public ResourceNotFoundException(String str) {
        super(str);
        initResponseCode();
    }

    public ResourceNotFoundException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public ResourceNotFoundException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public ResourceNotFoundException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public ResourceNotFoundException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public ResourceNotFoundException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(404);
    }
}
