package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSAuthEvent extends AdobeAnalyticsETSEvent {
    public static final String ADOBE_ETS_ENVIRONMENT_ACCESS_TOKEN = "access_token";
    public static final String ADOBE_ETS_ENVIRONMENT_LOGIN_SSO = "sso";
    public static final String ADOBE_ETS_ENVIRONMENT_REAUTHENTICATE = "reauthenticate";
    public static final String ADOBE_ETS_ENVIRONMENT_REMOVE_ACCOUNT = "remove_account";
    public static final String ADOBE_ETS_ENVIRONMENT_SAVE_EXISTING_ACCOUNT = "save_account";
    public static final String ADOBE_ETS_ENVIRONMENT_USERPROFILE = "user_profile";

    public AdobeAnalyticsETSAuthEvent(String str) {
        super(str);
    }

    @Override // com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent
    public void endAndTrackEvent() {
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentName.getValue(), AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyComponentVersion.getValue(), AdobeCSDKFoundation.getVersion());
        super.endAndTrackEvent();
    }

    public void trackSSO() {
        addEventParams(AdobeAnalyticsEventParams.Core.AdobeEventPropertySubType.getValue(), ADOBE_ETS_ENVIRONMENT_LOGIN_SSO);
    }

    public void trackError(AdobeAuthErrorCode adobeAuthErrorCode, String str) {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyError.getValue(), adobeAuthErrorCode.toString());
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyErrorDescription.getValue(), str);
    }

    public void trackError(String str, String str2) {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyError.getValue(), str);
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyErrorDescription.getValue(), str2);
    }
}
