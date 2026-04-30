package com.google.gdata.util;

/* JADX INFO: loaded from: classes3.dex */
public class ParseException extends ServiceException {
    public ParseException(String str) {
        super(str);
        initResponseCode();
    }

    public ParseException(String str, Throwable th) {
        super(str, th);
        initResponseCode();
    }

    public ParseException(Throwable th) {
        super(th);
        initResponseCode();
    }

    public ParseException(ErrorContent errorContent) {
        super(errorContent);
        initResponseCode();
    }

    public ParseException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
        initResponseCode();
    }

    private void initResponseCode() {
        setHttpErrorCodeOverride(400);
    }
}
