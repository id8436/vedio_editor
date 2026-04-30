package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetCountriesAsyncTaskListener {
    void onGetCountriesFailure(Exception exc);

    void onGetCountriesSuccess(List<BehanceSDKCountryDTO> list);
}
