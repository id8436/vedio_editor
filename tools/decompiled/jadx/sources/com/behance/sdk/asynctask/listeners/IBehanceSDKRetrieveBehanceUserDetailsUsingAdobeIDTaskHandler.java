package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler {
    void onRetrieveBehanceUserDetailsFailure(Exception exc);

    void onRetrieveBehanceUserDetailsSuccess(BehanceSDKUserDTO behanceSDKUserDTO);
}
