package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.BehanceSDKTagDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKSearchTagsTaskListener {
    void onSearchTagsFailure(Exception exc);

    void onSearchTagsSuccess(List<BehanceSDKTagDTO> list);
}
