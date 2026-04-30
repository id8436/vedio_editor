package com.google.gdata.util;

import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class EntityTooLargeException extends ServiceException {
    public EntityTooLargeException(String str) {
        super(str);
        initResponseCode();
    }

    public EntityTooLargeException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public EntityTooLargeException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public EntityTooLargeException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        initResponseCode();
    }

    public EntityTooLargeException(ErrorContent errorContent) {
        super(errorContent);
        initResponseCode();
    }

    public EntityTooLargeException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(413);
    }
}
