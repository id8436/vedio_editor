package com.behance.sdk.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectsAsyncTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKProjectsDataManagerGetProjectsListener {
    void onProjectsDataManagerGetProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);

    void onProjectsDataManagerGetProjectsFailure(Exception exc, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);

    void onProjectsDataManagerGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);

    void onProjectsDataManagerGetProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams);
}
