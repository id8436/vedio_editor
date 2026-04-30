package com.adobe.creativesdk.foundation.internal.utils;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdobeCSDKException extends Exception {
    public static final String AdobeErrorOtherErrorsKey = "AdobeErrorOtherErrorsKey";
    public static final String AdobeErrorPathKey = "AdobeErrorPathKey";
    protected HashMap<String, Object> _data;

    public abstract String getDescription();

    public AdobeCSDKException(HashMap<String, Object> map) {
        this._data = map;
    }

    public AdobeCSDKException(HashMap<String, Object> map, Exception exc) {
        super(exc);
        this._data = map;
    }

    public HashMap<String, Object> getData() {
        return this._data;
    }
}
