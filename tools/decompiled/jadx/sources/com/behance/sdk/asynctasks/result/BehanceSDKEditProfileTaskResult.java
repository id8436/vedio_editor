package com.behance.sdk.asynctasks.result;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileTaskResult {
    private boolean exceptionOccurred;
    private List<Exception> exceptions = new ArrayList();
    private boolean profileAvatarUpdateFailed;
    private boolean profileUpdateFailed;

    public boolean isProfileAvatarUpdateFailed() {
        return this.profileAvatarUpdateFailed;
    }

    public void setProfileAvatarUpdateFailed(boolean z) {
        this.profileAvatarUpdateFailed = z;
    }

    public boolean isExceptionOccurred() {
        return this.exceptionOccurred;
    }

    public void setExceptionOccurred(boolean z) {
        this.exceptionOccurred = z;
    }

    public List<Exception> getExceptions() {
        return this.exceptions;
    }

    public void addException(Exception exc) {
        this.exceptions.add(exc);
    }

    public boolean isProfileUpdateFailed() {
        return this.profileUpdateFailed;
    }

    public void setProfileUpdateFailed(boolean z) {
        this.profileUpdateFailed = z;
    }
}
