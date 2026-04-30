package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXControllerDelegate {
    void controllerHasDisabledSync(AdobeDCXController adobeDCXController, AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode);

    void controllerHasEnabledSync(AdobeDCXController adobeDCXController, AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode);

    void controllerHasFinishedSync(AdobeDCXController adobeDCXController);

    void controllerHasPausedSyncForAllCompositesDueToError(AdobeDCXController adobeDCXController, AdobeCSDKException adobeCSDKException);

    void controllerHasStartedSync(AdobeDCXController adobeDCXController);

    void controllerHasUpdatedLocalStorageBytesConsumed(AdobeDCXController adobeDCXController, long j);

    void controllerRequestsAcceptOfCompositeWithID(AdobeDCXController adobeDCXController, String str);

    long controllerRequestsBytesConsumedByCompositeWithID(AdobeDCXController adobeDCXController, String str);

    void controllerRequestsClientHandleError(AdobeDCXController adobeDCXController, AdobeCSDKException adobeCSDKException, String str, AdobeDCXSyncPhase adobeDCXSyncPhase, boolean z);

    void controllerRequestsDeleteOfCompositeWithID(AdobeDCXController adobeDCXController, String str);

    void controllerRequestsPullOfCompositeWithID(AdobeDCXController adobeDCXController, String str, String str2);

    void controllerRequestsPushOfCompositeWithID(AdobeDCXController adobeDCXController, String str);

    void controllerRequestsResolveOfCompositeWithID(AdobeDCXController adobeDCXController, String str);

    boolean controllerWillTrackLocalComposite(AdobeDCXController adobeDCXController, AdobeDCXComposite adobeDCXComposite);
}
