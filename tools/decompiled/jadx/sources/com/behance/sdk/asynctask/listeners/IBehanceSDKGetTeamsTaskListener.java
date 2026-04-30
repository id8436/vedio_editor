package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetTeamsTaskListener {
    void onGetTeamsFailure(Exception exc);

    void onGetTeamsSuccess(List<BehanceSDKTeamDTO> list);
}
