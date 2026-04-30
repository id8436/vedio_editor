package com.adobe.creativesdk.behance;

import com.behance.sdk.BehanceSDKCustomResourcesOptions;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceCustomizationOptions {
    private BehanceSDKCustomResourcesOptions mBehanceSDKCustomResourcesOptions = new BehanceSDKCustomResourcesOptions();

    public BehanceSDKCustomResourcesOptions getBehanceSDKCustomResourcesOptions() {
        return this.mBehanceSDKCustomResourcesOptions;
    }

    public void setAppSmallIcon(int i) {
        this.mBehanceSDKCustomResourcesOptions.setAppSmallIcon(i);
    }

    public void setAppColor(int i) {
        this.mBehanceSDKCustomResourcesOptions.setAppColor(i);
    }

    public void setAppTitle(int i) {
        this.mBehanceSDKCustomResourcesOptions.setAppTitle(i);
    }

    public void setBehancePhoneDisplay(int i) {
        this.mBehanceSDKCustomResourcesOptions.setPhoneOrientation(i);
    }
}
