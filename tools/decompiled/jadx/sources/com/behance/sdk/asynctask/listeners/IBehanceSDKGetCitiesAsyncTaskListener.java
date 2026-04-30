package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetCitiesAsyncTaskParams;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetCitiesAsyncTaskListener {
    void onGetCitiesFailure(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, Exception exc);

    void onGetCitiesSuccess(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, List<BehanceSDKCityDTO> list);
}
