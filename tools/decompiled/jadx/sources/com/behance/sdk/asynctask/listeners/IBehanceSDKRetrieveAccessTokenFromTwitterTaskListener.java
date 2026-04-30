package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctasks.result.BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener {
    void onRetrieveAccessTokenFromTwitterFailure(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult);

    void onRetrieveAccessTokenFromTwitterSuccess(BehanceSDKRetrieveAccessTokenFromTwitterTaskResult behanceSDKRetrieveAccessTokenFromTwitterTaskResult);
}
