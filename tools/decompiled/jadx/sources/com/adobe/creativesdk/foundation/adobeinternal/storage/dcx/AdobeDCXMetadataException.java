package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMetadataException extends AdobeCSDKException {
    public static final long AdobeDCXErrorNotFound = -1;
    private final String _description;
    private final AdobeDCXMetadataErrorCode _errorCode;

    public AdobeDCXMetadataException(AdobeDCXMetadataErrorCode adobeDCXMetadataErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeDCXMetadataErrorCode;
        this._description = str;
    }

    public AdobeDCXMetadataException(AdobeDCXMetadataErrorCode adobeDCXMetadataErrorCode, String str, Exception exc) {
        this(adobeDCXMetadataErrorCode, str, null, exc);
    }

    public AdobeDCXMetadataException(AdobeDCXMetadataErrorCode adobeDCXMetadataErrorCode, String str) {
        this(adobeDCXMetadataErrorCode, str, null, null);
    }

    public AdobeDCXMetadataException(AdobeDCXMetadataErrorCode adobeDCXMetadataErrorCode) {
        this(adobeDCXMetadataErrorCode, null, null, null);
    }

    public AdobeDCXMetadataErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
