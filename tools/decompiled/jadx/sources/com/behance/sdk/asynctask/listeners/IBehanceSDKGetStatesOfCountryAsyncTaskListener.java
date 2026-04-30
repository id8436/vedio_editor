package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetStatesOfCountryAsyncTaskListener {
    void onGetStatesFailure(String str, Exception exc);

    void onGetStatesSuccess(String str, List<BehanceSDKStateDTO> list);
}
