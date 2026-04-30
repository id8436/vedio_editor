package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData;
import com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestExecutor;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.AdobePriorityFutureTask;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchive;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFArchiveItem;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFErrorCode;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFException;
import com.adobe.creativesdk.foundation.internal.util.AdobeCSDKErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXCompositeXfer {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static Integer increment;
    private static final Object lock;
    private static volatile AdobeNetworkHttpRequestExecutor transferQueue;

    interface CoordinatedDownload {
        void perform(String str, AdobeDCXComponent adobeDCXComponent, String str2);
    }

    interface DownloadAssetResource {
        void perform(AdobeDCXComponent adobeDCXComponent, String str);
    }

    interface UploadAssetResource {
        void perform(String str);
    }

    static {
        $assertionsDisabled = !AdobeDCXCompositeXfer.class.desiredAssertionStatus();
        transferQueue = null;
        lock = new Object();
    }

    private static void initialize() {
        if (transferQueue == null) {
            transferQueue = new AdobeNetworkHttpRequestExecutor(5, 5, 100L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue());
            increment = 0;
        }
    }

    public static AdobeNetworkHttpRequestExecutor transferQueue() {
        initialize();
        return transferQueue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Runnable createRunnableForPostingAssetsSyncResult(final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, final AdobeStorageResourceCollection adobeStorageResourceCollection, final AdobeAssetException adobeAssetException) {
        return new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1
            @Override // java.lang.Runnable
            public void run() {
                adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                if (iAdobeStorageCollectionRequestCompletionHandler != null) {
                    if (adobeStorageResourceCollection != null && adobeAssetException == null) {
                        iAdobeStorageCollectionRequestCompletionHandler.onComplete(adobeStorageResourceCollection);
                    } else {
                        iAdobeStorageCollectionRequestCompletionHandler.onError(adobeAssetException);
                    }
                }
                adobeNetworkCompositeHttpTaskHandle.markFinished();
                adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Runnable createRunnableForPostingHeaderInfoResult(final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, final IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, final AdobeStorageResourceItem adobeStorageResourceItem, final AdobeCSDKException adobeCSDKException) {
        return new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.2
            @Override // java.lang.Runnable
            public void run() {
                adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                if (iAdobeDCXResourceRequestCompletionHandler != null) {
                    iAdobeDCXResourceRequestCompletionHandler.onCompletion(adobeStorageResourceItem, adobeCSDKException);
                }
                adobeNetworkCompositeHttpTaskHandle.markFinished();
                adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void postFailureOnPushCompletionHandler(final IAdobeDCXPushCompletionHandler iAdobeDCXPushCompletionHandler, Handler handler, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.3
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPushCompletionHandler.onFailure(adobeCSDKException);
                }
            });
        } else {
            iAdobeDCXPushCompletionHandler.onFailure(adobeCSDKException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void postFailureOnPullCompletionHandler(final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.4
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPullCompletionHandler.onFailure(null, adobeCSDKException);
                }
            });
        } else {
            iAdobeDCXPullCompletionHandler.onFailure(null, adobeCSDKException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void postHeaderInfoForManifestResult(Handler handler, Runnable runnable) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void postAssetsInSyncGroupResult(Handler handler, Runnable runnable) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static AdobeNetworkHttpTaskHandle pushComposite(AdobeDCXComposite adobeDCXComposite, boolean z, AdobeStorageSession adobeStorageSession, IAdobeDCXPushCompletionHandler iAdobeDCXPushCompletionHandler, Handler handler) {
        return internalPushCompositeWithPriority(adobeDCXComposite, z, adobeStorageSession, iAdobeDCXPushCompletionHandler, handler, AdobeNetworkRequestPriority.NORMAL);
    }

    public static AdobeNetworkHttpTaskHandle pushCompositeWithPriority(AdobeDCXComposite adobeDCXComposite, boolean z, AdobeStorageSession adobeStorageSession, IAdobeDCXPushCompletionHandler iAdobeDCXPushCompletionHandler, Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        return internalPushCompositeWithPriority(adobeDCXComposite, z, adobeStorageSession, iAdobeDCXPushCompletionHandler, handler, adobeNetworkRequestPriority == null ? AdobeNetworkRequestPriority.NORMAL : adobeNetworkRequestPriority);
    }

    public static boolean pushComposite(final AdobeDCXComposite adobeDCXComposite, boolean z, final AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobeDCXComposite.getController() != null) {
            throw new AssertionError("The synchronous pushComposite method is not supported when the composite's controller property is non-nil.");
        }
        if (adobeDCXComposite.getController() != null) {
            return false;
        }
        initialize();
        IAdobeDCXCompositeManifestUploadRequest iAdobeDCXCompositeManifestUploadRequest = new IAdobeDCXCompositeManifestUploadRequest() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.5
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !AdobeDCXCompositeXfer.class.desiredAssertionStatus();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest
            public AdobeNetworkHttpTaskHandle perform(AdobeDCXManifest adobeDCXManifest, boolean z2, IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler) {
                if ($assertionsDisabled || adobeDCXComposite.getActivePushManifest() != null) {
                    return adobeStorageSession.updateManifest(adobeDCXManifest, adobeDCXComposite, z2, iAdobeDCXManifestRequestCompletionHandler, null);
                }
                throw new AssertionError("Unexpected composite state: activePushManifest should not be nil.");
            }
        };
        if (adobeDCXComposite.getCurrent() != null && adobeDCXComposite.getCurrent().isDirty()) {
            AdobeLogger.log(Level.WARN, "AdobeDCXCompositeXfer", "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. Uncommitted changes will not be included in the pushed composite.");
        }
        try {
            return internalPushComposite(adobeDCXComposite, adobeDCXComposite.copyCommittedManifest(), z, adobeStorageSession, new AdobeNetworkCompositeHttpTaskHandle(), iAdobeDCXCompositeManifestUploadRequest);
        } catch (AdobeDCXException e2) {
            if (e2.getErrorCode() == AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalManifest, e2.getDescription(), e2.getData(), e2);
            }
            throw e2;
        }
    }

    private static AdobeNetworkHttpTaskHandle internalPushCompositeWithPriority(final AdobeDCXComposite adobeDCXComposite, final boolean z, final AdobeStorageSession adobeStorageSession, final IAdobeDCXPushCompletionHandler iAdobeDCXPushCompletionHandler, final Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        initialize();
        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pushComposite compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
        final IAdobeDCXCompositeManifestUploadRequest iAdobeDCXCompositeManifestUploadRequest = new IAdobeDCXCompositeManifestUploadRequest() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.6
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !AdobeDCXCompositeXfer.class.desiredAssertionStatus();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest
            public AdobeNetworkHttpTaskHandle perform(AdobeDCXManifest adobeDCXManifest, boolean z2, IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler) {
                if ($assertionsDisabled || adobeDCXComposite.getActivePushManifest() != null) {
                    return adobeStorageSession.updateManifest(adobeDCXManifest, adobeDCXComposite, z2, iAdobeDCXManifestRequestCompletionHandler, null);
                }
                throw new AssertionError("Unexpected composite state: activePushManifest should not be nil.");
            }
        };
        if (adobeDCXComposite.getCurrent() != null && adobeDCXComposite.getCurrent().isDirty()) {
            AdobeLogger.log(Level.WARN, AdobeDCXCompositeXfer.class.getSimpleName(), "pushComposite has been called with a composite that has uncommitted changes in its current branch.Uncommitted changes will not be included in the pushed composite.");
        }
        try {
            final AdobeDCXManifest adobeDCXManifestCopyCommittedManifest = adobeDCXComposite.copyCommittedManifest();
            String compositeId = adobeDCXComposite.getCompositeId();
            final AdobeDCXController controller = adobeDCXComposite.getController();
            final IAdobeDCXPushCompletionHandler iAdobeDCXPushCompletionHandler2 = controller != null ? new IAdobeDCXPushCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.7
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                public void onSuccess() {
                    if (iAdobeDCXPushCompletionHandler != null) {
                        iAdobeDCXPushCompletionHandler.onSuccess();
                    }
                    AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pushComposite succeeded for compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
                    controller.reportPushFinishedForCompositeWithID(adobeDCXComposite, null);
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                public void onFailure(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeDCXPushCompletionHandler != null) {
                        iAdobeDCXPushCompletionHandler.onFailure(adobeCSDKException);
                    }
                    AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pushComposite failed for compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
                    controller.reportPushFinishedForCompositeWithID(adobeDCXComposite, adobeCSDKException);
                }
            } : iAdobeDCXPushCompletionHandler;
            final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
            AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.8
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public AdobeNetworkHttpResponse call() {
                    try {
                        adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                        AdobeDCXCompositeXfer.internalPushComposite(adobeDCXComposite, adobeDCXManifestCopyCommittedManifest, z, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle, iAdobeDCXCompositeManifestUploadRequest);
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                                    if (iAdobeDCXPushCompletionHandler2 != null) {
                                        iAdobeDCXPushCompletionHandler2.onSuccess();
                                    }
                                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                                }
                            });
                            return null;
                        }
                        adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                        if (iAdobeDCXPushCompletionHandler2 != null) {
                            iAdobeDCXPushCompletionHandler2.onSuccess();
                        }
                        adobeNetworkCompositeHttpTaskHandle.markFinished();
                        adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                        return null;
                    } catch (AdobeCSDKException e2) {
                        adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                        if (iAdobeDCXPushCompletionHandler2 != null) {
                            AdobeDCXCompositeXfer.postFailureOnPushCompletionHandler(iAdobeDCXPushCompletionHandler2, handler, e2);
                        }
                        adobeNetworkCompositeHttpTaskHandle.markFinished();
                        adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                        return null;
                    }
                }
            }, adobeNetworkRequestPriority);
            adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
            transferQueue.execute(adobePriorityFutureTask);
            if (controller != null) {
                controller.reportPushStartedForCompositeWithID(compositeId, adobeNetworkCompositeHttpTaskHandle);
                return adobeNetworkCompositeHttpTaskHandle;
            }
            return adobeNetworkCompositeHttpTaskHandle;
        } catch (AdobeDCXException e2) {
            if (iAdobeDCXPushCompletionHandler != null) {
                postFailureOnPushCompletionHandler(iAdobeDCXPushCompletionHandler, handler, e2);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getContentLength(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite) {
        File file = new File(str);
        if (adobeDCXComposite.localComponentAssetsAreImmutable() && adobeDCXComponent.getLength() != -1) {
            return adobeDCXComponent.getLength();
        }
        return file.length();
    }

    private static boolean pushComponentsInManifest(AdobeDCXManifest adobeDCXManifest, final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, AdobeDCXPushJournal adobeDCXPushJournal, final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, ArrayList<AdobeCSDKException> arrayList) {
        String sourceHrefForUploadedComponent;
        if (!$assertionsDisabled && adobeDCXComposite.getActivePushManifest() == null) {
            throw new AssertionError("Unexpected composite state: activePushManifest should not be nil.");
        }
        final PushComponentTracker pushComponentTracker = new PushComponentTracker(adobeDCXPushJournal, adobeNetworkCompositeHttpTaskHandle);
        ArrayList arrayList2 = new ArrayList();
        final ComponentManagerWrapper componentManagerWrapper = iAdobeSessionProtocol.getComponentManager() == null ? null : new ComponentManagerWrapper(iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
        Iterator<Map.Entry<String, AdobeDCXComponent>> it = adobeDCXManifest.getAllComponents().entrySet().iterator();
        while (it.hasNext()) {
            final AdobeDCXComponent value = it.next().getValue();
            final String uCIDOfComponent = adobeDCXManifest.getUCIDOfComponent(value);
            final boolean z = uCIDOfComponent != null;
            if (z && componentManagerWrapper == null) {
                arrayList2.add(new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXInvalidComponentManager, String.format("no component manager found that is able to handle unmanaged component %s with UCID : %s", value.getComponentId(), uCIDOfComponent)));
            } else {
                final boolean z2 = !value.isBound();
                String state = value.getState();
                if (state == null) {
                    state = AdobeDCXConstants.AdobeDCXAssetStateUnmodified;
                }
                if (z2 || state.equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                    try {
                        String pathOfComponent = adobeDCXComposite.getLocalStorage().getPathOfComponent(value, adobeDCXManifest, adobeDCXComposite, false);
                        if (pathOfComponent != null && !new File(pathOfComponent).exists()) {
                            pathOfComponent = null;
                        }
                        final String str = pathOfComponent == null ? "" : pathOfComponent;
                        final String sourceHrefOfComponent = adobeDCXManifest.getSourceHrefOfComponent(value);
                        if (!z && pathOfComponent == null && sourceHrefOfComponent == null) {
                            arrayList2.add(AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, String.format("Component %s,%s of composite %s has neither a local storage file nor a source href.", value.getComponentId(), value.getName(), value.getComponentId()), null));
                        } else {
                            if (sourceHrefOfComponent == null && pathOfComponent != null) {
                                sourceHrefOfComponent = pushComponentTracker.hrefWithImmutableLocalPath(pathOfComponent);
                            }
                            if (sourceHrefOfComponent != null) {
                            }
                            final AdobeDCXMutableComponent uploadedComponent = adobeDCXPushJournal.getUploadedComponent(value);
                            if (uploadedComponent == null) {
                                adobeDCXPushJournal.clearComponent(value);
                            } else if (uploadedComponent.getLength() == getContentLength(str, value, adobeDCXComposite) || z) {
                                final String md5 = uploadedComponent.getMd5();
                                pushComponentTracker.addPendingComponent();
                                if (!z) {
                                    AdobeStorageUtils.MD5HashOfFile(str, false, new IHashCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.9
                                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler
                                        public void onCompletion(String str2) {
                                            if (str2 != null && md5.equals(str2)) {
                                                if (z) {
                                                    componentManagerWrapper.didUploadComponent(value, adobeDCXComposite, uCIDOfComponent, str, null);
                                                }
                                                if (z2) {
                                                    pushComponentTracker.componentWasAdded(uploadedComponent, str, adobeDCXComposite, null);
                                                    return;
                                                } else {
                                                    pushComponentTracker.componentWasUpdated(uploadedComponent, str, adobeDCXComposite, null);
                                                    return;
                                                }
                                            }
                                            new C1UploadAssetResourceImpl(value, adobeDCXComposite, adobeNetworkCompositeHttpTaskHandle, z, componentManagerWrapper, pushComponentTracker, iAdobeSessionProtocol, z2, uCIDOfComponent).perform(str);
                                        }
                                    });
                                } else {
                                    final ComponentManagerWrapper componentManagerWrapper2 = componentManagerWrapper;
                                    final boolean z3 = z2;
                                    final boolean z4 = z;
                                    componentManagerWrapper.requestFileToUploadComponent(value, adobeDCXComposite, uCIDOfComponent, new IAdobeDCXReadyWithUploadFileCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1ReadyWithUploadFileMD5CompletionHandler
                                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXReadyWithUploadFileCompletionHandler
                                        public void onCompletion(String str2, AdobeDCXException adobeDCXException, String str3) {
                                            if (adobeDCXException != null) {
                                                pushComponentTracker.componentWasAdded(value, null, adobeDCXComposite, adobeDCXException);
                                                return;
                                            }
                                            final String str4 = str2 == null ? "" : str2;
                                            File file = new File(str4);
                                            if (str2 == null && str3 != null && str3.equals(uploadedComponent.getMd5())) {
                                                componentManagerWrapper2.didUploadComponent(value, adobeDCXComposite, uCIDOfComponent, str4, null);
                                                if (z3) {
                                                    pushComponentTracker.componentWasAdded(uploadedComponent, str4, adobeDCXComposite, null);
                                                    return;
                                                } else {
                                                    pushComponentTracker.componentWasUpdated(uploadedComponent, str4, adobeDCXComposite, null);
                                                    return;
                                                }
                                            }
                                            if (!file.exists() || !file.canRead()) {
                                                AdobeDCXException adobeDCXException2 = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, String.format("File to upload %s for component %s does not exist/ does not have read permission", str4, value.getComponentId()));
                                                if (z4) {
                                                    componentManagerWrapper2.didUploadComponent(value, adobeDCXComposite, uCIDOfComponent, str4, adobeDCXException2);
                                                }
                                                pushComponentTracker.componentWasAdded(value, str2, adobeDCXComposite, adobeDCXException2);
                                                return;
                                            }
                                            final String str5 = uCIDOfComponent;
                                            final boolean z5 = z3;
                                            final IAdobeSessionProtocol iAdobeSessionProtocol2 = iAdobeSessionProtocol;
                                            final PushComponentTracker pushComponentTracker2 = pushComponentTracker;
                                            final ComponentManagerWrapper componentManagerWrapper3 = componentManagerWrapper2;
                                            final boolean z6 = z4;
                                            final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle2 = adobeNetworkCompositeHttpTaskHandle;
                                            final AdobeDCXComposite adobeDCXComposite2 = adobeDCXComposite;
                                            final AdobeDCXComponent adobeDCXComponent = value;
                                            AdobeStorageUtils.MD5HashOfFile(str4, false, new IHashCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1ReadyWithUploadFileMD5CompletionHandler.1
                                                @Override // com.adobe.creativesdk.foundation.internal.storage.model.util.IHashCompletionHandler
                                                public void onCompletion(String str6) {
                                                    if (str6 != null && md5.equals(str6)) {
                                                        if (z6) {
                                                            componentManagerWrapper3.didUploadComponent(adobeDCXComponent, adobeDCXComposite2, str5, str4, null);
                                                        }
                                                        if (z5) {
                                                            pushComponentTracker2.componentWasAdded(uploadedComponent, str4, adobeDCXComposite2, null);
                                                            return;
                                                        } else {
                                                            pushComponentTracker2.componentWasUpdated(uploadedComponent, str4, adobeDCXComposite2, null);
                                                            return;
                                                        }
                                                    }
                                                    new C1UploadAssetResourceImpl(adobeDCXComponent, adobeDCXComposite2, adobeNetworkCompositeHttpTaskHandle2, z6, componentManagerWrapper3, pushComponentTracker2, iAdobeSessionProtocol2, z5, str5).perform(str4);
                                                }
                                            });
                                        }
                                    }, new AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler(value, pushComponentTracker, adobeDCXComposite) { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1PushCancellationHandler
                                        AdobeDCXComponent _component;
                                        final /* synthetic */ AdobeDCXComposite val$composite;
                                        final /* synthetic */ PushComponentTracker val$tracker;

                                        {
                                            this.val$tracker = pushComponentTracker;
                                            this.val$composite = adobeDCXComposite;
                                            this._component = value;
                                        }

                                        @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler
                                        public void perform() {
                                            this.val$tracker.componentWasAdded(this._component, null, this.val$composite, new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                                        }
                                    });
                                }
                            } else if (sourceHrefOfComponent != null && (sourceHrefForUploadedComponent = adobeDCXPushJournal.getSourceHrefForUploadedComponent(uploadedComponent)) != null && sourceHrefOfComponent.equals(sourceHrefForUploadedComponent)) {
                                if (z2) {
                                    pushComponentTracker.componentWasAdded(uploadedComponent, sourceHrefOfComponent, adobeDCXComposite, null);
                                } else {
                                    pushComponentTracker.componentWasUpdated(uploadedComponent, sourceHrefOfComponent, adobeDCXComposite, null);
                                }
                            }
                            pushComponentTracker.addPendingComponent();
                            if (sourceHrefOfComponent != null) {
                                final boolean z5 = z;
                                final boolean z6 = z2;
                                new UploadAssetResource() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1copyServerAssetResource
                                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.UploadAssetResource
                                    public void perform(String str2) {
                                        long contentLength = AdobeDCXCompositeXfer.getContentLength(str2, value, adobeDCXComposite);
                                        if (adobeNetworkCompositeHttpTaskHandle.isCancelled()) {
                                            if (!z5) {
                                                pushComponentTracker.componentWasAdded(value, null, adobeDCXComposite, new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                                                return;
                                            }
                                            return;
                                        }
                                        long j = contentLength + 10;
                                        if (adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount() < 0) {
                                            adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(j);
                                            adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(0L);
                                        } else {
                                            adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount() + j);
                                        }
                                        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleUploadServerAssetWithHref = iAdobeSessionProtocol.uploadServerAssetWithHref(sourceHrefOfComponent, value, adobeDCXComposite, z6, null, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1copyServerAssetResource.1
                                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                                            public void onCompletion(AdobeDCXComponent adobeDCXComponent, AdobeCSDKException adobeCSDKException) {
                                                if (adobeCSDKException != null) {
                                                }
                                                pushComponentTracker.componentWasAdded(adobeDCXComponent, null, adobeDCXComposite, adobeCSDKException);
                                            }
                                        });
                                        if (adobeNetworkHttpTaskHandleUploadServerAssetWithHref != null) {
                                            adobeNetworkCompositeHttpTaskHandle.addComponentRequest(adobeNetworkHttpTaskHandleUploadServerAssetWithHref, j);
                                        }
                                    }
                                }.perform(str);
                            } else if (z) {
                                final boolean z7 = z;
                                final ComponentManagerWrapper componentManagerWrapper3 = componentManagerWrapper;
                                final boolean z8 = z2;
                                componentManagerWrapper.requestFileToUploadComponent(value, adobeDCXComposite, uCIDOfComponent, new IAdobeDCXReadyWithUploadFileCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1ReadyWithUploadFileCompletionHandler
                                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXReadyWithUploadFileCompletionHandler
                                    public void onCompletion(String str2, AdobeDCXException adobeDCXException, String str3) {
                                        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "fComponentManagerWrapper.requestFileToUploadComponent completed inside pushComponentsInManifest");
                                        if (adobeDCXException != null) {
                                            pushComponentTracker.componentWasAdded(value, str2, adobeDCXComposite, adobeDCXException);
                                            return;
                                        }
                                        String str4 = str2 == null ? "" : str2;
                                        File file = new File(str4);
                                        if (!file.exists() || !file.canRead()) {
                                            AdobeDCXException adobeDCXException2 = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, "Invalid upload file/permissions " + str4 + " for component:" + value.getComponentId(), adobeDCXException);
                                            if (z7) {
                                                componentManagerWrapper3.didUploadComponent(value, adobeDCXComposite, uCIDOfComponent, str4, adobeDCXException2);
                                            }
                                            pushComponentTracker.componentWasAdded(value, str2, adobeDCXComposite, adobeDCXException2);
                                            return;
                                        }
                                        new C1UploadAssetResourceImpl(value, adobeDCXComposite, adobeNetworkCompositeHttpTaskHandle, z7, componentManagerWrapper3, pushComponentTracker, iAdobeSessionProtocol, z8, uCIDOfComponent).perform(str4);
                                    }
                                }, new AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler(value, pushComponentTracker, adobeDCXComposite) { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1PushCancellationHandler
                                    AdobeDCXComponent _component;
                                    final /* synthetic */ AdobeDCXComposite val$composite;
                                    final /* synthetic */ PushComponentTracker val$tracker;

                                    {
                                        this.val$tracker = pushComponentTracker;
                                        this.val$composite = adobeDCXComposite;
                                        this._component = value;
                                    }

                                    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler
                                    public void perform() {
                                        this.val$tracker.componentWasAdded(this._component, null, this.val$composite, new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                                    }
                                });
                            } else {
                                new C1UploadAssetResourceImpl(value, adobeDCXComposite, adobeNetworkCompositeHttpTaskHandle, z, componentManagerWrapper, pushComponentTracker, iAdobeSessionProtocol, z2, uCIDOfComponent).perform(str);
                            }
                        }
                    } catch (AdobeDCXException e2) {
                        arrayList2.add(e2);
                    }
                } else if (state.equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                    adobeDCXPushJournal.clearComponent(value);
                } else if (adobeDCXComposite.localComponentAssetsAreImmutable() && (state.equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) || state.equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete))) {
                    pushComponentTracker.removeComponent(value);
                } else if (state.equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
                    pushComponentTracker.componentWasCommittedForDelete(value);
                } else if (state.equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) && !adobeDCXPushJournal.componentHasBeenDeleted(value)) {
                    pushComponentTracker.addPendingComponent();
                    iAdobeSessionProtocol.deleteComponent(value, adobeDCXComposite, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.10
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                        public void onCompletion(AdobeDCXComponent adobeDCXComponent, AdobeCSDKException adobeCSDKException) {
                            pushComponentTracker.componentWasDeleted(adobeDCXComponent, adobeCSDKException);
                        }
                    }, null);
                }
            }
        }
        pushComponentTracker.waitImpl();
        Collection<? extends AdobeCSDKException> errors = pushComponentTracker.getErrors();
        if (errors != null || arrayList2.size() > 0) {
            if (arrayList != null) {
                arrayList.clear();
                if (errors != null) {
                    arrayList.addAll(errors);
                }
                if (arrayList2.size() > 0) {
                    arrayList.addAll(arrayList2);
                }
            }
            return false;
        }
        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "pushComponentsInManifest exiting with success");
        pushComponentTracker.updateManifest(adobeDCXManifest, adobeDCXComposite);
        pushComponentTracker.releaseRequest();
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1UploadAssetResourceImpl, reason: invalid class name */
    class C1UploadAssetResourceImpl implements UploadAssetResource {
        final /* synthetic */ String val$UCID;
        final /* synthetic */ AdobeNetworkCompositeHttpTaskHandle val$compRequest;
        final /* synthetic */ AdobeDCXComponent val$component;
        final /* synthetic */ boolean val$componentIsNew;
        final /* synthetic */ AdobeDCXComposite val$composite;
        final /* synthetic */ ComponentManagerWrapper val$fComponentManagerWrapper;
        final /* synthetic */ boolean val$isUnmanagedComponent;
        final /* synthetic */ IAdobeSessionProtocol val$session;
        final /* synthetic */ PushComponentTracker val$tracker;

        C1UploadAssetResourceImpl(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, boolean z, ComponentManagerWrapper componentManagerWrapper, PushComponentTracker pushComponentTracker, IAdobeSessionProtocol iAdobeSessionProtocol, boolean z2, String str) {
            this.val$component = adobeDCXComponent;
            this.val$composite = adobeDCXComposite;
            this.val$compRequest = adobeNetworkCompositeHttpTaskHandle;
            this.val$isUnmanagedComponent = z;
            this.val$fComponentManagerWrapper = componentManagerWrapper;
            this.val$tracker = pushComponentTracker;
            this.val$session = iAdobeSessionProtocol;
            this.val$componentIsNew = z2;
            this.val$UCID = str;
        }

        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.UploadAssetResource
        public void perform(final String str) {
            final long contentLength = AdobeDCXCompositeXfer.getContentLength(str, this.val$component, this.val$composite);
            if (this.val$compRequest.isCancelled()) {
                AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled);
                if (this.val$isUnmanagedComponent) {
                    this.val$fComponentManagerWrapper.didUploadComponent(this.val$component, this.val$composite, str, null, adobeNetworkException);
                }
                this.val$tracker.componentWasAdded(this.val$component, null, this.val$composite, adobeNetworkException);
                return;
            }
            long j = 10 + contentLength;
            if (this.val$compRequest.getTotalUnitCount() < 0) {
                this.val$compRequest.setTotalUnitCount(j);
                this.val$compRequest.setCompletedUnitCount(0L);
            } else {
                this.val$compRequest.setTotalUnitCount(this.val$compRequest.getTotalUnitCount() + j);
            }
            final AdobeDCXComponent adobeDCXComponent = this.val$component;
            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "Calling  session.uploadComponent inside pushComponentsInManifest");
            final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleUploadComponent = this.val$session.uploadComponent(this.val$component, this.val$composite, str, this.val$componentIsNew, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1UploadAssetResourceImpl.1
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                public void onCompletion(final AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "session.uploadComponent completed inside pushComponentsInManifest");
                    Integer num = 200;
                    if (adobeCSDKException != null && adobeCSDKException.getData() != null && adobeCSDKException.getData().containsKey("AdobeNetworkHTTPStatus")) {
                        num = (Integer) adobeCSDKException.getData().get("AdobeNetworkHTTPStatus");
                    }
                    if (num.intValue() == 404 || num.intValue() == 409 || num.intValue() == 412) {
                        long j2 = contentLength + 10;
                        if (C1UploadAssetResourceImpl.this.val$compRequest.getTotalUnitCount() < 0) {
                            C1UploadAssetResourceImpl.this.val$compRequest.setTotalUnitCount(j2);
                            C1UploadAssetResourceImpl.this.val$compRequest.setCompletedUnitCount(0L);
                        } else {
                            C1UploadAssetResourceImpl.this.val$compRequest.setTotalUnitCount(C1UploadAssetResourceImpl.this.val$compRequest.getTotalUnitCount() + j2);
                        }
                        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleUploadComponent2 = C1UploadAssetResourceImpl.this.val$session.uploadComponent(adobeDCXComponent, C1UploadAssetResourceImpl.this.val$composite, str, !C1UploadAssetResourceImpl.this.val$componentIsNew, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1UploadAssetResourceImpl.1.1
                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                            public void onCompletion(AdobeDCXComponent adobeDCXComponent3, AdobeCSDKException adobeCSDKException2) {
                                if (C1UploadAssetResourceImpl.this.val$isUnmanagedComponent) {
                                    C1UploadAssetResourceImpl.this.val$fComponentManagerWrapper.didUploadComponent(adobeDCXComponent3, C1UploadAssetResourceImpl.this.val$composite, C1UploadAssetResourceImpl.this.val$UCID, str, adobeCSDKException2);
                                }
                                C1UploadAssetResourceImpl.this.val$tracker.componentWasAdded(adobeDCXComponent3, str, C1UploadAssetResourceImpl.this.val$composite, adobeCSDKException2);
                            }
                        }, null);
                        if (adobeNetworkHttpTaskHandleUploadComponent2 != null) {
                            adobeNetworkHttpTaskHandleUploadComponent2.addCancellationHandler(new AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1UploadAssetResourceImpl.1.2
                                @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler
                                public void perform() {
                                    if (!adobeNetworkHttpTaskHandleUploadComponent2.isScheduled()) {
                                        AdobeNetworkException adobeNetworkException2 = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled);
                                        if (C1UploadAssetResourceImpl.this.val$isUnmanagedComponent) {
                                            C1UploadAssetResourceImpl.this.val$fComponentManagerWrapper.didUploadComponent(adobeDCXComponent2, C1UploadAssetResourceImpl.this.val$composite, str, null, adobeNetworkException2);
                                        }
                                        C1UploadAssetResourceImpl.this.val$tracker.componentWasAdded(adobeDCXComponent2, null, C1UploadAssetResourceImpl.this.val$composite, adobeNetworkException2);
                                    }
                                }
                            });
                            C1UploadAssetResourceImpl.this.val$compRequest.addComponentRequest(adobeNetworkHttpTaskHandleUploadComponent2, j2);
                            return;
                        }
                        return;
                    }
                    if (C1UploadAssetResourceImpl.this.val$isUnmanagedComponent) {
                        C1UploadAssetResourceImpl.this.val$fComponentManagerWrapper.didUploadComponent(adobeDCXComponent2, C1UploadAssetResourceImpl.this.val$composite, C1UploadAssetResourceImpl.this.val$UCID, str, adobeCSDKException);
                    }
                    C1UploadAssetResourceImpl.this.val$tracker.componentWasAdded(adobeDCXComponent2, str, C1UploadAssetResourceImpl.this.val$composite, adobeCSDKException);
                }
            }, null);
            if (adobeNetworkHttpTaskHandleUploadComponent != null) {
                adobeNetworkHttpTaskHandleUploadComponent.addCancellationHandler(new AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1UploadAssetResourceImpl.2
                    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler
                    public void perform() {
                        if (!adobeNetworkHttpTaskHandleUploadComponent.isScheduled()) {
                            AdobeNetworkException adobeNetworkException2 = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled);
                            if (C1UploadAssetResourceImpl.this.val$isUnmanagedComponent) {
                                C1UploadAssetResourceImpl.this.val$fComponentManagerWrapper.didUploadComponent(C1UploadAssetResourceImpl.this.val$component, C1UploadAssetResourceImpl.this.val$composite, str, null, adobeNetworkException2);
                            }
                            C1UploadAssetResourceImpl.this.val$tracker.componentWasAdded(C1UploadAssetResourceImpl.this.val$component, null, C1UploadAssetResourceImpl.this.val$composite, adobeNetworkException2);
                        }
                    }
                });
                this.val$compRequest.addComponentRequest(adobeNetworkHttpTaskHandleUploadComponent, j);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean internalPushComposite(final com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r17, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r18, boolean r19, final com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeSessionProtocol r20, com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle r21, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest r22) throws com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException {
        /*
            Method dump skipped, instruction units count: 1061
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.internalPushComposite(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest, boolean, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeSessionProtocol, com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest):boolean");
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1EnclosingClassForOutput, reason: invalid class name */
    class C1EnclosingClassForOutput {
        public boolean done = false;
        public AdobeDCXManifest uploadedManifest = null;
        public AdobeCSDKException manifestUploadError = null;

        C1EnclosingClassForOutput() {
        }
    }

    private static void doArchive(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest, IAdobeSessionProtocol iAdobeSessionProtocol, AdobeDCXPushJournal adobeDCXPushJournal) throws AdobeCSDKException {
        if (adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "internalPushComposite is exiting with AdobeDCXErrorAttemptToArchiveIncomingShare");
            throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorAttemptToArchiveIncomingShare, "It is not permitted to archive a composite that has been shared with the current user.");
        }
        if (iAdobeSessionProtocol.archiveDCXComposite(adobeDCXComposite)) {
            adobeDCXManifest.setCompositeArchivalState(AdobeDCXConstants.AdobeDCXCompositeArchivalStateArchived);
            adobeDCXPushJournal.recordCompositeHasBeenArchived(true);
            try {
                adobeDCXManifest.writeToFile(adobeDCXComposite.getPushedManifestPath(), false);
                try {
                    adobeDCXManifest.writeToFile(adobeDCXComposite.getPushedManifestBasePath(), false);
                } catch (AdobeDCXException e2) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToStoreBaseManifest, null, e2, adobeDCXComposite.getPushedManifestBasePath());
                }
            } catch (AdobeDCXException e3) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestFinalWriteFailure, null, e3, adobeDCXComposite.getPushedManifestPath());
            }
        }
    }

    public static AdobeNetworkHttpTaskHandle pullComposite(AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler) {
        return internalPullCompositeWithPriority(adobeDCXComposite, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, AdobeNetworkRequestPriority.NORMAL);
    }

    public static AdobeNetworkHttpTaskHandle pullCompositeWithPriority(AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        if (adobeNetworkRequestPriority == null) {
            adobeNetworkRequestPriority = AdobeNetworkRequestPriority.NORMAL;
        }
        return internalPullCompositeWithPriority(adobeDCXComposite, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, adobeNetworkRequestPriority);
    }

    public static AdobeDCXCompositeBranch pullComposite(AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobeDCXComposite.getController() != null) {
            throw new AssertionError("The synchronous pullComposite method is not supported when the composite's controller property is non-nil.");
        }
        initialize();
        return internalPullComposite(adobeDCXComposite, iAdobeSessionProtocol, new AdobeNetworkCompositeHttpTaskHandle());
    }

    private static AdobeNetworkHttpTaskHandle internalPullCompositeWithPriority(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, final Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        initialize();
        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pullComposite compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        String compositeId = adobeDCXComposite.getCompositeId();
        final AdobeDCXController controller = adobeDCXComposite.getController();
        final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler2 = controller != null ? new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.14
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onSuccess(adobeDCXCompositeBranch);
                }
                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pullComposite succeeded for compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
                controller.reportPullFinishedForCompositeWithID(adobeDCXComposite, null);
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onFailure(adobeDCXCompositeBranch, adobeCSDKException);
                }
                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pullComposite failed for compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
                controller.reportPullFinishedForCompositeWithID(adobeDCXComposite, adobeCSDKException);
            }
        } : iAdobeDCXPullCompletionHandler;
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                    final AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalPullComposite = AdobeDCXCompositeXfer.internalPullComposite(adobeDCXComposite, iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.15.1
                            @Override // java.lang.Runnable
                            public void run() {
                                adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                                if (iAdobeDCXPullCompletionHandler2 != null) {
                                    iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalPullComposite);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalPullComposite);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        AdobeDCXCompositeXfer.postFailureOnPullCompletionHandler(iAdobeDCXPullCompletionHandler2, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        }, adobeNetworkRequestPriority);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue.execute(adobePriorityFutureTask);
        if (controller != null) {
            controller.reportPullStartedForCompositeWithID(compositeId, adobeNetworkCompositeHttpTaskHandle);
        }
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle pullMinimalComposite(AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler) {
        return internalPullMinimalCompositeWithPriority(adobeDCXComposite, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, AdobeNetworkRequestPriority.NORMAL);
    }

    public static AdobeNetworkHttpTaskHandle pullMinimalCompositeWithPriority(AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        if (adobeNetworkRequestPriority == null) {
            adobeNetworkRequestPriority = AdobeNetworkRequestPriority.NORMAL;
        }
        return internalPullMinimalCompositeWithPriority(adobeDCXComposite, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, adobeNetworkRequestPriority);
    }

    private static AdobeNetworkHttpTaskHandle internalPullMinimalCompositeWithPriority(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, final Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        initialize();
        final IAdobeDCXCompositeManifestDownload iAdobeDCXCompositeManifestDownload = new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.16
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
            public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                if (adobeDCXComposite.getHref() == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned, null);
                }
                return iAdobeSessionProtocol.getManifest(adobeDCXManifest, adobeDCXComposite);
            }
        };
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        String compositeId = adobeDCXComposite.getCompositeId();
        final AdobeDCXController controller = adobeDCXComposite.getController();
        final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler2 = controller != null ? new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.17
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onSuccess(adobeDCXCompositeBranch);
                }
                controller.reportPullFinishedForCompositeWithID(adobeDCXComposite, null);
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onFailure(adobeDCXCompositeBranch, adobeCSDKException);
                }
                controller.reportPullFinishedForCompositeWithID(adobeDCXComposite, adobeCSDKException);
            }
        } : iAdobeDCXPullCompletionHandler;
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                    final AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalPullMinimalComposite = AdobeDCXCompositeXfer.internalPullMinimalComposite(adobeDCXComposite, iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle, iAdobeDCXCompositeManifestDownload);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.18.1
                            @Override // java.lang.Runnable
                            public void run() {
                                adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                                if (iAdobeDCXPullCompletionHandler2 != null) {
                                    iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalPullMinimalComposite);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalPullMinimalComposite);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        AdobeDCXCompositeXfer.postFailureOnPullCompletionHandler(iAdobeDCXPullCompletionHandler2, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        }, adobeNetworkRequestPriority);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue.execute(adobePriorityFutureTask);
        if (controller != null) {
            controller.reportPullStartedForCompositeWithID(compositeId, adobeNetworkCompositeHttpTaskHandle);
        }
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle downloadComponents(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXCompositeBranch adobeDCXCompositeBranch, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler) {
        return internalDownloadComponentsWithPriority(arrayList, adobeDCXCompositeBranch, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, AdobeNetworkRequestPriority.NORMAL);
    }

    public static AdobeNetworkHttpTaskHandle downloadComponentsWithPriority(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXCompositeBranch adobeDCXCompositeBranch, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        return internalDownloadComponentsWithPriority(arrayList, adobeDCXCompositeBranch, iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, adobeNetworkRequestPriority == null ? AdobeNetworkRequestPriority.NORMAL : adobeNetworkRequestPriority);
    }

    public static AdobeDCXCompositeBranch downloadComponents(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXCompositeBranch adobeDCXCompositeBranch, IAdobeSessionProtocol iAdobeSessionProtocol) throws AdobeCSDKException {
        initialize();
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError("branch");
        }
        AdobeDCXComposite weakComposite = adobeDCXCompositeBranch.getWeakComposite();
        if (weakComposite == null) {
            return null;
        }
        AdobeDCXManifest manifest = adobeDCXCompositeBranch != weakComposite.getCurrent() ? adobeDCXCompositeBranch.getManifest() : null;
        if ($assertionsDisabled || weakComposite.getController() == null) {
            return internalDownloadComponents(arrayList, weakComposite, manifest, iAdobeSessionProtocol, new AdobeNetworkCompositeHttpTaskHandle());
        }
        throw new AssertionError("The synchronous downloadComponents method is not supported when the composite's controller property is non-nil.");
    }

    private static AdobeNetworkHttpTaskHandle internalDownloadComponentsWithPriority(final ArrayList<AdobeDCXComponent> arrayList, AdobeDCXCompositeBranch adobeDCXCompositeBranch, final IAdobeSessionProtocol iAdobeSessionProtocol, final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, final Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        initialize();
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError("branch");
        }
        final AdobeDCXComposite weakComposite = adobeDCXCompositeBranch.getWeakComposite();
        if (weakComposite == null) {
            return null;
        }
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        final String compositeId = weakComposite.getCompositeId();
        final AdobeDCXController controller = weakComposite.getController();
        final IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler2 = controller != null ? new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.19
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch2) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onSuccess(adobeDCXCompositeBranch2);
                }
                controller.reportDownloadComponentsFinishedForCompositeWithID(compositeId, null);
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch2, AdobeCSDKException adobeCSDKException) {
                if (iAdobeDCXPullCompletionHandler != null) {
                    iAdobeDCXPullCompletionHandler.onFailure(adobeDCXCompositeBranch2, adobeCSDKException);
                }
                controller.reportDownloadComponentsFinishedForCompositeWithID(compositeId, adobeCSDKException);
            }
        } : iAdobeDCXPullCompletionHandler;
        final AdobeDCXManifest manifest = adobeDCXCompositeBranch.equals(weakComposite.getCurrent()) ? null : adobeDCXCompositeBranch.getManifest();
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.20
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                    final AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalDownloadComponents = AdobeDCXCompositeXfer.internalDownloadComponents(arrayList, weakComposite, manifest, iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.20.1
                            @Override // java.lang.Runnable
                            public void run() {
                                adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                                if (iAdobeDCXPullCompletionHandler2 != null) {
                                    iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalDownloadComponents);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        iAdobeDCXPullCompletionHandler2.onSuccess(adobeDCXCompositeBranchInternalDownloadComponents);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(false);
                    if (iAdobeDCXPullCompletionHandler2 != null) {
                        AdobeDCXCompositeXfer.postFailureOnPullCompletionHandler(iAdobeDCXPullCompletionHandler2, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        }, adobeNetworkRequestPriority);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue.execute(adobePriorityFutureTask);
        if (controller != null) {
            controller.reportDownloadComponentsStartedForCompositeWithID(compositeId, adobeNetworkCompositeHttpTaskHandle);
            return adobeNetworkCompositeHttpTaskHandle;
        }
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeDCXCompositeBranch pullMinimalComposite(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol) throws AdobeCSDKException {
        if (!$assertionsDisabled && adobeDCXComposite.getController() != null) {
            throw new AssertionError("The synchronous pullMinimalComposite method is not supported when the composite's controller property is non-nil.");
        }
        initialize();
        return internalPullMinimalComposite(adobeDCXComposite, iAdobeSessionProtocol, new AdobeNetworkCompositeHttpTaskHandle(), new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.21
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
            public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                if (adobeDCXComposite.getHref() == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned, null);
                }
                return iAdobeSessionProtocol.getManifest(adobeDCXManifest, adobeDCXComposite);
            }
        });
    }

    public static AdobeNetworkHttpTaskHandle pullComponents(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler) {
        initialize();
        if ($assertionsDisabled || adobeDCXComposite != null) {
            return downloadComponents(arrayList, adobeDCXComposite.getPulled() != null ? adobeDCXComposite.getPulled() : adobeDCXComposite.getCurrent(), iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler);
        }
        throw new AssertionError("composite");
    }

    public static AdobeNetworkHttpTaskHandle pullComponentsWithPriority(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXPullCompletionHandler iAdobeDCXPullCompletionHandler, Handler handler, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        initialize();
        if ($assertionsDisabled || adobeDCXComposite != null) {
            return downloadComponentsWithPriority(arrayList, adobeDCXComposite.getPulled() != null ? adobeDCXComposite.getPulled() : adobeDCXComposite.getCurrent(), iAdobeSessionProtocol, iAdobeDCXPullCompletionHandler, handler, adobeNetworkRequestPriority);
        }
        throw new AssertionError("composite");
    }

    public static AdobeDCXCompositeBranch pullComponents(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXComposite adobeDCXComposite, IAdobeSessionProtocol iAdobeSessionProtocol) throws AdobeCSDKException {
        initialize();
        if ($assertionsDisabled || adobeDCXComposite != null) {
            return downloadComponents(arrayList, adobeDCXComposite.getPulled() != null ? adobeDCXComposite.getPulled() : adobeDCXComposite.getCurrent(), iAdobeSessionProtocol);
        }
        throw new AssertionError("composite");
    }

    private static AdobeDCXManifest getPreviouslyPulledManifestOfComposite(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        String pulledManifestPath = adobeDCXComposite.getPulledManifestPath();
        File file = new File(pulledManifestPath);
        if (!file.exists()) {
            return null;
        }
        try {
            adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(pulledManifestPath);
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.getPreviouslyPulledManifestOfComposite", e2.getMessage(), e2);
            adobeDCXManifestCreateManifestWithContentsOfFile = null;
        }
        AdobeDCXManifest manifest = adobeDCXComposite.getManifest();
        if (manifest != null && adobeDCXManifestCreateManifestWithContentsOfFile != null && manifest.getCompositeId() != null && !manifest.getCompositeId().equals(adobeDCXManifestCreateManifestWithContentsOfFile.getCompositeId())) {
            file.delete();
            return null;
        }
        return adobeDCXManifestCreateManifestWithContentsOfFile;
    }

    private static AdobeDCXManifest getCurrentManifestOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        String currentManifestPath = adobeDCXComposite.getCurrentManifestPath();
        File file = new File(currentManifestPath);
        if (adobeDCXComposite.getCurrent() == null && file.exists()) {
            try {
                adobeDCXComposite.updateCurrentBranchWithManifest(AdobeDCXManifest.createManifestWithContentsOfFile(currentManifestPath), true);
            } catch (AdobeDCXException e2) {
                if (e2.getErrorCode() == AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest) {
                    throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalManifest, null, e2.getData(), e2);
                }
                throw e2;
            }
        }
        if (adobeDCXComposite.getCurrent() == null) {
            return null;
        }
        return adobeDCXComposite.getCurrent().getManifest();
    }

    private static boolean isErrorDueToOfflineNetwork(AdobeCSDKException adobeCSDKException) {
        return ((adobeCSDKException instanceof AdobeAssetException) && ((AdobeAssetException) adobeCSDKException).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorOffline) || ((adobeCSDKException instanceof AdobeNetworkException) && ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline);
    }

    private static AdobeCSDKException adjustErrorFromPulledManifest(AdobeCSDKException adobeCSDKException, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        if (adobeNetworkHttpTaskHandle != null && adobeNetworkHttpTaskHandle.isCancelled()) {
            return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled);
        }
        if (isErrorDueToOfflineNetwork(adobeCSDKException)) {
            return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline);
        }
        if (adobeCSDKException.getClass().equals(AdobeNetworkException.class) && ((AdobeNetworkException) adobeCSDKException).getStatusCode().intValue() == 404) {
            return new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorMissingManifest, adobeCSDKException.getDescription(), adobeCSDKException.getData(), null);
        }
        if (adobeCSDKException.getClass().equals(AdobeDCXException.class) && ((AdobeDCXException) adobeCSDKException).getErrorCode() == AdobeDCXErrorCode.AdobeDCXErrorInvalidManifest) {
            return new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInvalidRemoteManifest, adobeCSDKException.getDescription(), adobeCSDKException.getData(), null);
        }
        if (adobeCSDKException.getData() != null && adobeCSDKException.getData().containsKey("AdobeNetworkHTTPStatus") && ((Integer) adobeCSDKException.getData().get("AdobeNetworkHTTPStatus")).intValue() == 404) {
            return new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorMissingManifest, adobeCSDKException.getDescription(), adobeCSDKException.getData(), null);
        }
        return adobeCSDKException;
    }

    private static AdobeDCXCompositeBranch finalizePullManifestOfComposite(AdobeDCXComposite adobeDCXComposite, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifest adobeDCXManifest2) throws AdobeDCXException {
        AdobeDCXManifest manifest = adobeDCXComposite.getManifest();
        if (adobeDCXManifest == null) {
            if (adobeDCXManifest2 == null) {
                adobeDCXManifest2 = manifest;
            }
        } else if (adobeDCXManifest2 != null) {
            if (adobeDCXManifest2.getEtag() == null || !adobeDCXManifest2.getEtag().equals(adobeDCXManifest.getEtag())) {
                if (!adobeDCXComposite.localComponentAssetsAreImmutable()) {
                    Iterator<Map.Entry<String, AdobeDCXComponent>> it = adobeDCXManifest2.getAllComponents().entrySet().iterator();
                    while (it.hasNext()) {
                        AdobeDCXComponent value = it.next().getValue();
                        AdobeDCXComponent adobeDCXComponent = adobeDCXManifest.getAllComponents().get(value.getComponentId());
                        if (adobeDCXComponent == null || ((value.getEtag() != null && !value.getEtag().equals(adobeDCXComponent.getEtag())) || (adobeDCXComponent.getState() != null && adobeDCXComponent.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)))) {
                            String pathOfComponent = adobeDCXComposite.getLocalStorage().getPathOfComponent(value, adobeDCXManifest2, adobeDCXComposite, true);
                            File file = new File(pathOfComponent);
                            if (pathOfComponent != null && file.exists()) {
                                file.delete();
                            }
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(adobeDCXManifest2);
                adobeDCXComposite.updateLocalStorageDataInManifest(adobeDCXManifest, arrayList);
                AdobeDCXManifest.updateUnmanagedComponents(adobeDCXManifest, adobeDCXManifest2);
                adobeDCXManifest2 = adobeDCXManifest;
            }
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(manifest);
            adobeDCXComposite.updateLocalStorageDataInManifest(adobeDCXManifest, arrayList2);
            AdobeDCXManifest.updateUnmanagedComponents(adobeDCXManifest, manifest);
            adobeDCXManifest2 = adobeDCXManifest;
        }
        if (!(manifest == null || !(manifest.getEtag() == null || manifest.getEtag().equals(adobeDCXManifest2.getEtag())))) {
            adobeNetworkCompositeHttpTaskHandle.allComponentsHaveBeenAdded();
            adobeDCXComposite.discardPulledBranch();
            return null;
        }
        String pulledManifestPath = adobeDCXComposite.getPulledManifestPath();
        File file2 = new File(FilenameUtils.getFullPathNoEndSeparator(pulledManifestPath));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        adobeDCXManifest2.writeToFile(pulledManifestPath, true);
        try {
            adobeDCXManifest2.writeToFile(adobeDCXComposite.getPulledManifestBasePath(), false);
            adobeDCXComposite.updatePulledBranchWithManifest(adobeDCXManifest2);
            return adobeDCXComposite.getPulled();
        } catch (AdobeDCXException e2) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToStoreBaseManifest, null, e2, adobeDCXComposite.getPulledManifestBasePath());
        }
    }

    public static AdobeDCXCompositeBranch internalPullMinimalComposite(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, IAdobeDCXCompositeManifestDownload iAdobeDCXCompositeManifestDownload) throws AdobeCSDKException {
        AdobeDCXManifest adobeDCXManifestPerform;
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("composite");
        }
        if (!$assertionsDisabled && adobeDCXComposite.getPath() == null) {
            throw new AssertionError("composite.path");
        }
        if (iAdobeDCXCompositeManifestDownload == null) {
            iAdobeDCXCompositeManifestDownload = new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.22
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
                public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                    if (adobeDCXComposite.getHref() == null) {
                        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned, null);
                    }
                    return iAdobeSessionProtocol.getManifest(adobeDCXManifest, adobeDCXComposite);
                }
            };
        }
        getCurrentManifestOfComposite(adobeDCXComposite);
        AdobeDCXManifest previouslyPulledManifestOfComposite = getPreviouslyPulledManifestOfComposite(adobeDCXComposite);
        if (adobeDCXComposite.getHref() == null) {
            throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned);
        }
        try {
            adobeDCXManifestPerform = iAdobeDCXCompositeManifestDownload.perform(previouslyPulledManifestOfComposite);
            e = null;
        } catch (AdobeCSDKException e2) {
            e = e2;
            adobeDCXManifestPerform = null;
        }
        if (e != null || adobeNetworkCompositeHttpTaskHandle.isCancelled()) {
            throw adjustErrorFromPulledManifest(e, adobeNetworkCompositeHttpTaskHandle);
        }
        if (adobeDCXManifestPerform != null && adobeDCXManifestPerform.getCompositeState() != null && adobeDCXManifestPerform.getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete)) {
            if (adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                try {
                    iAdobeSessionProtocol.leaveSharedComposite(adobeDCXComposite);
                } catch (AdobeDCXException e3) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXCompositeXfer.class.getSimpleName(), null, e3);
                }
            } else {
                try {
                    iAdobeSessionProtocol.deleteComposite(adobeDCXComposite);
                } catch (AdobeDCXException e4) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXCompositeXfer.class.getSimpleName(), null, e4);
                }
            }
            throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorUnknownComposite);
        }
        AdobeDCXCompositeBranch adobeDCXCompositeBranchFinalizePullManifestOfComposite = finalizePullManifestOfComposite(adobeDCXComposite, adobeNetworkCompositeHttpTaskHandle, adobeDCXManifestPerform, previouslyPulledManifestOfComposite);
        if (adobeDCXCompositeBranchFinalizePullManifestOfComposite != null) {
            ArrayList arrayList = new ArrayList(1);
            AdobeDCXComponent metadataComponentInBranchOrElement = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(adobeDCXCompositeBranchFinalizePullManifestOfComposite);
            if (metadataComponentInBranchOrElement != null) {
                arrayList.add(metadataComponentInBranchOrElement);
            }
            if (arrayList.size() > 0) {
                return internalDownloadComponents(arrayList, adobeDCXComposite, adobeDCXCompositeBranchFinalizePullManifestOfComposite.getManifest(), iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
            }
            return adobeDCXCompositeBranchFinalizePullManifestOfComposite;
        }
        return adobeDCXCompositeBranchFinalizePullManifestOfComposite;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeDCXCompositeBranch internalDownloadComponents(ArrayList<AdobeDCXComponent> arrayList, final AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest, final IAdobeSessionProtocol iAdobeSessionProtocol, final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        HashSet hashSet;
        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "Entered inside internalDownloadComponents");
        final String pulledManifestPath = adobeDCXComposite.getPulledManifestPath();
        String currentManifestPath = adobeDCXComposite.getCurrentManifestPath();
        AdobeDCXManifest manifest = adobeDCXComposite.getManifest();
        final ReentrantLock reentrantLock = new ReentrantLock(true);
        if (manifest == null && new File(currentManifestPath).exists()) {
            manifest = AdobeDCXManifest.createManifestWithContentsOfFile(currentManifestPath);
        }
        ComponentManagerWrapper componentManagerWrapper = iAdobeSessionProtocol.getComponentManager() == null ? null : new ComponentManagerWrapper(iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
        boolean z = adobeDCXManifest != null;
        AdobeDCXManifest adobeDCXManifest2 = !z ? manifest : adobeDCXManifest;
        ArrayList arrayList2 = new ArrayList();
        if (arrayList == null) {
            hashSet = null;
        } else {
            HashSet hashSet2 = new HashSet();
            Iterator<AdobeDCXComponent> it = arrayList.iterator();
            while (it.hasNext()) {
                hashSet2.add(it.next().getComponentId());
            }
            hashSet = hashSet2;
        }
        if (adobeDCXManifest2 == null) {
            return null;
        }
        Map<String, AdobeDCXComponent> allComponents = adobeDCXManifest2.getAllComponents();
        final C1PendingOperationCountWrapper c1PendingOperationCountWrapper = new C1PendingOperationCountWrapper(allComponents.size(), arrayList2);
        for (Map.Entry<String, AdobeDCXComponent> entry : allComponents.entrySet()) {
            reentrantLock.lock();
            try {
                if (hashSet != null) {
                    if (!hashSet.contains(entry.getKey())) {
                        c1PendingOperationCountWrapper.decrementPendingCountWithError(null);
                    }
                }
                final AdobeDCXComponent adobeDCXComponent = adobeDCXManifest2.getAllComponents().get(entry.getKey());
                String uCIDOfComponent = adobeDCXManifest2.getUCIDOfComponent(adobeDCXComponent);
                if (componentManagerWrapper == null) {
                    new C1CoordinatedDownloadImpl(reentrantLock, adobeDCXManifest2, componentManagerWrapper, adobeDCXComponent, c1PendingOperationCountWrapper, adobeDCXComposite, z, pulledManifestPath, manifest, adobeNetworkCompositeHttpTaskHandle, iAdobeSessionProtocol).perform(null, adobeDCXComponent, null);
                } else {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "calling requestFileToDownloadComponent inside internalDownloadComponents");
                    final AdobeDCXManifest adobeDCXManifest3 = adobeDCXManifest2;
                    final AdobeDCXManifest adobeDCXManifest4 = manifest;
                    final boolean z2 = z;
                    final ComponentManagerWrapper componentManagerWrapper2 = componentManagerWrapper;
                    componentManagerWrapper.requestFileToDownloadComponent(adobeDCXComponent, adobeDCXComposite, uCIDOfComponent, new IAdobeDCXReadyWithDownloadFileCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1ReadyWithDownloadFile
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXReadyWithDownloadFileCompletionHandler
                        public void onCompletion(String str, String str2, AdobeDCXException adobeDCXException) {
                            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "ReadyWithDownloadFile completed inside internalDownloadComponents");
                            reentrantLock.lock();
                            try {
                                if (adobeDCXException != null) {
                                    c1PendingOperationCountWrapper.decrementPendingCountWithError(adobeDCXException);
                                    return;
                                }
                                adobeDCXManifest3.setUCIDForComponent(str2, adobeDCXComponent);
                                if (str2 == null) {
                                    new C1CoordinatedDownloadImpl(reentrantLock, adobeDCXManifest3, componentManagerWrapper2, adobeDCXComponent, c1PendingOperationCountWrapper, adobeDCXComposite, z2, pulledManifestPath, adobeDCXManifest4, adobeNetworkCompositeHttpTaskHandle, iAdobeSessionProtocol).perform(null, adobeDCXComponent, str2);
                                } else {
                                    adobeDCXComposite.getLocalStorage().updateComponent(adobeDCXComponent.getMutableCopy(), adobeDCXManifest3, adobeDCXComposite, null);
                                    if (str == null) {
                                        c1PendingOperationCountWrapper.decrementPendingCountWithError(null);
                                        return;
                                    }
                                    File file = new File(str);
                                    if (file.exists() && !file.canWrite()) {
                                        AdobeDCXException adobeDCXException2 = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, "invalid write permissions for filePath : " + str);
                                        componentManagerWrapper2.didDownloadComponent(adobeDCXComponent, adobeDCXComposite, str2, adobeDCXException2);
                                        c1PendingOperationCountWrapper.decrementPendingCountWithError(adobeDCXException2);
                                        return;
                                    }
                                    new C1CoordinatedDownloadImpl(reentrantLock, adobeDCXManifest3, componentManagerWrapper2, adobeDCXComponent, c1PendingOperationCountWrapper, adobeDCXComposite, z2, pulledManifestPath, adobeDCXManifest4, adobeNetworkCompositeHttpTaskHandle, iAdobeSessionProtocol).perform(str, adobeDCXComponent, str2);
                                }
                            } catch (AdobeDCXException e2) {
                                AdobeLogger.log(Level.ERROR, "ReadyWithDownloadFile:UpdateComponent", "Error updating the storage mapping of component:" + adobeDCXComponent.getComponentId());
                                componentManagerWrapper2.didDownloadComponent(adobeDCXComponent, adobeDCXComposite, str2, e2);
                                c1PendingOperationCountWrapper.decrementPendingCountWithError(e2);
                            } finally {
                                reentrantLock.unlock();
                            }
                        }
                    }, new AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1PullCancellationHandler
                        @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler
                        public void perform() {
                            c1PendingOperationCountWrapper.decrementPendingCountWithError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                        }
                    });
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        c1PendingOperationCountWrapper.waitForPendingOperations();
        if (arrayList2.size() > 0) {
            AdobeCSDKException adobeCSDKException = (AdobeCSDKException) arrayList2.get(0);
            arrayList2.remove(0);
            HashMap<String, Object> data = adobeCSDKException.getData();
            if (arrayList2.size() > 0) {
                if (data != null) {
                    data.put(AdobeCSDKException.AdobeErrorOtherErrorsKey, arrayList2);
                    throw adobeCSDKException;
                }
                new HashMap();
                throw adobeCSDKException;
            }
            throw adobeCSDKException;
        }
        adobeNetworkCompositeHttpTaskHandle.allComponentsHaveBeenAdded();
        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer", "Exiting internalDownloadComponents");
        if (z) {
            adobeDCXComposite.updatePulledBranchWithManifest(adobeDCXManifest2);
            return adobeDCXComposite.getPulled();
        }
        return adobeDCXComposite.getCurrent();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1PendingOperationCountWrapper, reason: invalid class name */
    class C1PendingOperationCountWrapper {
        final Condition condition;
        final Lock lock;
        int pendingOperationCount;
        final /* synthetic */ ArrayList val$downloadErrors;

        C1PendingOperationCountWrapper(ArrayList arrayList) {
            this.val$downloadErrors = arrayList;
            this.lock = new ReentrantLock();
            this.condition = this.lock.newCondition();
            this.pendingOperationCount = 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        C1PendingOperationCountWrapper(int i, int i2) {
            this.val$downloadErrors = i2;
            this.lock = new ReentrantLock();
            this.condition = this.lock.newCondition();
            this.pendingOperationCount = i;
        }

        public void decrementPendingCountWithError(AdobeCSDKException adobeCSDKException) {
            this.lock.lock();
            if (adobeCSDKException != null) {
                this.val$downloadErrors.add(adobeCSDKException);
            }
            this.pendingOperationCount--;
            this.condition.signal();
            this.lock.unlock();
        }

        public void waitForPendingOperations() {
            this.lock.lock();
            while (this.pendingOperationCount > 0) {
                try {
                    this.condition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.internalDownloadComponents", e2.getMessage());
                }
            }
            this.lock.unlock();
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl, reason: invalid class name */
    class C1CoordinatedDownloadImpl implements CoordinatedDownload {
        final /* synthetic */ ReentrantLock val$accessLock;
        final /* synthetic */ AdobeNetworkCompositeHttpTaskHandle val$compRequest;
        final /* synthetic */ AdobeDCXComposite val$composite;
        final /* synthetic */ ComponentManagerWrapper val$fComponentManagerWrapper;
        final /* synthetic */ AdobeDCXManifest val$fCurrentManifest;
        final /* synthetic */ AdobeDCXManifest val$fPulledManifest;
        final /* synthetic */ boolean val$hasPulledManifest;
        final /* synthetic */ C1PendingOperationCountWrapper val$pendingOperationCountWrapper;
        final /* synthetic */ AdobeDCXComponent val$pulledComponent;
        final /* synthetic */ String val$pulledManifestPath;
        final /* synthetic */ IAdobeSessionProtocol val$session;

        C1CoordinatedDownloadImpl(ReentrantLock reentrantLock, AdobeDCXManifest adobeDCXManifest, ComponentManagerWrapper componentManagerWrapper, AdobeDCXComponent adobeDCXComponent, C1PendingOperationCountWrapper c1PendingOperationCountWrapper, AdobeDCXComposite adobeDCXComposite, boolean z, String str, AdobeDCXManifest adobeDCXManifest2, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, IAdobeSessionProtocol iAdobeSessionProtocol) {
            this.val$accessLock = reentrantLock;
            this.val$fPulledManifest = adobeDCXManifest;
            this.val$fComponentManagerWrapper = componentManagerWrapper;
            this.val$pulledComponent = adobeDCXComponent;
            this.val$pendingOperationCountWrapper = c1PendingOperationCountWrapper;
            this.val$composite = adobeDCXComposite;
            this.val$hasPulledManifest = z;
            this.val$pulledManifestPath = str;
            this.val$fCurrentManifest = adobeDCXManifest2;
            this.val$compRequest = adobeNetworkCompositeHttpTaskHandle;
            this.val$session = iAdobeSessionProtocol;
        }

        /* JADX WARN: Removed duplicated region for block: B:113:0x02fd A[PHI: r12
  0x02fd: PHI (r12v4 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) = 
  (r12v0 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent)
  (r12v2 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent)
  (r12v0 com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent)
 binds: [B:47:0x0147, B:56:0x0172, B:46:0x0145] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.CoordinatedDownload
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void perform(java.lang.String r11, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r12, java.lang.String r13) {
            /*
                Method dump skipped, instruction units count: 771
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.perform(java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, java.lang.String):void");
        }

        /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper, reason: invalid class name */
        class C1CompletionCallbackWrapper {
            final /* synthetic */ boolean val$isUnmanaged;
            final /* synthetic */ String val$newUCID;

            C1CompletionCallbackWrapper(boolean z, String str) {
                this.val$isUnmanaged = z;
                this.val$newUCID = str;
            }

            void perform(AdobeCSDKException adobeCSDKException) {
                if (this.val$isUnmanaged) {
                    C1CoordinatedDownloadImpl.this.val$fComponentManagerWrapper.didDownloadComponent(C1CoordinatedDownloadImpl.this.val$pulledComponent, C1CoordinatedDownloadImpl.this.val$composite, this.val$newUCID, adobeCSDKException);
                }
            }
        }

        /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl, reason: invalid class name */
        class C1DownloadAssetResourceImpl implements DownloadAssetResource {
            private String _originalRequestPath;
            private String _tempReplacementPath;
            final /* synthetic */ C1CompletionCallbackWrapper val$completionCallbackWrapper;
            final /* synthetic */ String val$finalSourceHref;

            C1DownloadAssetResourceImpl(C1CompletionCallbackWrapper c1CompletionCallbackWrapper, String str) {
                this.val$completionCallbackWrapper = c1CompletionCallbackWrapper;
                this.val$finalSourceHref = str;
            }

            void createTempPathForOriginal(String str) {
                this._originalRequestPath = str;
                synchronized (AdobeDCXCompositeXfer.lock) {
                    StringBuilder sbAppend = new StringBuilder().append(FileUtils.getTempDirectoryPath()).append(URIUtil.SLASH).append(new Date().getTime());
                    Integer num = AdobeDCXCompositeXfer.increment;
                    Integer unused = AdobeDCXCompositeXfer.increment = Integer.valueOf(AdobeDCXCompositeXfer.increment.intValue() + 1);
                    this._tempReplacementPath = sbAppend.append(Integer.toString(num.intValue())).toString();
                }
            }

            String getTempReplacementPath() {
                return this._tempReplacementPath;
            }

            void commitMoveTempToOriginal() throws Exception {
                FileUtils.moveFile(new File(this._tempReplacementPath), new File(this._originalRequestPath));
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.DownloadAssetResource
            public void perform(AdobeDCXComponent adobeDCXComponent, final String str) {
                long length;
                AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleDownloadFromHref;
                createTempPathForOriginal(str);
                if (C1CoordinatedDownloadImpl.this.val$compRequest.isCancelled()) {
                    AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled);
                    this.val$completionCallbackWrapper.perform(null);
                    C1CoordinatedDownloadImpl.this.val$pendingOperationCountWrapper.decrementPendingCountWithError(adobeNetworkException);
                    return;
                }
                if (this.val$finalSourceHref == null) {
                    length = adobeDCXComponent.getLength() + 10;
                } else {
                    length = 10;
                }
                if (length > 0) {
                    if (C1CoordinatedDownloadImpl.this.val$compRequest.getTotalUnitCount() < 0) {
                        C1CoordinatedDownloadImpl.this.val$compRequest.setTotalUnitCount(length);
                        C1CoordinatedDownloadImpl.this.val$compRequest.setCompletedUnitCount(0L);
                    } else {
                        C1CoordinatedDownloadImpl.this.val$compRequest.setTotalUnitCount(C1CoordinatedDownloadImpl.this.val$compRequest.getTotalUnitCount() + length);
                    }
                }
                if (this.val$finalSourceHref == null) {
                    adobeNetworkHttpTaskHandleDownloadFromHref = C1CoordinatedDownloadImpl.this.val$session.downloadComponent(adobeDCXComponent, C1CoordinatedDownloadImpl.this.val$composite, getTempReplacementPath(), new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1CoordinatedDownloadImpl.1DownloadAssetResourceImpl.1
                        /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void onCompletion(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r5, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException r6) {
                            /*
                                r4 = this;
                                r2 = 0
                                if (r6 == 0) goto L46
                                java.util.HashMap r0 = r6.getData()
                                if (r0 == 0) goto L91
                                java.util.HashMap r0 = r6.getData()
                                java.lang.String r1 = "AdobeNetworkHTTPStatus"
                                boolean r0 = r0.containsKey(r1)
                                if (r0 == 0) goto L91
                                java.util.HashMap r0 = r6.getData()
                                java.lang.String r1 = "AdobeNetworkHTTPStatus"
                                java.lang.Object r0 = r0.get(r1)
                                java.lang.Integer r0 = (java.lang.Integer) r0
                                int r0 = r0.intValue()
                                r1 = 404(0x194, float:5.66E-43)
                                if (r0 != r1) goto L91
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException r1 = new com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode.AdobeDCXErrorMissingComponentAsset
                                r1.<init>(r0)
                                r0 = r2
                            L33:
                                if (r1 != 0) goto L8f
                            L35:
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper r1 = r1.val$completionCallbackWrapper
                                r1.perform(r0)
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1PendingOperationCountWrapper r1 = r1.val$pendingOperationCountWrapper
                                r1.decrementPendingCountWithError(r0)
                                return
                            L46:
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r0 = r0.val$composite
                                boolean r0 = r0.localComponentAssetsAreImmutable()
                                if (r0 == 0) goto L91
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this     // Catch: java.lang.Exception -> L6d
                                r0.commitMoveTempToOriginal()     // Catch: java.lang.Exception -> L6d
                                r1 = r2
                            L58:
                                if (r1 == 0) goto L6b
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.this
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r0 = r0.val$composite
                                boolean r0 = r0.getLockImmutableComponents()
                                if (r0 == 0) goto L6b
                                java.lang.String r0 = r2
                                com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageFileUtils.setReadOnly(r0)
                            L6b:
                                r0 = r6
                                goto L33
                            L6d:
                                r0 = move-exception
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure
                                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                                r2.<init>()
                                java.lang.String r3 = "invalid write permissions for filePath : "
                                java.lang.StringBuilder r2 = r2.append(r3)
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl r3 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.this
                                java.lang.String r3 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.access$700(r3)
                                java.lang.StringBuilder r2 = r2.append(r3)
                                java.lang.String r2 = r2.toString()
                                com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException r1 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createDCXError(r1, r2, r0)
                                goto L58
                            L8f:
                                r0 = r1
                                goto L35
                            L91:
                                r1 = r2
                                r0 = r6
                                goto L33
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.AnonymousClass1.onCompletion(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException):void");
                        }
                    }, null);
                } else {
                    adobeNetworkHttpTaskHandleDownloadFromHref = C1CoordinatedDownloadImpl.this.val$session.downloadFromHref(this.val$finalSourceHref, adobeDCXComponent, C1CoordinatedDownloadImpl.this.val$composite, getTempReplacementPath(), new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1CoordinatedDownloadImpl.1DownloadAssetResourceImpl.2
                        /* JADX WARN: Removed duplicated region for block: B:36:0x00f7  */
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void onCompletion(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r8, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException r9) {
                            /*
                                Method dump skipped, instruction units count: 250
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1CoordinatedDownloadImpl.C1DownloadAssetResourceImpl.AnonymousClass2.onCompletion(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException):void");
                        }
                    }, null);
                }
                if (length > 0 && adobeNetworkHttpTaskHandleDownloadFromHref != null) {
                    C1CoordinatedDownloadImpl.this.val$compRequest.addComponentRequest(adobeNetworkHttpTaskHandleDownloadFromHref, length);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeDCXCompositeBranch internalPullComposite(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalPullMinimalComposite = internalPullMinimalComposite(adobeDCXComposite, iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle, new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.23
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
            public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                if (adobeDCXComposite.getHref() == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned, null);
                }
                return iAdobeSessionProtocol.getManifest(adobeDCXManifest, adobeDCXComposite);
            }
        });
        if (adobeDCXCompositeBranchInternalPullMinimalComposite != null) {
            return internalDownloadComponents(null, adobeDCXComposite, adobeDCXCompositeBranchInternalPullMinimalComposite.getManifest(), iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeDCXCompositeBranch internalPullComposite(final AdobeDCXComposite adobeDCXComposite, final String str, final IAdobeSessionProtocol iAdobeSessionProtocol, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalPullMinimalComposite = internalPullMinimalComposite(adobeDCXComposite, iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle, new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.24
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
            public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                if (adobeDCXComposite.getHref() == null) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeHrefUnassigned, null);
                }
                return iAdobeSessionProtocol.getManifest(adobeDCXManifest, str, adobeDCXComposite);
            }
        });
        if (adobeDCXCompositeBranchInternalPullMinimalComposite != null) {
            return internalDownloadComponents(null, adobeDCXComposite, adobeDCXCompositeBranchInternalPullMinimalComposite.getManifest(), iAdobeSessionProtocol, adobeNetworkCompositeHttpTaskHandle);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void executeBlockOnQueue(Runnable runnable, Handler handler) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static AdobeCSDKProgress writeSnapshotOfCompositeBranch(final AdobeDCXCompositeBranch adobeDCXCompositeBranch, final String str, final String str2, final Handler handler, final IAdobeDCXWriteSnapshotCompletionHandler iAdobeDCXWriteSnapshotCompletionHandler) {
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError();
        }
        final List<AdobeDCXComponent> allComponents = adobeDCXCompositeBranch.getAllComponents();
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        adobeCSDKProgress.setTotalUnitCount(allComponents.size() + 3);
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.25
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !AdobeDCXCompositeXfer.class.desiredAssertionStatus();
            }

            /* JADX WARN: Removed duplicated region for block: B:56:0x0132  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instruction units count: 312
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.AnonymousClass25.run():void");
            }
        }).start();
        return adobeCSDKProgress;
    }

    public static AdobeCSDKProgress writeSnapshotOfCompositeBranchToArchive(final AdobeDCXCompositeBranch adobeDCXCompositeBranch, final String str, final String str2, final Handler handler, final IAdobeDCXWriteSnapshotCompletionHandler iAdobeDCXWriteSnapshotCompletionHandler) {
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError();
        }
        final List<AdobeDCXComponent> allComponents = adobeDCXCompositeBranch.getAllComponents();
        final AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        adobeCSDKProgress.setTotalUnitCount(allComponents.size() + 2);
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.26
            @Override // java.lang.Runnable
            public void run() {
                final AdobeCSDKException adobeCSDKExceptionCreateDCXError;
                String str3;
                ArrayList arrayList = new ArrayList(allComponents.size() + 2);
                AdobeCSDKException e2 = (0 == 0 && adobeCSDKProgress.isCancelled()) ? AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null) : null;
                if (e2 == null) {
                    new File(AdobeStorageLastPathComponentUtil.getLastPathComponent(str)).mkdirs();
                    arrayList.add(new AdobeUCFArchiveItem(adobeDCXCompositeBranch.getManifest().getSnapshotData(), "manifest", false));
                    Iterator<AdobeDCXComponent> it = adobeDCXCompositeBranch.getAllComponents().iterator();
                    while (true) {
                        adobeCSDKExceptionCreateDCXError = e2;
                        if (!it.hasNext()) {
                            break;
                        }
                        AdobeDCXComponent next = it.next();
                        String strSubstring = next.getAbsolutePath().substring(1);
                        try {
                            String pathForComponent = adobeDCXCompositeBranch.getPathForComponent(next);
                            e2 = adobeCSDKExceptionCreateDCXError;
                            str3 = pathForComponent;
                        } catch (AdobeDCXException e3) {
                            e2 = e3;
                            str3 = null;
                        }
                        if (str3 != null) {
                            arrayList.add(new AdobeUCFArchiveItem(str3, strSubstring, false));
                        } else {
                            adobeCSDKExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, "Component file is not present on the local file system.");
                            break;
                        }
                    }
                } else {
                    adobeCSDKExceptionCreateDCXError = e2;
                }
                if (adobeCSDKExceptionCreateDCXError == null) {
                    try {
                        AdobeUCFArchive.createArchiveFileWithItems(arrayList, str, str2, adobeCSDKProgress);
                    } catch (AdobeCSDKException e4) {
                        adobeCSDKExceptionCreateDCXError = e4;
                    }
                    if (adobeCSDKExceptionCreateDCXError != null && (adobeCSDKExceptionCreateDCXError instanceof AdobeUCFException) && ((AdobeUCFException) adobeCSDKExceptionCreateDCXError).getErrorCode() == AdobeUCFErrorCode.AdobeUCFErrorOperationCancelled) {
                        adobeCSDKExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null);
                    }
                }
                AdobeDCXCompositeXfer.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.26.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKExceptionCreateDCXError != null) {
                            if (iAdobeDCXWriteSnapshotCompletionHandler != null) {
                                iAdobeDCXWriteSnapshotCompletionHandler.onFailure(adobeCSDKExceptionCreateDCXError);
                            }
                        } else if (iAdobeDCXWriteSnapshotCompletionHandler != null) {
                            iAdobeDCXWriteSnapshotCompletionHandler.onSuccess();
                        }
                    }
                }, handler);
            }
        }).start();
        return adobeCSDKProgress;
    }

    public static AdobeCSDKProgress createCompositeAtPath(String str, String str2, Handler handler, IAdobeDCXCreateCompositeCompletionHandler iAdobeDCXCreateCompositeCompletionHandler) {
        AdobeCSDKProgress adobeCSDKProgress = new AdobeCSDKProgress();
        createCompositeAtPathInternal(str, str2, handler, iAdobeDCXCreateCompositeCompletionHandler, adobeCSDKProgress);
        return adobeCSDKProgress;
    }

    public static void createCompositeAtPathInternal(final String str, final String str2, final Handler handler, final IAdobeDCXCreateCompositeCompletionHandler iAdobeDCXCreateCompositeCompletionHandler, final AdobeCSDKProgress adobeCSDKProgress) {
        final AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        final AdobeDCXException adobeDCXException;
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str2 == null) {
            throw new AssertionError();
        }
        File file = new File(str2);
        AdobeDCXException adobeDCXExceptionCreateDCXError = !file.exists() ? AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, String.format("snapshotPath is not a directory: %s", str2)) : null;
        final boolean zIsDirectory = file.isDirectory();
        if (adobeDCXExceptionCreateDCXError == null && zIsDirectory) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(AdobeDCXUtils.stringByAppendingLastPathComponent(str2, "manifest"));
                adobeDCXException = adobeDCXExceptionCreateDCXError;
            } catch (AdobeDCXException e2) {
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
                adobeDCXException = e2;
            }
        } else {
            adobeDCXManifestCreateManifestWithContentsOfFile = null;
            adobeDCXException = adobeDCXExceptionCreateDCXError;
        }
        if (adobeDCXException == null && adobeDCXManifestCreateManifestWithContentsOfFile != null) {
            adobeCSDKProgress.setTotalUnitCount(adobeDCXManifestCreateManifestWithContentsOfFile.getAllComponents().size() + 2);
        } else {
            adobeCSDKProgress.setTotalUnitCount(-1L);
        }
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.27
            @Override // java.lang.Runnable
            public void run() throws AdobeCSDKException {
                final AdobeCSDKException adobeCSDKExceptionCreateDCXError;
                String str3;
                AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile2;
                boolean z;
                final String str4;
                final AdobeDCXComposite adobeDCXComposite;
                AdobeCSDKException e3;
                String strConvertToUTF8;
                ArrayList<String> arrayListExtractFiles;
                AdobeCSDKException adobeCSDKException;
                AdobeCSDKException adobeCSDKException2 = adobeDCXException;
                AdobeDCXManifest adobeDCXManifest = adobeDCXManifestCreateManifestWithContentsOfFile;
                String str5 = str2;
                if (adobeCSDKException2 != null || zIsDirectory) {
                    adobeCSDKExceptionCreateDCXError = adobeCSDKException2;
                    str3 = str5;
                    adobeDCXManifestCreateManifestWithContentsOfFile2 = adobeDCXManifest;
                    z = false;
                } else {
                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                    new File(strStringByAppendingLastPathComponent).mkdirs();
                    try {
                        arrayListExtractFiles = AdobeUCFArchive.extractFiles(null, str2, strStringByAppendingLastPathComponent, adobeCSDKProgress);
                        adobeCSDKException = adobeCSDKException2;
                    } catch (AdobeCSDKException e4) {
                        arrayListExtractFiles = null;
                        adobeCSDKException = e4;
                    }
                    AdobeCSDKException adobeCSDKExceptionCreateDCXError2 = (adobeCSDKException != null && (adobeCSDKException instanceof AdobeUCFException) && ((AdobeUCFException) adobeCSDKException).getErrorCode() == AdobeUCFErrorCode.AdobeUCFErrorOperationCancelled) ? AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null) : adobeCSDKException;
                    if (adobeCSDKExceptionCreateDCXError2 == null && arrayListExtractFiles != null) {
                        adobeCSDKProgress.setTotalUnitCount(arrayListExtractFiles.size());
                    }
                    try {
                        adobeDCXManifestCreateManifestWithContentsOfFile2 = AdobeDCXManifest.createManifestWithContentsOfFile(AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, "manifest"));
                        z = true;
                        adobeCSDKExceptionCreateDCXError = adobeCSDKExceptionCreateDCXError2;
                        str3 = strStringByAppendingLastPathComponent;
                    } catch (AdobeDCXException e5) {
                        str3 = strStringByAppendingLastPathComponent;
                        adobeCSDKExceptionCreateDCXError = e5;
                        adobeDCXManifestCreateManifestWithContentsOfFile2 = adobeDCXManifest;
                        z = true;
                    }
                }
                if (adobeCSDKExceptionCreateDCXError == null) {
                    adobeDCXComposite = new AdobeDCXComposite(adobeDCXManifestCreateManifestWithContentsOfFile2, str, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
                    Iterator<AdobeDCXComponent> it = adobeDCXComposite.getCurrent().getAllComponents().iterator();
                    while (true) {
                        AdobeCSDKException e6 = adobeCSDKExceptionCreateDCXError;
                        if (!it.hasNext()) {
                            e3 = e6;
                            break;
                        }
                        AdobeDCXComponent next = it.next();
                        if (adobeCSDKProgress.isCancelled()) {
                            e3 = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null);
                            break;
                        }
                        if (e6 == null) {
                            try {
                                adobeDCXComposite.getCurrent().updateComponent(next, AdobeDCXUtils.stringByAppendingLastPathComponent(str3, next.getAbsolutePath()), false);
                            } catch (AdobeDCXException e7) {
                                e6 = e7;
                            }
                            adobeCSDKProgress.setCompletedUnitCount(adobeCSDKProgress.getCompletedUnitCount() + 1);
                        }
                        adobeCSDKExceptionCreateDCXError = e6;
                    }
                    if (e3 == null && adobeCSDKProgress.isCancelled()) {
                        e3 = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null);
                    }
                    if (e3 == null) {
                        try {
                            adobeDCXComposite.commitChanges();
                        } catch (AdobeDCXException e8) {
                            e3 = e8;
                        }
                        adobeCSDKProgress.setCompletedUnitCount(adobeCSDKProgress.getCompletedUnitCount() + 1);
                    }
                    AdobeCSDKException adobeCSDKException3 = e3;
                    if (adobeCSDKException3 == null) {
                        String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(str3, "mimetype");
                        if (new File(strStringByAppendingLastPathComponent2).exists()) {
                            try {
                                strConvertToUTF8 = AdobeDCXUtils.convertToUTF8(AdobeDCXUtils.fRead(strStringByAppendingLastPathComponent2));
                            } catch (IOException e9) {
                                AdobeLogger.log(Level.ERROR, "MimeTypefile read failed", e9.getMessage());
                                strConvertToUTF8 = null;
                            }
                            adobeCSDKProgress.setCompletedUnitCount(adobeCSDKProgress.getCompletedUnitCount() + 1);
                            String str6 = strConvertToUTF8;
                            adobeCSDKExceptionCreateDCXError = adobeCSDKException3;
                            str4 = str6;
                        } else {
                            strConvertToUTF8 = null;
                            adobeCSDKProgress.setCompletedUnitCount(adobeCSDKProgress.getCompletedUnitCount() + 1);
                            String str62 = strConvertToUTF8;
                            adobeCSDKExceptionCreateDCXError = adobeCSDKException3;
                            str4 = str62;
                        }
                    } else {
                        adobeCSDKExceptionCreateDCXError = adobeCSDKException3;
                        str4 = null;
                    }
                } else {
                    str4 = null;
                    adobeDCXComposite = null;
                }
                if (z) {
                    try {
                        FileUtils.deleteDirectory(new File(str3));
                    } catch (IOException e10) {
                        adobeCSDKExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFileIO, null, e10);
                    }
                }
                AdobeDCXCompositeXfer.executeBlockOnQueue(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.27.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adobeCSDKExceptionCreateDCXError != null) {
                            if (iAdobeDCXCreateCompositeCompletionHandler != null) {
                                iAdobeDCXCreateCompositeCompletionHandler.onFailure(adobeCSDKExceptionCreateDCXError);
                            }
                        } else if (iAdobeDCXCreateCompositeCompletionHandler != null) {
                            iAdobeDCXCreateCompositeCompletionHandler.onSuccess(adobeDCXComposite, str4);
                        }
                    }
                }, handler);
            }
        }).start();
    }

    public static boolean updateOrdinalsOfComposites(ArrayList<AdobeDCXComposite> arrayList, AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        ArrayList arrayList2 = new ArrayList();
        Iterator<AdobeDCXComposite> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(AdobeStorageDCXServiceMapping.resourceForComposite(it.next()));
        }
        return adobeStorageSession.updateOrdinalsOfAssets(arrayList2);
    }

    public static AdobeNetworkHttpTaskHandle updateOrdinalsOfComposites(ArrayList<AdobeDCXComposite> arrayList, AdobeStorageSession adobeStorageSession, final IAdobeDCXOrdinalUpdateCompletionHandler iAdobeDCXOrdinalUpdateCompletionHandler, Handler handler) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<AdobeDCXComposite> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(AdobeStorageDCXServiceMapping.resourceForComposite(it.next()));
        }
        return adobeStorageSession.updateOrdinalsOfAssets(arrayList2, new IAdobeDCXMultiAssetCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.28
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXMultiAssetCompletionHandler
            public void onCompletion(List<AdobeStorageResourceItem> list, AdobeCSDKException adobeCSDKException) {
                if (adobeCSDKException != null && iAdobeDCXOrdinalUpdateCompletionHandler != null) {
                    iAdobeDCXOrdinalUpdateCompletionHandler.onFailure(adobeCSDKException);
                } else if (iAdobeDCXOrdinalUpdateCompletionHandler != null) {
                    iAdobeDCXOrdinalUpdateCompletionHandler.onSuccess();
                }
            }
        }, handler);
    }

    public static boolean updateOrdinalOfComposite(AdobeDCXComposite adobeDCXComposite, AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        return adobeStorageSession.updateOrdinalOfAsset(AdobeStorageDCXServiceMapping.resourceForComposite(adobeDCXComposite));
    }

    public static AdobeNetworkHttpTaskHandle updateOrdinalOfComposite(AdobeDCXComposite adobeDCXComposite, AdobeStorageSession adobeStorageSession, final IAdobeDCXOrdinalUpdateCompletionHandler iAdobeDCXOrdinalUpdateCompletionHandler, Handler handler) {
        return adobeStorageSession.updateOrdinalOfAsset(AdobeStorageDCXServiceMapping.resourceForComposite(adobeDCXComposite), new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.29
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                if (adobeCSDKException != null && iAdobeDCXOrdinalUpdateCompletionHandler != null) {
                    iAdobeDCXOrdinalUpdateCompletionHandler.onFailure(adobeCSDKException);
                } else if (iAdobeDCXOrdinalUpdateCompletionHandler != null) {
                    iAdobeDCXOrdinalUpdateCompletionHandler.onSuccess();
                }
            }
        }, handler);
    }

    public static AdobeNetworkHttpTaskHandle pullHeaderInfoForManifest(final AdobeDCXComposite adobeDCXComposite, final IAdobeSessionProtocol iAdobeSessionProtocol, final IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, final Handler handler) {
        initialize();
        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pullHeaderInfoForManifest compositeId = " + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null));
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.30
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                    AdobeDCXCompositeXfer.postHeaderInfoForManifestResult(handler, AdobeDCXCompositeXfer.createRunnableForPostingHeaderInfoResult(adobeNetworkCompositeHttpTaskHandle, iAdobeDCXResourceRequestCompletionHandler, iAdobeSessionProtocol.getHeaderInfoForManifestOfComposite(adobeDCXComposite), null));
                } catch (AdobeCSDKException e2) {
                    AdobeDCXCompositeXfer.postHeaderInfoForManifestResult(handler, AdobeDCXCompositeXfer.createRunnableForPostingHeaderInfoResult(adobeNetworkCompositeHttpTaskHandle, iAdobeDCXResourceRequestCompletionHandler, null, e2));
                }
                return null;
            }
        }, AdobeNetworkRequestPriority.NORMAL);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue.execute(adobePriorityFutureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle getAssetsInSyncGroup(final AdobeStorageResourceCollection adobeStorageResourceCollection, final AdobeStoragePagingMode adobeStoragePagingMode, final IAdobeSessionProtocol iAdobeSessionProtocol, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, final Handler handler) {
        initialize();
        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside getAssetsInSyncGroup");
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.31
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    adobeNetworkCompositeHttpTaskHandle.setScheduled(true);
                    AdobeDCXCompositeXfer.postAssetsInSyncGroupResult(handler, AdobeDCXCompositeXfer.createRunnableForPostingAssetsSyncResult(adobeNetworkCompositeHttpTaskHandle, iAdobeStorageCollectionRequestCompletionHandler, iAdobeSessionProtocol.getAssetsInSyncGroup(adobeStorageResourceCollection, adobeStoragePagingMode), null));
                } catch (AdobeCSDKException e2) {
                    AdobeDCXCompositeXfer.postAssetsInSyncGroupResult(handler, AdobeDCXCompositeXfer.createRunnableForPostingAssetsSyncResult(adobeNetworkCompositeHttpTaskHandle, iAdobeStorageCollectionRequestCompletionHandler, null, (AdobeAssetException) e2));
                }
                return null;
            }
        }, AdobeNetworkRequestPriority.NORMAL);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue.execute(adobePriorityFutureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle remixPublishedCompositeAtHref(URI uri, String str, String str2, String str3, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, Handler handler, IAdobeDCXRemixCompletionHandler iAdobeDCXRemixCompletionHandler) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(uri, "publishHref");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str2, "path");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str3, "stageDir");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeCommunitySessionProtocol, "publishSession");
        initialize();
        AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        internalRemixPublishedCompositeAtHref(uri, str, str2, str3, null, iAdobeCommunitySessionProtocol, adobeNetworkCompositeHttpTaskHandle, handler, iAdobeDCXRemixCompletionHandler);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle resumeRemixPublishedCompositeFromStageDirectory(String str, String str2, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, Handler handler, final IAdobeDCXRemixCompletionHandler iAdobeDCXRemixCompletionHandler) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str2, "path");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "stageDir");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeCommunitySessionProtocol, "publishSession");
        AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        try {
            AdobeDCXComposite adobeDCXCompositeCompositeStoredAt = AdobeDCXComposite.compositeStoredAt(str, null);
            internalRemixPublishedCompositeAtHref(adobeDCXCompositeCompositeStoredAt.getHref(), null, str2, str, adobeDCXCompositeCompositeStoredAt, iAdobeCommunitySessionProtocol, adobeNetworkCompositeHttpTaskHandle, handler, iAdobeDCXRemixCompletionHandler);
        } catch (AdobeDCXException e2) {
            final AdobeDCXException adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidStageDirectory, null, e2);
            Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.32
                @Override // java.lang.Runnable
                public void run() {
                    if (iAdobeDCXRemixCompletionHandler != null) {
                        iAdobeDCXRemixCompletionHandler.onComplete(null, adobeDCXExceptionCreateDCXError);
                    }
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                new Thread(runnable).run();
            }
        }
        return adobeNetworkCompositeHttpTaskHandle;
    }

    private static void internalRemixPublishedCompositeAtHref(final URI uri, final String str, final String str2, final String str3, final AdobeDCXComposite adobeDCXComposite, final IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, final Handler handler, final IAdobeDCXRemixCompletionHandler iAdobeDCXRemixCompletionHandler) {
        final IAdobeDCXRemixCompletionHandler iAdobeDCXRemixCompletionHandler2 = new IAdobeDCXRemixCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.33
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXRemixCompletionHandler
            public void onComplete(final AdobeDCXComposite adobeDCXComposite2, final AdobeCSDKException adobeCSDKException) {
                AdobeDCXComposite.removeCompositeFromCache(str3);
                Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.33.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (iAdobeDCXRemixCompletionHandler != null) {
                            iAdobeDCXRemixCompletionHandler.onComplete(adobeDCXComposite2, adobeCSDKException);
                        }
                    }
                };
                if (handler != null) {
                    handler.post(runnable);
                } else {
                    new Thread(runnable).run();
                }
            }
        };
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.34
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x010c  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse call() throws java.lang.Exception {
                /*
                    Method dump skipped, instruction units count: 314
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.AnonymousClass34.call():com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse");
            }
        }, AdobeNetworkRequestPriority.NORMAL);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue().execute(adobePriorityFutureTask);
    }

    public static AdobeNetworkHttpTaskHandle publishComposite(AdobeDCXComposite adobeDCXComposite, AdobeRemixData adobeRemixData, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, String str, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler, Handler handler, IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(adobeDCXComposite, "composite");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(adobeRemixData, "remixData");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobePublicationRecordProtocol, "publicationRecord");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "stageDirPath");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeCommunitySessionProtocol, "publishSession");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeDCXPublishCompletionHandler, "completionHandler");
        AdobeDCXCompositeBranch compositeBranchWithComposite = null;
        try {
            compositeBranchWithComposite = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(adobeDCXComposite, adobeDCXComposite.getCurrent().getManifest().getCopy());
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.publishComposite", null, e2);
        }
        return internalPublish(compositeBranchWithComposite, null, adobeRemixData, adobeDCXComposite.getMetadata(), iAdobePublicationRecordProtocol, str, null, null, iAdobeCommunitySessionProtocol, iAdobeDCXPublishMetadataHandler, handler, iAdobeDCXPublishCompletionHandler);
    }

    public static AdobeNetworkHttpTaskHandle updatePublishedComposite(AdobeDCXComposite adobeDCXComposite, AdobeDCXComposite adobeDCXComposite2, AdobeRemixData adobeRemixData, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, String str, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler, Handler handler, IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler) {
        AdobeCSDKErrorUtils.verifyArgumentNotNil(adobeDCXComposite, "publishedComposite");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(adobeDCXComposite2, "modifiedComposite");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "stageDirPath");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeCommunitySessionProtocol, "publishSession");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeDCXPublishCompletionHandler, "completionHandler");
        AdobeDCXCompositeBranch compositeBranchWithComposite = null;
        try {
            compositeBranchWithComposite = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(adobeDCXComposite2, adobeDCXComposite2.getCurrent().getManifest().getCopy());
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.updatePublishedComposite", null, e2);
        }
        return internalPublish(compositeBranchWithComposite, adobeDCXComposite, adobeRemixData, adobeDCXComposite2.getMetadata(), iAdobePublicationRecordProtocol, str, null, null, iAdobeCommunitySessionProtocol, iAdobeDCXPublishMetadataHandler, handler, iAdobeDCXPublishCompletionHandler);
    }

    public static AdobeNetworkHttpTaskHandle resumePublishFromStageDirectory(String str, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, Handler handler, final IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler) {
        AdobeDCXPublishJournal adobeDCXPublishJournalJournalFromFile;
        AdobeDCXComposite adobeDCXCompositeCompositeStoredAt;
        AdobeCSDKErrorUtils.verifyArgumentNotNil(str, "stageDirPath");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeCommunitySessionProtocol, "publishSession");
        AdobeCSDKErrorUtils.verifyArgumentNotNil(iAdobeDCXPublishCompletionHandler, "completionHandler");
        try {
            adobeDCXPublishJournalJournalFromFile = AdobeDCXPublishJournal.journalFromFile(publishJournalPathAt(str));
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
            adobeDCXPublishJournalJournalFromFile = null;
        }
        if (adobeDCXPublishJournalJournalFromFile == null || !adobeDCXPublishJournalJournalFromFile.stageIsComplete()) {
            adobeDCXCompositeCompositeStoredAt = null;
        } else {
            try {
                adobeDCXCompositeCompositeStoredAt = AdobeDCXComposite.compositeStoredAt(str, null);
            } catch (AdobeDCXException e3) {
                e = e3;
                adobeDCXCompositeCompositeStoredAt = null;
            }
        }
        if (adobeDCXCompositeCompositeStoredAt != null) {
            return internalPublish(null, null, null, null, null, str, adobeDCXCompositeCompositeStoredAt, adobeDCXPublishJournalJournalFromFile, iAdobeCommunitySessionProtocol, null, handler, iAdobeDCXPublishCompletionHandler);
        }
        final AdobeDCXException adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidStageDirectory, null, e);
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.35
            @Override // java.lang.Runnable
            public void run() {
                if (iAdobeDCXPublishCompletionHandler != null) {
                    iAdobeDCXPublishCompletionHandler.onComplete(null, adobeDCXExceptionCreateDCXError);
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).run();
        }
        return new AdobeNetworkCompositeHttpTaskHandle();
    }

    private static AdobeNetworkCompositeHttpTaskHandle internalPublish(AdobeDCXCompositeBranch adobeDCXCompositeBranch, final AdobeDCXComposite adobeDCXComposite, AdobeRemixData adobeRemixData, AdobeDCXMetadata adobeDCXMetadata, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, final String str, final AdobeDCXComposite adobeDCXComposite2, final AdobeDCXPublishJournal adobeDCXPublishJournal, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler, final Handler handler, final IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler) {
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        final boolean[] zArr = {false};
        final IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler2 = new IAdobeDCXPublishCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.36
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishCompletionHandler
            public void onComplete(final String str2, final AdobeCSDKException adobeCSDKException) {
                if (!zArr[0]) {
                    if (adobeCSDKException == null) {
                        adobeNetworkCompositeHttpTaskHandle.allComponentsHaveBeenAdded();
                        if (str2 == null) {
                            adobeCSDKException = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorOperationCancelled, null);
                        }
                    }
                    adobeNetworkCompositeHttpTaskHandle.releaseRequests();
                    AdobeDCXComposite.removeCompositeFromCache(str);
                    Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.36.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXPublishCompletionHandler != null) {
                                iAdobeDCXPublishCompletionHandler.onComplete(str2, adobeCSDKException);
                            }
                        }
                    };
                    if (handler != null) {
                        handler.post(runnable);
                    } else {
                        new Thread(runnable).run();
                    }
                    zArr[0] = true;
                }
            }
        };
        final C1InternalPublishImpl c1InternalPublishImpl = new C1InternalPublishImpl(adobeNetworkCompositeHttpTaskHandle, iAdobeDCXPublishCompletionHandler2, iAdobeCommunitySessionProtocol, adobeDCXCompositeBranch, str, adobeDCXComposite, iAdobePublicationRecordProtocol, adobeRemixData, adobeDCXMetadata, iAdobeDCXPublishMetadataHandler);
        AdobePriorityFutureTask adobePriorityFutureTask = new AdobePriorityFutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.37
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() throws AdobeDCXException {
                AdobeDCXException adobeDCXException;
                AdobeDCXPublishJournal adobeDCXPublishJournalCreatePublishJournalInStage;
                AdobeDCXPublishJournal adobeDCXPublishJournal2 = adobeDCXPublishJournal;
                if (adobeDCXPublishJournal2 == null) {
                    try {
                        adobeDCXPublishJournalCreatePublishJournalInStage = AdobeDCXCompositeXfer.createPublishJournalInStage(str, adobeDCXComposite);
                        adobeDCXException = null;
                    } catch (AdobeDCXException e2) {
                        adobeDCXException = e2;
                        adobeDCXPublishJournalCreatePublishJournalInStage = adobeDCXPublishJournal2;
                    }
                } else {
                    adobeDCXPublishJournalCreatePublishJournalInStage = adobeDCXPublishJournal2;
                    adobeDCXException = null;
                }
                if (adobeDCXException == null) {
                    AdobeDCXComposite adobeDCXComposite3 = adobeDCXComposite2;
                    if (adobeDCXComposite3 == null) {
                        c1InternalPublishImpl.doStage(adobeDCXPublishJournalCreatePublishJournalInStage);
                    } else if (!adobeDCXPublishJournalCreatePublishJournalInStage.pushIsComplete()) {
                        c1InternalPublishImpl.doPush(adobeDCXComposite3, adobeDCXPublishJournalCreatePublishJournalInStage);
                    } else if (!adobeDCXPublishJournalCreatePublishJournalInStage.publishIsComplete()) {
                        c1InternalPublishImpl.doPublish(adobeDCXComposite3, adobeDCXPublishJournalCreatePublishJournalInStage);
                    } else {
                        iAdobeDCXPublishCompletionHandler2.onComplete(adobeDCXPublishJournalCreatePublishJournalInStage.assetHref(), null);
                    }
                } else {
                    iAdobeDCXPublishCompletionHandler2.onComplete(null, adobeDCXException);
                }
                return null;
            }
        }, AdobeNetworkRequestPriority.NORMAL);
        adobeNetworkCompositeHttpTaskHandle.setFuture(adobePriorityFutureTask);
        transferQueue().execute(adobePriorityFutureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1InternalPublishImpl, reason: invalid class name */
    class C1InternalPublishImpl {
        final /* synthetic */ AdobeNetworkCompositeHttpTaskHandle val$compRequest;
        final /* synthetic */ AdobeDCXMetadata val$metadata;
        final /* synthetic */ IAdobeDCXPublishMetadataHandler val$metadataHandler;
        final /* synthetic */ IAdobePublicationRecordProtocol val$publicationRecord;
        final /* synthetic */ IAdobeDCXPublishCompletionHandler val$publishCompletionHandler;
        final /* synthetic */ IAdobeCommunitySessionProtocol val$publishSession;
        final /* synthetic */ AdobeDCXComposite val$publishedComposite;
        final /* synthetic */ AdobeRemixData val$remixData;
        final /* synthetic */ AdobeDCXCompositeBranch val$sourceBranch;
        final /* synthetic */ String val$stageDirPath;

        C1InternalPublishImpl(AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, IAdobeDCXPublishCompletionHandler iAdobeDCXPublishCompletionHandler, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, AdobeDCXComposite adobeDCXComposite, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, AdobeRemixData adobeRemixData, AdobeDCXMetadata adobeDCXMetadata, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler) {
            this.val$compRequest = adobeNetworkCompositeHttpTaskHandle;
            this.val$publishCompletionHandler = iAdobeDCXPublishCompletionHandler;
            this.val$publishSession = iAdobeCommunitySessionProtocol;
            this.val$sourceBranch = adobeDCXCompositeBranch;
            this.val$stageDirPath = str;
            this.val$publishedComposite = adobeDCXComposite;
            this.val$publicationRecord = iAdobePublicationRecordProtocol;
            this.val$remixData = adobeRemixData;
            this.val$metadata = adobeDCXMetadata;
            this.val$metadataHandler = iAdobeDCXPublishMetadataHandler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doPublish(AdobeDCXComposite adobeDCXComposite, final AdobeDCXPublishJournal adobeDCXPublishJournal) {
            AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandlePublishCompositeUploadedTo;
            if (this.val$compRequest.isCancelled()) {
                this.val$publishCompletionHandler.onComplete(null, null);
                return;
            }
            if (adobeDCXPublishJournal.publicationRecordData() == null && adobeDCXPublishJournal.assetHref() != null) {
                this.val$publishCompletionHandler.onComplete(adobeDCXPublishJournal.assetHref(), null);
                return;
            }
            if (this.val$compRequest.getTotalUnitCount() < 0) {
                this.val$compRequest.setTotalUnitCount(1000);
                this.val$compRequest.setCompletedUnitCount(0L);
            } else {
                this.val$compRequest.setTotalUnitCount(this.val$compRequest.getTotalUnitCount() + ((long) 1000));
            }
            if (adobeDCXPublishJournal.assetHref() != null) {
                adobeNetworkHttpTaskHandlePublishCompositeUploadedTo = this.val$publishSession.updateCompositePublishedAt(adobeDCXPublishJournal.assetHref(), adobeDCXPublishJournal.publicationRecordData(), null, new IAdobeDCXPublishHrefCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1InternalPublishImpl.1
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishHrefCompletionHandler
                    public void onComplete(String str, AdobeCSDKException adobeCSDKException) {
                        if (adobeCSDKException == null) {
                            adobeDCXPublishJournal.recordPublishIsComplete();
                        }
                        C1InternalPublishImpl.this.val$publishCompletionHandler.onComplete(str, adobeCSDKException);
                    }
                });
            } else {
                adobeNetworkHttpTaskHandlePublishCompositeUploadedTo = this.val$publishSession.publishCompositeUploadedTo(adobeDCXComposite.getHref().toString(), adobeDCXComposite.getCurrent().getType(), adobeDCXPublishJournal.publicationRecordData(), null, new IAdobeDCXPublishHrefCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1InternalPublishImpl.2
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishHrefCompletionHandler
                    public void onComplete(String str, AdobeCSDKException adobeCSDKException) {
                        if (adobeCSDKException == null) {
                            adobeDCXPublishJournal.recordAssetHref(str);
                            adobeDCXPublishJournal.recordPublishIsComplete();
                        }
                        C1InternalPublishImpl.this.val$publishCompletionHandler.onComplete(str, adobeCSDKException);
                    }
                });
            }
            this.val$compRequest.addComponentRequest(adobeNetworkHttpTaskHandlePublishCompositeUploadedTo, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doPush(final AdobeDCXComposite adobeDCXComposite, final AdobeDCXPublishJournal adobeDCXPublishJournal) {
            if (this.val$compRequest.isCancelled()) {
                this.val$publishCompletionHandler.onComplete(null, null);
                return;
            }
            try {
                AdobeDCXCompositeXfer.internalPushComposite(adobeDCXComposite, adobeDCXComposite.getCurrent().getManifest(), false, this.val$publishSession, this.val$compRequest, null);
                if (this.val$compRequest.isCancelled()) {
                    this.val$publishCompletionHandler.onComplete(null, null);
                } else {
                    this.val$publishSession.updatePublicationRecordData(adobeDCXPublishJournal.publicationRecordData(), adobeDCXComposite.getPushed(), null, new IAdobeDCXPublicationRecordDataCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1InternalPublishImpl.3
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublicationRecordDataCompletionHandler
                        public void onComplete(JSONObject jSONObject, AdobeCSDKException adobeCSDKException) {
                            if (adobeCSDKException == null && jSONObject != null) {
                                adobeDCXPublishJournal.recordPublicationRecordData(jSONObject);
                                adobeDCXPublishJournal.recordPushIsComplete();
                                C1InternalPublishImpl.this.doPublish(adobeDCXComposite, adobeDCXPublishJournal);
                                return;
                            }
                            C1InternalPublishImpl.this.val$publishCompletionHandler.onComplete(null, adobeCSDKException);
                        }
                    });
                }
            } catch (AdobeCSDKException e2) {
                if (this.val$compRequest.isCancelled()) {
                    this.val$publishCompletionHandler.onComplete(null, null);
                } else {
                    this.val$publishCompletionHandler.onComplete(null, e2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doStage(final AdobeDCXPublishJournal adobeDCXPublishJournal) throws AdobeDCXException {
            AdobeDCXCompositeXfer.stageCompositeBranch(this.val$sourceBranch, this.val$stageDirPath, this.val$publishedComposite, adobeDCXPublishJournal, this.val$publicationRecord, this.val$remixData, this.val$metadata, this.val$metadataHandler, this.val$publishSession, this.val$compRequest, null, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1InternalPublishImpl.4
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                public void onCompletion(AdobeDCXComposite adobeDCXComposite) {
                    C1InternalPublishImpl.this.doPush(adobeDCXComposite, adobeDCXPublishJournal);
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                public void onError(AdobeCSDKException adobeCSDKException) {
                    C1InternalPublishImpl.this.val$publishCompletionHandler.onComplete(null, adobeCSDKException);
                }
            });
        }
    }

    private static String publishJournalPathAt(String str) {
        return AdobeDCXUtils.stringByAppendingLastPathComponent(str, "publish.journal");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String resourcesPathAt(String str) {
        return AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(str, "resources");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeDCXPublishJournal createPublishJournalInStage(String str, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        AdobeDCXPublishJournal adobeDCXPublishJournal = null;
        String strPublishJournalPathAt = publishJournalPathAt(str);
        if (!new File(strPublishJournalPathAt).exists()) {
            try {
                AdobeDCXPublishJournal adobeDCXPublishJournalJournalPersistedAt = AdobeDCXPublishJournal.journalPersistedAt(strPublishJournalPathAt);
                e = null;
                adobeDCXPublishJournal = adobeDCXPublishJournalJournalPersistedAt;
            } catch (AdobeDCXException e2) {
                e = e2;
            }
            if (e == null) {
                if (adobeDCXComposite != null && adobeDCXComposite.getHref() != null) {
                    adobeDCXPublishJournal.recordAssetHref(adobeDCXComposite.getHref().toString());
                }
                return adobeDCXPublishJournal;
            }
            throw e;
        }
        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorNonEmptyStageDirectory, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void stageCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, AdobeDCXComposite adobeDCXComposite, AdobeDCXPublishJournal adobeDCXPublishJournal, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, AdobeRemixData adobeRemixData, AdobeDCXMetadata adobeDCXMetadata, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, final Handler handler, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler) throws AdobeDCXException {
        IAdobeDCXStageCompletionHandler iAdobeDCXStageCompletionHandler = new IAdobeDCXStageCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.38
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXStageCompletionHandler
            public void onComplete(final AdobeDCXComposite adobeDCXComposite2, final AdobeCSDKException adobeCSDKException) {
                Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.38.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                            if (adobeDCXComposite2 != null) {
                                iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite2);
                            } else {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeCSDKException);
                            }
                        }
                    }
                };
                if (handler != null) {
                    handler.post(runnable);
                } else {
                    new Thread(runnable).run();
                }
            }
        };
        boolean z = adobeDCXComposite != null;
        C1StageCompositeBranchImpl c1StageCompositeBranchImpl = new C1StageCompositeBranchImpl(adobeDCXMetadata, iAdobeDCXPublishMetadataHandler, iAdobePublicationRecordProtocol, str, iAdobeCommunitySessionProtocol, adobeDCXComposite, handler, adobeDCXPublishJournal, z, iAdobeDCXStageCompletionHandler, adobeNetworkCompositeHttpTaskHandle, adobeDCXCompositeBranch);
        if (!z) {
            c1StageCompositeBranchImpl.doStage(adobeRemixData, null);
            return;
        }
        try {
            AdobeDCXCompositeBranch adobeDCXCompositeBranchInternalPullMinimalComposite = internalPullMinimalComposite(adobeDCXComposite, iAdobeCommunitySessionProtocol, adobeNetworkCompositeHttpTaskHandle, null);
            if (adobeDCXCompositeBranchInternalPullMinimalComposite == null) {
                adobeDCXCompositeBranchInternalPullMinimalComposite = adobeDCXComposite.getPulled();
            }
            if (adobeDCXCompositeBranchInternalPullMinimalComposite == null) {
                adobeDCXCompositeBranchInternalPullMinimalComposite = adobeDCXComposite.getCurrent();
            }
            if (adobeDCXCompositeBranchInternalPullMinimalComposite != null) {
                if (adobeRemixData == null) {
                    adobeRemixData = adobeDCXCompositeBranchInternalPullMinimalComposite.getMetadata().createRemixData();
                }
                c1StageCompositeBranchImpl.doStage(adobeRemixData, adobeDCXCompositeBranchInternalPullMinimalComposite);
            }
        } catch (AdobeCSDKException e2) {
            iAdobeDCXStageCompletionHandler.onComplete(null, AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidStageDirectory, null, e2));
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer$1StageCompositeBranchImpl, reason: invalid class name */
    class C1StageCompositeBranchImpl {
        final /* synthetic */ AdobeNetworkCompositeHttpTaskHandle val$compRequest;
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ boolean val$isUpdate;
        final /* synthetic */ AdobeDCXPublishJournal val$journal;
        final /* synthetic */ AdobeDCXMetadata val$metadata;
        final /* synthetic */ IAdobeDCXPublishMetadataHandler val$metadataHandler;
        final /* synthetic */ IAdobePublicationRecordProtocol val$publicationRecord;
        final /* synthetic */ IAdobeCommunitySessionProtocol val$publishSession;
        final /* synthetic */ AdobeDCXComposite val$publishedComposite;
        final /* synthetic */ AdobeDCXCompositeBranch val$sourceBranch;
        final /* synthetic */ IAdobeDCXStageCompletionHandler val$stageCompletionHandler;
        final /* synthetic */ String val$stageDirPath;

        C1StageCompositeBranchImpl(AdobeDCXMetadata adobeDCXMetadata, IAdobeDCXPublishMetadataHandler iAdobeDCXPublishMetadataHandler, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, String str, IAdobeCommunitySessionProtocol iAdobeCommunitySessionProtocol, AdobeDCXComposite adobeDCXComposite, Handler handler, AdobeDCXPublishJournal adobeDCXPublishJournal, boolean z, IAdobeDCXStageCompletionHandler iAdobeDCXStageCompletionHandler, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
            this.val$metadata = adobeDCXMetadata;
            this.val$metadataHandler = iAdobeDCXPublishMetadataHandler;
            this.val$publicationRecord = iAdobePublicationRecordProtocol;
            this.val$stageDirPath = str;
            this.val$publishSession = iAdobeCommunitySessionProtocol;
            this.val$publishedComposite = adobeDCXComposite;
            this.val$handler = handler;
            this.val$journal = adobeDCXPublishJournal;
            this.val$isUpdate = z;
            this.val$stageCompletionHandler = iAdobeDCXStageCompletionHandler;
            this.val$compRequest = adobeNetworkCompositeHttpTaskHandle;
            this.val$sourceBranch = adobeDCXCompositeBranch;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finalizeStagedComposite(final AdobeDCXComposite adobeDCXComposite, final AdobeDCXManifest adobeDCXManifest, final AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeRemixData adobeRemixData, List<String> list, AdobeCSDKException adobeCSDKException) throws AdobeDCXException {
            AdobeCSDKException e2;
            if (adobeCSDKException == null) {
                AdobeDCXMutableMetadata mutableCopy = this.val$metadata.getMutableCopy();
                mutableCopy.appendHistoryEvent(BehanceSDKPublishConstants.KEY_PUBLISHED);
                mutableCopy.addLicenseInfo(adobeRemixData.licenseType, adobeRemixData.attributionURL, adobeRemixData.attributionName);
                try {
                    mutableCopy.addOriginUrl(adobeRemixData.originURL, adobeRemixData.manageUIURL);
                } catch (AdobeDCXMetadataException e3) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.finalizeStagedComposite", e3.getDescription());
                }
                if (this.val$metadataHandler == null || this.val$metadataHandler.onComplete(mutableCopy, adobeCSDKException)) {
                    adobeDCXComposite.getCurrent().setMetadata(mutableCopy);
                }
            }
            if (list == null) {
                e2 = adobeCSDKException;
                break;
            }
            AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
            AdobeCSDKException adobeCSDKException2 = null;
            AdobeDCXMutableMetadata adobeDCXMutableMetadataCreateMetadataForRenditionWithType = null;
            String type = null;
            Iterator<String> it = list.iterator();
            do {
                AdobeCSDKException adobeCSDKException3 = adobeCSDKException2;
                AdobeDCXMutableMetadata adobeDCXMutableMetadata = adobeDCXMutableMetadataCreateMetadataForRenditionWithType;
                String str = type;
                if (!it.hasNext()) {
                    e2 = adobeCSDKException;
                    break;
                }
                AdobeDCXComponent componentWithId = current.getComponentWithId(it.next());
                if (adobeDCXMutableMetadata == null || !AdobeDCXUtils.areStringsEqual(str, componentWithId.getType())) {
                    type = componentWithId.getType();
                    try {
                        adobeDCXMutableMetadataCreateMetadataForRenditionWithType = adobeDCXComposite.createMetadataForRenditionWithType(type);
                    } catch (AdobeDCXException e4) {
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.finalizeStagedComposite", e4.getDescription());
                        adobeDCXMutableMetadataCreateMetadataForRenditionWithType = adobeDCXMutableMetadata;
                    }
                } else {
                    type = str;
                    adobeDCXMutableMetadataCreateMetadataForRenditionWithType = adobeDCXMutableMetadata;
                }
                try {
                    current.updateMetadata(adobeDCXMutableMetadataCreateMetadataForRenditionWithType, componentWithId);
                    adobeCSDKException2 = adobeCSDKException3;
                } catch (AdobeDCXException e5) {
                    adobeCSDKException2 = adobeCSDKException;
                }
            } while (adobeCSDKException2 == null);
            e2 = adobeCSDKException2;
            if (e2 == null && this.val$publicationRecord != null) {
                String strResourcesPathAt = AdobeDCXCompositeXfer.resourcesPathAt(this.val$stageDirPath);
                if (new File(strResourcesPathAt).mkdirs()) {
                    try {
                        this.val$publicationRecord.stageResourcesAt(strResourcesPathAt);
                    } catch (AdobeCommunityException e6) {
                        e2 = e6;
                    }
                }
            }
            if (e2 == null) {
                AdobeNetworkHttpTaskHandle publishHrefOfComposite = this.val$publishSession.getPublishHrefOfComposite(adobeDCXComposite, this.val$publicationRecord, this.val$publishedComposite, this.val$handler, new IAdobeDCXPublishHrefCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.1StageCompositeBranchImpl.1
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishHrefCompletionHandler
                    public void onComplete(String str2, AdobeCSDKException adobeCSDKException4) {
                        if (adobeCSDKException4 == null) {
                            adobeDCXComposite.setHref(URI.create(str2));
                            if (adobeDCXCompositeBranch != null) {
                                adobeDCXManifest.setEtag(adobeDCXCompositeBranch.getManifest().getEtag());
                            }
                        }
                        if (adobeCSDKException4 == null) {
                            try {
                                adobeDCXComposite.commitChanges();
                                e = adobeCSDKException4;
                            } catch (AdobeDCXException e7) {
                                e = e7;
                            }
                        } else {
                            e = adobeCSDKException4;
                        }
                        if (e == null && C1StageCompositeBranchImpl.this.val$publicationRecord != null) {
                            try {
                                C1StageCompositeBranchImpl.this.val$journal.recordPublicationRecordData(C1StageCompositeBranchImpl.this.val$isUpdate ? C1StageCompositeBranchImpl.this.val$publicationRecord.getDataForUpdate() : C1StageCompositeBranchImpl.this.val$publicationRecord.getDataForCreation());
                            } catch (AdobeCommunityException e8) {
                                e = e8;
                            }
                        }
                        if (e == null) {
                            C1StageCompositeBranchImpl.this.val$journal.recordStageIsComplete();
                        } else {
                            e = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidStageDirectory, null, e);
                        }
                        C1StageCompositeBranchImpl.this.val$stageCompletionHandler.onComplete(e == null ? adobeDCXComposite : null, e);
                    }
                });
                if (publishHrefOfComposite != null) {
                    this.val$compRequest.addComponentRequest(publishHrefOfComposite, 0L);
                    return;
                }
                return;
            }
            this.val$stageCompletionHandler.onComplete(null, AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidStageDirectory, null, e2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:117:0x02ec  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x02ef  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doStage(final com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData r26, final com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch r27) throws com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException {
            /*
                Method dump skipped, instruction units count: 772
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer.C1StageCompositeBranchImpl.doStage(com.adobe.creativesdk.foundation.adobeinternal.remix.AdobeRemixData, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch):void");
        }
    }
}
