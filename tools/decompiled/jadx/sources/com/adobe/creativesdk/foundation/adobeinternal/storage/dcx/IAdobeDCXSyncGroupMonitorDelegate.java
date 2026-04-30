package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXSyncGroupMonitorDelegate {
    void assetWasAdded(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor);

    void assetWasDeleted(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor);

    void assetWasUpdated(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor);

    void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor);

    void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor, boolean z);

    void monitorHasStartedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor);
}
