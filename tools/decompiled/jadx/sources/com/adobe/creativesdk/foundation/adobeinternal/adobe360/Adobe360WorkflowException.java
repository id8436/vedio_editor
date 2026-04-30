package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowException extends AdobeCSDKException {
    private final String _description;
    private final Adobe360WorkflowErrorCode _errorCode;

    public Adobe360WorkflowException(Adobe360WorkflowErrorCode adobe360WorkflowErrorCode, String str, HashMap<String, Object> map, Exception exc) {
        super(map, exc);
        this._errorCode = adobe360WorkflowErrorCode;
        this._description = str;
    }

    public Adobe360WorkflowException(Adobe360WorkflowErrorCode adobe360WorkflowErrorCode, String str, Exception exc) {
        this(adobe360WorkflowErrorCode, str, null, exc);
    }

    public Adobe360WorkflowException(Adobe360WorkflowErrorCode adobe360WorkflowErrorCode, String str) {
        this(adobe360WorkflowErrorCode, str, null, null);
    }

    public Adobe360WorkflowException(Adobe360WorkflowErrorCode adobe360WorkflowErrorCode) {
        this(adobe360WorkflowErrorCode, null, null, null);
    }

    public Adobe360WorkflowErrorCode getErrorCode() {
        return this._errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this._description;
    }
}
