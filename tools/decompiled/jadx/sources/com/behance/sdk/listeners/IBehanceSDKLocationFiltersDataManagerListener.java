package com.behance.sdk.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKGetCitiesAsyncTaskParams;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKLocationFiltersDataManagerListener {
    void onCitiesLoadingFailure(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, Exception exc);

    void onCitiesLoadingSuccess(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, List<BehanceSDKCityDTO> list);

    void onCountriesLoadingFailure(Exception exc);

    void onCountriesLoadingSuccess(List<BehanceSDKCountryDTO> list);

    void onStatesLoadingFailure(String str, Exception exc);

    void onStatesLoadingSuccess(String str, List<BehanceSDKStateDTO> list);
}
