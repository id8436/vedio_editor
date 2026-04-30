package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityErrorCode;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityException extends AdobeCSDKException {
    public static final long AdobeCommunityErrorNotFound = -1;
    private final String _description;
    private final AdobeCommunityErrorCode _errorCode;

    public AdobeCommunityException(AdobeCommunityErrorCode adobeCommunityErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobeCommunityErrorCode;
        this._description = str;
    }

    public AdobeCommunityException(AdobeCommunityErrorCode adobeCommunityErrorCode, String str, Exception exc) {
        this(adobeCommunityErrorCode, str, null, exc);
    }

    public AdobeCommunityException(AdobeCommunityErrorCode adobeCommunityErrorCode, String str) {
        this(adobeCommunityErrorCode, str, null, null);
    }

    public AdobeCommunityException(AdobeCommunityErrorCode adobeCommunityErrorCode) {
        this(adobeCommunityErrorCode, null, null, null);
    }

    public AdobeCommunityErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
