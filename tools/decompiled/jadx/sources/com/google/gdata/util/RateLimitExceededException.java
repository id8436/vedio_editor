package com.google.gdata.util;

import com.google.gdata.client.CoreErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class RateLimitExceededException extends ServiceException {
    public RateLimitExceededException() {
        this(CoreErrorDomain.ERR.rateLimitExceeded);
    }

    public RateLimitExceededException(String str) {
        this(CoreErrorDomain.ERR.rateLimitExceeded.withExtendedHelp(str));
    }

    public RateLimitExceededException(String str, Throwable th) {
        this(CoreErrorDomain.ERR.rateLimitExceeded.withExtendedHelp(str), th);
    }

    public RateLimitExceededException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public RateLimitExceededException(Throwable th) {
        this(CoreErrorDomain.ERR.rateLimitExceeded, th);
    }

    public RateLimitExceededException(ErrorContent errorContent) {
        super(errorContent);
        initResponseCode();
    }

    public RateLimitExceededException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(403);
    }
}
