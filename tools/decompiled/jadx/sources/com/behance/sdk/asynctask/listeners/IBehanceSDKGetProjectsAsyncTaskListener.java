package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetProjectsAsyncTaskListener {
    void onGetProjectsAsyncTaskFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);

    void onGetProjectsAsyncTaskSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);
}
