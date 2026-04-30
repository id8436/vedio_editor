package com.adobe.creativesdk.behance;

import com.behance.sdk.IBehanceSDKSearchProjectListener;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeBehanceSearchProjectListener extends IBehanceSDKSearchProjectListener {
    @Override // com.behance.sdk.IBehanceSDKSearchProjectListener
    void onSearchProjectsFailure(Exception exc);

    @Override // com.behance.sdk.IBehanceSDKSearchProjectListener
    void onSearchProjectsSuccess(List<BehanceSDKProjectDTO> list);
}
