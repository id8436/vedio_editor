package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetUserProjectsListAsyncTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetUserProjectsListAsyncTaskListener {
    void onGetUserProjectsListFailure(Exception exc, BehanceSDKGetUserProjectsListAsyncTaskParams behanceSDKGetUserProjectsListAsyncTaskParams);

    void onGetUserProjectsListSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetUserProjectsListAsyncTaskParams behanceSDKGetUserProjectsListAsyncTaskParams);
}
