package com.behance.sdk.asynctasks.result;

import com.behance.sdk.BehanceSDKUserProfile;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetUserProfileTaskResult {
    private Exception exception;
    private boolean exceptionOccurred;
    private BehanceSDKUserProfile userProfile;

    public BehanceSDKUserProfile getBehanceUserProfile() {
        return this.userProfile;
    }

    public void setBehanceUserProfile(BehanceSDKUserProfile behanceSDKUserProfile) {
        this.userProfile = behanceSDKUserProfile;
    }

    public boolean isExceptionOccurred() {
        return this.exceptionOccurred;
    }

    public void setExceptionOccurred(boolean z) {
        this.exceptionOccurred = z;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }
}
