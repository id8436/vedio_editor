package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.Timer;

/* JADX INFO: compiled from: AdobeDCXController.java */
/* JADX INFO: loaded from: classes.dex */
class CompositeControllerState {
    AdobeNetworkHttpTaskHandle activeRequest;
    long bytesConsumedByComposite;
    String compositeId;
    boolean hasPendingPull;
    boolean hasPendingPush;
    String href;
    boolean isPaused;
    boolean isPullingComponents;
    AdobeCSDKException lastError;
    AdobeDCXSyncPhase phase;
    Timer syncDelayTimer;
    boolean waitingForCancel;
    boolean waitingForDelegate;

    CompositeControllerState() {
    }
}
