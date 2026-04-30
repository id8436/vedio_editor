package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctasks.result.BehanceSDKGetAuthUrlFromTwitterTaskResult;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetAuthURLFromTwitterTaskListener {
    void onGetAuthURLFromTwitterFailure(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult);

    void onGetAuthURLFromTwitterSuccess(BehanceSDKGetAuthUrlFromTwitterTaskResult behanceSDKGetAuthUrlFromTwitterTaskResult);
}
