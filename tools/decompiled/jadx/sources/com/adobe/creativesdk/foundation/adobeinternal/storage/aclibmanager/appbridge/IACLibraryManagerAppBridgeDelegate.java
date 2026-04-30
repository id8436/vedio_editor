package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;

/* JADX INFO: loaded from: classes.dex */
public interface IACLibraryManagerAppBridgeDelegate {
    void handleFirstSyncWithServerInitiated();

    void handleLibraryEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent);

    void handleResumeAppWorkflow();
}
