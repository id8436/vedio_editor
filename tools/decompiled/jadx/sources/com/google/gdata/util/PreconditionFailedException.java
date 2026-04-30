package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;
import java.io.IOException;
import java.net.HttpURLConnection;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public class PreconditionFailedException extends ServiceException {
    public PreconditionFailedException() {
        super(HttpStatus.Precondition_Failed);
        initResponseCode();
    }

    public PreconditionFailedException(String str) {
        super(str);
        initResponseCode();
    }

    public PreconditionFailedException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public PreconditionFailedException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public PreconditionFailedException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        initResponseCode();
    }

    public PreconditionFailedException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(412);
    }
}
