package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.project.BehanceSDKProjectDTO;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetProjectDetailsAsyncTaskListener {
    void onGetProjectDetailsAsyncTaskFailure(Exception exc);

    void onGetProjectDetailsAsyncTaskSuccess(BehanceSDKProjectDTO behanceSDKProjectDTO);
}
