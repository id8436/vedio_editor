package com.adobe.creativesdk.foundation.internal.adobe360;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Message;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360MessageInternal extends Adobe360Message {
    public Adobe360MessageInternal(String str) {
        super(str);
    }

    private Adobe360MessageInternal(String str, AdobeCSDKProgress adobeCSDKProgress) throws AdobeCSDKException {
        super(str, adobeCSDKProgress);
    }

    public Adobe360MessageInternal(AdobeDCXComposite adobeDCXComposite, boolean z, AdobeCSDKProgress adobeCSDKProgress) throws AdobeCSDKException {
        super(adobeDCXComposite, z, adobeCSDKProgress);
    }

    public static Adobe360MessageInternal create360MessageWithSnapshotAtPath(String str, AdobeCSDKProgress adobeCSDKProgress) throws AdobeCSDKException {
        try {
            return new Adobe360MessageInternal(str, adobeCSDKProgress);
        } catch (AdobeCSDKException e2) {
            if (e2 instanceof Adobe360MessageCreationException) {
                return (Adobe360MessageInternal) e2.getData().get(Adobe360MessageCreationException.Adobe30MessageKey);
            }
            throw e2;
        }
    }
}
