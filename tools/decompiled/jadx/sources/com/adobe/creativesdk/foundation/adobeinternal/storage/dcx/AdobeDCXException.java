package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXException extends AdobeCSDKException {
    public static final long AdobeDCXErrorNotFound = -1;
    private final String _description;
    private final AdobeDCXErrorCode _errorCode;

    public AdobeDCXException(AdobeDCXErrorCode adobeDCXErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeDCXErrorCode;
        this._description = str;
    }

    public AdobeDCXException(AdobeDCXErrorCode adobeDCXErrorCode, String str, Exception exc) {
        this(adobeDCXErrorCode, str, null, exc);
    }

    public AdobeDCXException(AdobeDCXErrorCode adobeDCXErrorCode, String str) {
        this(adobeDCXErrorCode, str, null, null);
    }

    public AdobeDCXException(AdobeDCXErrorCode adobeDCXErrorCode) {
        this(adobeDCXErrorCode, null, null, null);
    }

    public AdobeDCXErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
