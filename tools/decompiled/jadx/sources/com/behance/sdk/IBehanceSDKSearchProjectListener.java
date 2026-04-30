package com.behance.sdk;

import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKSearchProjectListener {
    void onSearchProjectsFailure(Exception exc);

    void onSearchProjectsSuccess(List<BehanceSDKProjectDTO> list);
}
