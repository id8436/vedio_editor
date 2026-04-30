package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKAppreciateProjectAsyncTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKAppreciateProjectAsyncTaskListener {
    void onAppreciateProjectAsyncTaskFailure(Exception exc, BehanceSDKAppreciateProjectAsyncTaskParams behanceSDKAppreciateProjectAsyncTaskParams);

    void onAppreciateProjectAsyncTaskSuccess(boolean z, BehanceSDKAppreciateProjectAsyncTaskParams behanceSDKAppreciateProjectAsyncTaskParams);
}
