package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetUserProfileTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKGetUserProfileTaskResult;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetUserProfileAsyncTaskListener {
    void onGetUserProfileFailure(Exception exc, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams);

    void onGetUserProfileSuccess(BehanceSDKGetUserProfileTaskResult behanceSDKGetUserProfileTaskResult, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams);
}
