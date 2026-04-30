package com.adobe.creativesdk.behance;

import com.behance.sdk.BehanceSDKEditProfileOptions;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceEditProfileOptions {
    private BehanceSDKEditProfileOptions mBehanceSDKEditProfileOptions = new BehanceSDKEditProfileOptions();

    public boolean isEnableAlternateImageSelectionSources() {
        return this.mBehanceSDKEditProfileOptions.isEnableAlternateImageSelectionSources();
    }

    public void setEnableAlternateImageSelectionSources(boolean z) {
        this.mBehanceSDKEditProfileOptions.setEnableAlternateImageSelectionSources(z);
    }

    public BehanceSDKEditProfileOptions getBehanceSDKEditProfileOptions() {
        return this.mBehanceSDKEditProfileOptions;
    }
}
