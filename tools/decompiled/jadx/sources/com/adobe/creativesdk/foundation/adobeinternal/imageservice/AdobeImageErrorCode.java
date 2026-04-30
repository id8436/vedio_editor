package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

/* JADX INFO: loaded from: classes.dex */
public enum AdobeImageErrorCode {
    AdobeImageErrorInvalidImage(0),
    AdobeImageErrorUnexpectedResponse(1);

    private int _val;

    AdobeImageErrorCode(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
