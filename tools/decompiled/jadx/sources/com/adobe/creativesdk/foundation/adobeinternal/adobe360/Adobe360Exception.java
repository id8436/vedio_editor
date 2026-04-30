package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360Exception extends AdobeCSDKException {
    private final String _description;
    private final Adobe360ErrorCode _errorCode;

    public Adobe360Exception(Adobe360ErrorCode adobe360ErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobe360ErrorCode;
        this._description = str;
    }

    public Adobe360Exception(Adobe360ErrorCode adobe360ErrorCode, String str, Exception exc) {
        this(adobe360ErrorCode, str, null, exc);
    }

    public Adobe360Exception(Adobe360ErrorCode adobe360ErrorCode, String str) {
        this(adobe360ErrorCode, str, null, null);
    }

    public Adobe360Exception(Adobe360ErrorCode adobe360ErrorCode) {
        this(adobe360ErrorCode, null, null, null);
    }

    public Adobe360ErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
