package com.behance.sdk;

/* JADX INFO: loaded from: classes2.dex */
public interface IBehanceSDKGetUserProfileListener {
    void onEditProfileFailure(Exception exc);

    void onGetUserProfileSuccess(BehanceSDKUserProfile behanceSDKUserProfile);
}
