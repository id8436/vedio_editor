package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceUnavailableException extends ServiceException {
    private int retryTime;

    public ServiceUnavailableException(String str) {
        super(str);
        this.retryTime = -1;
        initResponseCode();
    }

    public ServiceUnavailableException(String str, Throwable th) {
        super(str, th);
        this.retryTime = -1;
        initResponseCode();
    }

    public ServiceUnavailableException(Throwable th) {
        super(th.getMessage(), th);
        this.retryTime = -1;
        initResponseCode();
    }

    public ServiceUnavailableException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        this.retryTime = -1;
        initResponseCode();
    }

    public ServiceUnavailableException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        this.retryTime = -1;
        initResponseCode();
    }

    public ServiceUnavailableException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        this.retryTime = -1;
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(503);
    }

    public int getRetryTime() {
        return this.retryTime;
    }

    public void setRetryTime(int i) {
        this.retryTime = i;
    }
}
