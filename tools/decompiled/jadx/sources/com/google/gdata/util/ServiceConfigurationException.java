package com.google.gdata.util;

import com.google.gdata.util.ErrorDomain;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceConfigurationException extends ServiceException {
    public ServiceConfigurationException(String str) {
        super(str);
    }

    public ServiceConfigurationException(String str, Throwable th) {
        super(str, th);
    }

    public ServiceConfigurationException(Throwable th) {
        super(th);
    }

    public ServiceConfigurationException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
    }

    public ServiceConfigurationException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
    }
}
