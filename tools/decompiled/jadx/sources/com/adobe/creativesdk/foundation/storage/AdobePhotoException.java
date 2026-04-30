package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoException extends AdobeCSDKException {
    private final String description;
    private final AdobePhotoErrorCode errorCode;

    public AdobePhotoException(AdobePhotoErrorCode adobePhotoErrorCode, HashMap<String, Object> map, String str, Exception exc) {
        super(map, exc);
        this.errorCode = adobePhotoErrorCode;
        this.description = str;
    }

    public AdobePhotoException(AdobePhotoErrorCode adobePhotoErrorCode, HashMap<String, Object> map, String str) {
        this(adobePhotoErrorCode, map, str, null);
    }

    public AdobePhotoException(AdobePhotoErrorCode adobePhotoErrorCode) {
        this(adobePhotoErrorCode, null, null);
    }

    public AdobePhotoErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this.description == null ? "Adobe Photo Error. Error code :" + this.errorCode : this.description;
    }
}
