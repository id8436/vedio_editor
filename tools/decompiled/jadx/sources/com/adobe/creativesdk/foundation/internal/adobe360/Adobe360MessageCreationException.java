package com.adobe.creativesdk.foundation.internal.adobe360;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360MessageCreationException extends AdobeCSDKException {
    public static final String Adobe30MessageKey = "Adobe360Message";

    public Adobe360MessageCreationException(HashMap<String, Object> map) {
        super(map);
    }

    public Adobe360MessageCreationException(HashMap<String, Object> map, Exception exc) {
        super(map, exc);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException
    public String getDescription() {
        return null;
    }
}
