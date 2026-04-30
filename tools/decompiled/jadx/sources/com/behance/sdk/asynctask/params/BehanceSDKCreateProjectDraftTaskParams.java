package com.behance.sdk.asynctask.params;

import com.behance.sdk.BehanceSDKProjectDraftOptions;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKCreateProjectDraftTaskParams extends BehanceSDKAbstractTaskParams {
    private BehanceSDKProjectDraftOptions options;

    public void setBehanceSDKProjectDraftOptions(BehanceSDKProjectDraftOptions behanceSDKProjectDraftOptions) {
        this.options = behanceSDKProjectDraftOptions;
    }

    public BehanceSDKProjectDraftOptions getBehanceSDKProjectDraftOptions() {
        return this.options;
    }
}
