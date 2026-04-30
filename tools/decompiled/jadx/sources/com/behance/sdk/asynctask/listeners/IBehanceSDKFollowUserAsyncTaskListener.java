package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKFollowUnFollowUserAsyncTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKFollowUserAsyncTaskListener {
    void onFollowUserAsyncTaskFailure(Exception exc, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams);

    void onFollowUserAsyncTaskSuccess(boolean z, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams);
}
