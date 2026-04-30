package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryException extends AdobeCSDKException {
    private final String _description;
    private final AdobeLibraryErrorCode _errorCode;

    public AdobeLibraryException(AdobeLibraryErrorCode adobeLibraryErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeLibraryErrorCode;
        this._description = str;
    }

    public AdobeLibraryException(AdobeLibraryErrorCode adobeLibraryErrorCode, String str, Exception exc) {
        this(adobeLibraryErrorCode, str, null, exc);
    }

    public AdobeLibraryException(AdobeLibraryErrorCode adobeLibraryErrorCode, String str) {
        this(adobeLibraryErrorCode, str, null, null);
    }

    public AdobeLibraryException(AdobeLibraryErrorCode adobeLibraryErrorCode) {
        this(adobeLibraryErrorCode, null, null, null);
    }

    public AdobeLibraryErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
