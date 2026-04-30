package com.behance.sdk.asynctask.params;

import com.behance.sdk.dto.search.BehanceSDKUserSettingsOnServerDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPostUserSettingsOnServerAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private BehanceSDKUserSettingsOnServerDTO settings;

    public BehanceSDKUserSettingsOnServerDTO getSettings() {
        return this.settings;
    }

    public void setSettings(BehanceSDKUserSettingsOnServerDTO behanceSDKUserSettingsOnServerDTO) {
        this.settings = behanceSDKUserSettingsOnServerDTO;
    }
}
