package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKADDProjectModuleListener;
import com.behance.sdk.exception.BehanceSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceADDProjectModuleListener extends IBehanceSDKADDProjectModuleListener {
    @Override // com.behance.sdk.IBehanceSDKADDProjectModuleListener
    void onFailure(BehanceSDKException behanceSDKException);

    @Override // com.behance.sdk.IBehanceSDKADDProjectModuleListener
    void onSuccess();
}
