package com.adobe.creativesdk.behance;

import com.behance.sdk.BehanceSDKUserProfile;
import com.behance.sdk.IBehanceSDKGetUserProfileListener;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceSDKGetUserProfileListener extends IBehanceSDKGetUserProfileListener {
    @Override // com.behance.sdk.IBehanceSDKGetUserProfileListener
    void onEditProfileFailure(Exception exc);

    @Override // com.behance.sdk.IBehanceSDKGetUserProfileListener
    void onGetUserProfileSuccess(BehanceSDKUserProfile behanceSDKUserProfile);
}
