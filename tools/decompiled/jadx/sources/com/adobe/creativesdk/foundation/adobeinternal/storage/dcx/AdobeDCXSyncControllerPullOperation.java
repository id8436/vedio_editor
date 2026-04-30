package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

/* JADX INFO: loaded from: classes.dex */
enum AdobeDCXSyncControllerPullOperation {
    AdobeDCXSyncControllerPullFullComposite(0),
    AdobeDCXSyncControllerPullMinimalComposite(1),
    AdobeDCXSyncControllerPullComponentsOnly(2);

    private int _val;

    AdobeDCXSyncControllerPullOperation(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
