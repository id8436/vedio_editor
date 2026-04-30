package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class AdobeAssetException extends AdobeCSDKException {
    public static final String KEY_ERROR_DESCRIPTION = "error_description";
    private final AdobeAssetErrorCode errorCode;

    public AdobeAssetException(AdobeAssetErrorCode adobeAssetErrorCode, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this.errorCode = adobeAssetErrorCode;
    }

    public AdobeAssetException(AdobeAssetErrorCode adobeAssetErrorCode, HashMap<String, Object> map) {
        this(adobeAssetErrorCode, map, null);
    }

    public AdobeAssetException(AdobeAssetErrorCode adobeAssetErrorCode) {
        this(adobeAssetErrorCode, null, null);
    }

    public AdobeAssetErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return "Adobe Storage Error. Error code :" + this.errorCode;
    }

    public Integer getHttpStatusCode() {
        if (this._data == null || !this._data.containsKey("AdobeNetworkHTTPStatus")) {
            return 0;
        }
        return (Integer) this._data.get("AdobeNetworkHTTPStatus");
    }
}
