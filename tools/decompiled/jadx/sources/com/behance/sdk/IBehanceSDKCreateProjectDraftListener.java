package com.behance.sdk;

import com.behance.sdk.exception.BehanceSDKException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface IBehanceSDKCreateProjectDraftListener {
    void onFailure(BehanceSDKException behanceSDKException);

    void onSuccess(String str);
}
