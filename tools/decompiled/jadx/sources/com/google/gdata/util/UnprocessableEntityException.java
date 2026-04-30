package com.google.gdata.util;

import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class UnprocessableEntityException extends ServiceException {
    public UnprocessableEntityException(String str) {
        super(str);
        initResponseCode();
    }

    public UnprocessableEntityException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public UnprocessableEntityException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public UnprocessableEntityException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public UnprocessableEntityException(ErrorContent errorContent) {
        super(errorContent);
        initResponseCode();
    }

    public UnprocessableEntityException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(422);
    }
}
