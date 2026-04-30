package com.google.gdata.util;

import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class InvalidEntryException extends ServiceException {
    public InvalidEntryException(String str) {
        super(str);
        initResponseCode();
    }

    public InvalidEntryException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public InvalidEntryException(Throwable th) {
        super(th.getMessage(), th);
        initResponseCode();
    }

    public InvalidEntryException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public InvalidEntryException(ErrorContent errorContent) {
        super(errorContent);
        initResponseCode();
    }

    public InvalidEntryException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(400);
    }
}
