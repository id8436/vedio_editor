package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

/* JADX INFO: loaded from: classes.dex */
enum AdobeDCXSyncControllerMode {
    AdobeDCXSyncControllerSyncAll(0),
    AdobeDCXSyncControllerTrackPendingOnly(1),
    AdobeDCXSyncControllerSuspended(2);

    private int _val;

    AdobeDCXSyncControllerMode(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
