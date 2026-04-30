package com.adobe.creativesdk.foundation.internal.ucf;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUCFException extends AdobeCSDKException {
    private final String _description;
    private final AdobeUCFErrorCode _errorCode;

    public AdobeUCFException(AdobeUCFErrorCode adobeUCFErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeUCFErrorCode;
        this._description = str;
    }

    public AdobeUCFException(AdobeUCFErrorCode adobeUCFErrorCode, String str, Exception exc) {
        this(adobeUCFErrorCode, str, null, exc);
    }

    public AdobeUCFException(AdobeUCFErrorCode adobeUCFErrorCode, String str) {
        this(adobeUCFErrorCode, str, null, null);
    }

    public AdobeUCFException(AdobeUCFErrorCode adobeUCFErrorCode) {
        this(adobeUCFErrorCode, null, null, null);
    }

    public AdobeUCFErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
