package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKPostProjectCommentAsyncTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKPostProjectCommentAsyncTaskListener {
    void onPostProjectCommentAsyncTaskFailure(Exception exc, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams);

    void onPostProjectCommentAsyncTaskSuccess(int i, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams);
}
