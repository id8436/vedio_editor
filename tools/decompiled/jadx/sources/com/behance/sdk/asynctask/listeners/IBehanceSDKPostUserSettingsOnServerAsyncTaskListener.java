package com.behance.sdk.asynctask.listeners;

import com.behance.sdk.asynctask.params.BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKPostUserSettingsOnServerAsyncTaskListener {
    void onPostUserSettingsOnServerAsyncTaskFailure(Exception exc, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams);

    void onPostUserSettingsOnServerAsyncTaskSuccess(Boolean bool, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams);
}
