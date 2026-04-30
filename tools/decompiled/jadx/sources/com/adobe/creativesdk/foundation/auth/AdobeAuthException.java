package com.adobe.creativesdk.foundation.auth;

import android.text.TextUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class AdobeAuthException extends AdobeCSDKException {
    public static final String KEY_ERROR_DESCRIPTION = "error_description";
    private final AdobeAuthErrorCode errorCode;

    public AdobeAuthException(AdobeAuthErrorCode adobeAuthErrorCode, HashMap<String, Object> map) {
        super(map);
        this.errorCode = adobeAuthErrorCode;
    }

    public AdobeAuthException(AdobeAuthErrorCode adobeAuthErrorCode) {
        this(adobeAuthErrorCode, null);
    }

    public AdobeAuthErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        HashMap<String, Object> data = getData();
        String string = (data == null || TextUtils.isEmpty(data.get("error_description").toString())) ? null : data.get("error_description").toString();
        return string != null ? string : "Adobe Authentication Error. Error code: " + this.errorCode;
    }
}
