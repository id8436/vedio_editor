package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKEditProfileListener;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceSDKEditProfileListener extends IBehanceSDKEditProfileListener {
    @Override // com.behance.sdk.IBehanceSDKEditProfileListener
    void onEditProfileFailure();

    @Override // com.behance.sdk.IBehanceSDKEditProfileListener
    void onEditProfileSuccess();
}
