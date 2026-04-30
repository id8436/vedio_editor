package com.adobe.creativesdk.behance;

import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.behance.sdk.IBehanceSDKUserCredentials;

/* JADX INFO: loaded from: classes.dex */
class AdobeBehanceUserDetails implements IBehanceSDKUserCredentials {
    AdobeBehanceUserDetails() {
    }

    @Override // com.behance.sdk.IBehanceSDKUserCredentials
    public String getClientId() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getClientID();
    }

    @Override // com.behance.sdk.IBehanceSDKUserCredentials
    public String getUserBehanceAccountId() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
    }

    @Override // com.behance.sdk.IBehanceSDKUserCredentials
    public String getUserAdobeAccountId() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
    }
}
