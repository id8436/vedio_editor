package com.adobe.creativesdk.foundation.adobeinternal.entitlement;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeEntitlementException extends AdobeCSDKException {
    public static final String AdobeNetworkHTTPStatusKey = "AdobeNetworkHTTPStatus";
    public static final String AdobeNetworkRequestURLStringKey = "AdobeNetworkRequestURLStringKey";
    public static final String AdobeNetworkResponseDataKey = "AdobeNetworkResponseData";
    public static final String AdobeNetworkResponseHeadersKey = "AdobeNetworkResponseHeaders";
    private final String _description;
    private final AdobeEntitlementErrorCode _errorCode;

    public AdobeEntitlementException(AdobeEntitlementErrorCode adobeEntitlementErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeEntitlementErrorCode;
        this._description = str;
    }

    public AdobeEntitlementException(AdobeEntitlementErrorCode adobeEntitlementErrorCode, String str, Exception exc) {
        this(adobeEntitlementErrorCode, str, null, exc);
    }

    public AdobeEntitlementException(AdobeEntitlementErrorCode adobeEntitlementErrorCode, String str) {
        this(adobeEntitlementErrorCode, str, null, null);
    }

    public AdobeEntitlementException(AdobeEntitlementErrorCode adobeEntitlementErrorCode) {
        this(adobeEntitlementErrorCode, null, null, null);
    }

    public AdobeEntitlementErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
