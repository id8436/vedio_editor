package com.adobe.creativesdk.foundation.network;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkException extends AdobeCSDKException {
    static final String _domain = "AdobeNetworkErrorDomain";
    static final String _responseKey = "Response";
    private final AdobeNetworkErrorCode errorCode;

    /* JADX INFO: loaded from: classes2.dex */
    public enum AdobeNetworkErrorCode {
        AdobeNetworkErrorBadRequest,
        AdobeNetworkErrorNetworkFailure,
        AdobeNetworkErrorOffline,
        AdobeNetworkErrorCancelled,
        AdobeNetworkErrorAuthenticationFailed,
        AdobeNetworkErrorServiceDisconnected,
        AdobeNetworkErrorRequestForbidden,
        AdobeNetworkErrorInvalidDeviceId,
        AdobeNetworkErrorFileDoesNotExist,
        AdobeNetworkErrorNoCloudSpecified,
        AdobeNetworkErrorNotEntitledToService,
        AdobeNetworkErrorTimeout,
        AdobeNetworkErrorNoEnoughDeviceStorage
    }

    @Deprecated
    public AdobeNetworkException(AdobeNetworkErrorCode adobeNetworkErrorCode, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this.errorCode = adobeNetworkErrorCode;
    }

    @Deprecated
    public AdobeNetworkException(AdobeNetworkErrorCode adobeNetworkErrorCode, HashMap<String, Object> map) {
        this(adobeNetworkErrorCode, map, null);
    }

    @Deprecated
    public AdobeNetworkException(AdobeNetworkErrorCode adobeNetworkErrorCode) {
        this(adobeNetworkErrorCode, null, null);
    }

    @Deprecated
    public static String getKeyForResponse() {
        return "Response";
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        StringBuilder sb = new StringBuilder("Error : " + this.errorCode + " : ");
        if (this._data != null && this._data.containsKey("Response")) {
            AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) this._data.get("Response");
            if (adobeNetworkHttpResponse != null) {
                sb.append(adobeNetworkHttpResponse.getDataString());
            }
        } else {
            sb.append(getErrorCode());
        }
        return sb.toString();
    }

    public Integer getStatusCode() {
        if (this._data == null || !this._data.containsKey("Response")) {
            return null;
        }
        return Integer.valueOf(((AdobeNetworkHttpResponse) this._data.get("Response")).getStatusCode());
    }

    public AdobeNetworkErrorCode getErrorCode() {
        return this.errorCode;
    }
}
