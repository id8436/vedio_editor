package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKCreateProjectDraftListener;
import com.behance.sdk.exception.BehanceSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceCreateProjectDraftListener extends IBehanceSDKCreateProjectDraftListener {
    @Override // com.behance.sdk.IBehanceSDKCreateProjectDraftListener
    void onFailure(BehanceSDKException behanceSDKException);

    @Override // com.behance.sdk.IBehanceSDKCreateProjectDraftListener
    void onSuccess(String str);
}
