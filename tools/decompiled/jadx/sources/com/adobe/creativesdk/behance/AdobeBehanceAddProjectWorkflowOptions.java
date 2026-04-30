package com.adobe.creativesdk.behance;

import com.behance.sdk.BehanceSDKAddProjectWorkflowOptions;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceAddProjectWorkflowOptions extends AdobeBehanceSDKAbstractPublishOptions {
    public AdobeBehanceAddProjectWorkflowOptions() {
        super(new BehanceSDKAddProjectWorkflowOptions());
    }

    protected BehanceSDKAddProjectWorkflowOptions getAddProjectWorkflowOptions() {
        return (BehanceSDKAddProjectWorkflowOptions) getBehanceSDKPublishOptions();
    }
}
