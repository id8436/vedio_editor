package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetProjectCommentsAsyncTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectCommentDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetProjectCommentsAsyncTaskListener {
    void onGetProjectCommentsFailure(Exception exc, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams);

    void onGetProjectCommentsSuccess(List<BehanceSDKProjectCommentDTO> list, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams);
}
