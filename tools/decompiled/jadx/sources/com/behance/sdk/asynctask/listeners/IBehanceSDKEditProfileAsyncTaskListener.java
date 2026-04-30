package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctasks.result.BehanceSDKEditProfileTaskResult;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKEditProfileAsyncTaskListener {
    void onEditProfileTaskFailure(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult);

    void onEditProfileTaskSuccess(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult);
}
