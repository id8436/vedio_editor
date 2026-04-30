package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKDeleteProjectCommentAsyncTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKDeleteProjectCommentAsyncTaskListener {
    void onDeleteProjectCommentAsyncTaskFailure(Exception exc, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams);

    void onDeleteProjectCommentAsyncTaskSuccess(boolean z, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams);
}
