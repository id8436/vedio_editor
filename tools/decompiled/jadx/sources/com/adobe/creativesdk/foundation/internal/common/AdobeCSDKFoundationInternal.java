package com.adobe.creativesdk.foundation.internal.common;

import android.content.Context;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.authenticator.AdobeContinuableEventHandler;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKFoundationInternal {
    private AdobeCSDKFoundationInternal() {
    }

    public static void initializeCSDKFoundation(Context context, AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        AdobeCSDKFoundation.initializeCSDKFoundation(context);
        AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().setApplicationContext(context);
        AdobeAuthIdentityManagementService.getSharedInstance().setEnvironment(adobeAuthIMSEnvironment);
        AdobeContinuableEventHandler.startContinuableEventHandler();
    }
}
