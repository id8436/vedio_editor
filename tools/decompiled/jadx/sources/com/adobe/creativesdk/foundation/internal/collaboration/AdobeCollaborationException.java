package com.adobe.creativesdk.foundation.internal.collaboration;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationException extends AdobeCSDKException {
    private final String description;
    private final AdobeCollaborationErrorCode errorCode;

    public AdobeCollaborationException(AdobeCollaborationErrorCode adobeCollaborationErrorCode, HashMap<String, Object> map, String str, Exception exc) {
        super(map, exc);
        this.errorCode = adobeCollaborationErrorCode;
        this.description = str;
    }

    public AdobeCollaborationException(AdobeCollaborationErrorCode adobeCollaborationErrorCode, HashMap<String, Object> map, String str) {
        this(adobeCollaborationErrorCode, map, str, null);
    }

    public AdobeCollaborationException(AdobeCollaborationErrorCode adobeCollaborationErrorCode) {
        this(adobeCollaborationErrorCode, null, null);
    }

    public AdobeCollaborationErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this.description == null ? "Adobe Collaboration Error. Error code :" + this.errorCode : this.description;
    }

    public Integer getHttpStatusCode() {
        if (this._data == null || !this._data.containsKey("AdobeNetworkHTTPStatus")) {
            return 0;
        }
        return (Integer) this._data.get("AdobeNetworkHTTPStatus");
    }
}
