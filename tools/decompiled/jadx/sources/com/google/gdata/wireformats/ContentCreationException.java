package com.google.gdata.wireformats;

import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.ServiceException;

/* JADX INFO: loaded from: classes3.dex */
public class ContentCreationException extends ServiceException {
    public ContentCreationException(String str) {
        super(str);
    }

    public ContentCreationException(String str, Throwable th) {
        super(str, th);
    }

    public ContentCreationException(Throwable th) {
        super(th);
    }

    public ContentCreationException(ErrorContent errorContent) {
        super(errorContent);
    }

    public ContentCreationException(ErrorContent errorContent, Throwable th) {
        super(errorContent, th);
    }
}
