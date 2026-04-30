package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKUnpublishProjectTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKUnpublishProjectTaskListener {
    void onUnpublishProjectTaskFailure(Exception exc, BehanceSDKUnpublishProjectTaskParams behanceSDKUnpublishProjectTaskParams);

    void onUnpublishProjectTaskSuccess(boolean z, BehanceSDKUnpublishProjectTaskParams behanceSDKUnpublishProjectTaskParams);
}
