.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;
.super Ljava/lang/Object;
.source "IAdobeDCXControllerDelegate.java"


# virtual methods
.method public abstract controllerHasDisabledSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
.end method

.method public abstract controllerHasEnabledSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
.end method

.method public abstract controllerHasFinishedSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
.end method

.method public abstract controllerHasPausedSyncForAllCompositesDueToError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
.end method

.method public abstract controllerHasStartedSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
.end method

.method public abstract controllerHasUpdatedLocalStorageBytesConsumed(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;J)V
.end method

.method public abstract controllerRequestsAcceptOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
.end method

.method public abstract controllerRequestsBytesConsumedByCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)J
.end method

.method public abstract controllerRequestsClientHandleError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;Z)V
.end method

.method public abstract controllerRequestsDeleteOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
.end method

.method public abstract controllerRequestsPullOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract controllerRequestsPushOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
.end method

.method public abstract controllerRequestsResolveOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
.end method

.method public abstract controllerWillTrackLocalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
.end method
