package com.adobe.creativesdk.foundation.sendtodesktop;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeSendToDesktopException extends AdobeCSDKException {
    private String description;
    private final AdobeSendToDesktopErrorCode errorCode;

    public AdobeSendToDesktopException(AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode, HashMap<String, Object> map, String str, Exception exc) {
        super(map, exc);
        this.description = str;
        this.errorCode = adobeSendToDesktopErrorCode;
    }

    public AdobeSendToDesktopException(AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode, HashMap<String, Object> map, String str) {
        this(adobeSendToDesktopErrorCode, map, str, null);
    }

    public AdobeSendToDesktopException(AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode) {
        this(adobeSendToDesktopErrorCode, null, null);
    }

    public AdobeSendToDesktopErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return this.description;
    }
}
