package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKProjectPublishListener;
import com.behance.sdk.exception.BehanceSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceProjectPublishListener extends IBehanceSDKProjectPublishListener {
    @Override // com.behance.sdk.IBehanceSDKProjectPublishListener
    void onCancel();

    @Override // com.behance.sdk.IBehanceSDKProjectPublishListener
    void onFailure(BehanceSDKException behanceSDKException);

    @Override // com.behance.sdk.IBehanceSDKProjectPublishListener
    void onSuccess(String str);
}
