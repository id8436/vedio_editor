package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;

/* JADX INFO: loaded from: classes.dex */
public interface IACLibraryManagerSyncDelegate {
    void handleSyncError(AdobeLibraryException adobeLibraryException);

    void handleSyncFinished();
}
