package com.adobe.creativesdk.foundation.internal.storage.model.util;

import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes2.dex */
public class ParsingDataException extends Exception {
    private AdobeAssetException _error;

    public ParsingDataException(AdobeAssetException adobeAssetException) {
        this._error = adobeAssetException;
    }

    public AdobeAssetException getError() {
        return this._error;
    }
}
