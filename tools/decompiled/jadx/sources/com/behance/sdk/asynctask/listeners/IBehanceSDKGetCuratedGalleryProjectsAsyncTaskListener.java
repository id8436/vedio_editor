package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener {
    void onGetCuratedGalleryProjectsFailure(Exception exc, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);

    void onGetCuratedGalleryProjectsSuccess(List<BehanceSDKProjectDTO> list, BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams behanceSDKGetCuratedGalleryProjectsAsyncTaskParams);
}
