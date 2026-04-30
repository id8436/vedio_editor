package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPullCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPushCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import junit.framework.Assert;
import org.apache.commons.io.Charsets;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
class AdobePSDCompositeXfer {
    AdobePSDCompositeXfer() {
    }

    public static AdobeNetworkHttpTaskHandle pushPSDComposite(final AdobePSDComposite adobePSDComposite, final boolean z, final AdobeImageSession adobeImageSession, final AdobeStorageSession adobeStorageSession, final IAdobePSDPushCompletionHandler iAdobePSDPushCompletionHandler, final Handler handler) {
        final IAdobeDCXCompositeManifestUploadRequest iAdobeDCXCompositeManifestUploadRequest = new IAdobeDCXCompositeManifestUploadRequest() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.1
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest
            public AdobeNetworkHttpTaskHandle perform(final AdobeDCXManifest adobeDCXManifest, boolean z2, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler) {
                final AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = adobeStorageSession.resourceForManifest(adobeDCXManifest, adobePSDComposite.getDcxComposite());
                adobeStorageResourceItemResourceForManifest.setData(adobeDCXManifest.getRemoteData().getBytes(Charsets.UTF_8));
                try {
                    return adobeImageSession.updatePSDAt(adobePSDComposite.getPsdHref(), adobeStorageResourceItemResourceForManifest, AdobePSDCompositeXfer.ensureLeadingSlash(adobePSDComposite.getDcxComposite().getHref().toString()), z2, new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.1.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem) {
                            iAdobeDCXManifestRequestCompletionHandler.onCompletion(AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest(adobeDCXManifest, adobePSDComposite.getDcxComposite(), adobeStorageResourceItemResourceForManifest), null);
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeCSDKException adobeCSDKException) {
                            iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeCSDKException);
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    }, null);
                } catch (Exception e2) {
                    System.out.print("\"Hello\"");
                    return null;
                }
            }
        };
        if (adobePSDComposite.getDcxComposite().getCurrent().isDirty()) {
            AdobeLogger.log(Level.WARN, "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. ", "Uncommitted changes will not be included in the pushed composite.");
        }
        try {
            final AdobeDCXManifest adobeDCXManifestCopyCommittedManifest = adobePSDComposite.getDcxComposite().copyCommittedManifest();
            final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
            FutureTask futureTask = new FutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public AdobeNetworkHttpResponse call() {
                    try {
                        AdobeDCXCompositeXfer.internalPushComposite(adobePSDComposite.getDcxComposite(), adobeDCXManifestCopyCommittedManifest, z, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle, iAdobeDCXCompositeManifestUploadRequest);
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                                    if (iAdobePSDPushCompletionHandler != null) {
                                        iAdobePSDPushCompletionHandler.onCompletion(true);
                                    }
                                }
                            });
                        } else {
                            adobeNetworkCompositeHttpTaskHandle.markFinished();
                            adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            if (iAdobePSDPushCompletionHandler != null) {
                                iAdobePSDPushCompletionHandler.onCompletion(true);
                            }
                        }
                        return null;
                    } catch (AdobeCSDKException e2) {
                        if (iAdobePSDPushCompletionHandler != null) {
                            AdobePSDCompositeXfer.postFailureOnPushCompletionHandler(iAdobePSDPushCompletionHandler, handler, e2);
                        }
                        adobeNetworkCompositeHttpTaskHandle.markFinished();
                        adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                        return null;
                    }
                }
            });
            adobeNetworkCompositeHttpTaskHandle.setFuture(futureTask);
            AdobeDCXCompositeXfer.transferQueue().execute(futureTask);
            return adobeNetworkCompositeHttpTaskHandle;
        } catch (AdobeDCXException e2) {
            if (iAdobePSDPushCompletionHandler != null) {
                postFailureOnPushCompletionHandler(iAdobePSDPushCompletionHandler, handler, e2);
            }
            return null;
        }
    }

    public static boolean pushPSDComposite(final AdobePSDComposite adobePSDComposite, boolean z, final AdobeImageSession adobeImageSession, final AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        IAdobeDCXCompositeManifestUploadRequest iAdobeDCXCompositeManifestUploadRequest = new IAdobeDCXCompositeManifestUploadRequest() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.3
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestUploadRequest
            public AdobeNetworkHttpTaskHandle perform(final AdobeDCXManifest adobeDCXManifest, boolean z2, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler) {
                final AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = adobeStorageSession.resourceForManifest(adobeDCXManifest, adobePSDComposite.getDcxComposite());
                adobeStorageResourceItemResourceForManifest.setData(adobeDCXManifest.getRemoteData().getBytes(Charsets.UTF_8));
                return adobeImageSession.updatePSDAt(adobePSDComposite.getPsdHref(), adobeStorageResourceItemResourceForManifest, AdobePSDCompositeXfer.ensureLeadingSlash(adobePSDComposite.getDcxComposite().getHref().toString()), z2, new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.3.1
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem) {
                        iAdobeDCXManifestRequestCompletionHandler.onCompletion(AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest(adobeDCXManifest, adobePSDComposite.getDcxComposite(), adobeStorageResourceItemResourceForManifest), null);
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeCSDKException);
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                }, null);
            }
        };
        if (adobePSDComposite.getDcxComposite().getCurrent().isDirty()) {
            AdobeLogger.log(Level.WARN, "Warning: pushComposite has been called with a composite that has uncommitted changes in its current branch. ", "Uncommitted changes will not be included in the pushed composite.");
        }
        AdobeDCXManifest adobeDCXManifestCopyCommittedManifest = null;
        try {
            adobeDCXManifestCopyCommittedManifest = adobePSDComposite.getDcxComposite().copyCommittedManifest();
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.pushPSDComposite", e2.getMessage());
        }
        return AdobeDCXCompositeXfer.internalPushComposite(adobePSDComposite.getDcxComposite(), adobeDCXManifestCopyCommittedManifest, z, adobeStorageSession, new AdobeNetworkCompositeHttpTaskHandle(), iAdobeDCXCompositeManifestUploadRequest);
    }

    public static void postFailureOnPushCompletionHandler(final IAdobePSDPushCompletionHandler iAdobePSDPushCompletionHandler, Handler handler, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.4
                @Override // java.lang.Runnable
                public void run() {
                    if (iAdobePSDPushCompletionHandler != null) {
                        iAdobePSDPushCompletionHandler.onError(adobeCSDKException);
                    }
                }
            });
        } else if (iAdobePSDPushCompletionHandler != null) {
            iAdobePSDPushCompletionHandler.onError(adobeCSDKException);
        }
    }

    static String ensureLeadingSlash(String str) {
        return str.startsWith(URIUtil.SLASH) ? str : URIUtil.SLASH + str;
    }

    static AdobeDCXManifest createUpdatedManifestFromPushedManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, AdobeStorageResourceItem adobeStorageResourceItem) {
        AdobeDCXManifest adobeDCXManifest2;
        AdobeDCXManifest copy;
        JSONObject jSONObject = null;
        if (adobeStorageResourceItem == null || adobeStorageResourceItem.getData() == null) {
            return null;
        }
        try {
            adobeDCXManifest2 = new AdobeDCXManifest(new String(adobeStorageResourceItem.getData(), "UTF-8"));
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest", e2.getMessage());
            adobeDCXManifest2 = null;
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
            adobeDCXManifest2 = null;
        }
        try {
            copy = adobeDCXManifest.getCopy();
        } catch (AdobeDCXException e4) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest", e4.getMessage());
            copy = null;
        }
        if (copy != null && adobeDCXManifest2 != null) {
            copy.setEtag(adobeStorageResourceItem.etag);
            try {
                jSONObject = (JSONObject) adobeDCXManifest2.getLinks().get("source");
            } catch (JSONException e5) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest", e5.getMessage());
            }
            if (jSONObject != null) {
                JSONObject links = copy.getLinks();
                if (links == null) {
                    links = new JSONObject();
                    try {
                        links.put("source", AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject));
                    } catch (JSONException e6) {
                    }
                } else {
                    try {
                        links.put("source", AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject));
                    } catch (JSONException e7) {
                        AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.createUpdatedManifestFromPushedManifest", e7.getMessage());
                    }
                }
                copy.setLinks(links);
                if (copy.getCompositeHref() == null) {
                    copy.setCompositeHref(adobeDCXComposite.getHref());
                }
            }
        }
        return copy;
    }

    public static AdobeNetworkHttpTaskHandle pullPSDComposite(final AdobePSDComposite adobePSDComposite, final AdobeImageSession adobeImageSession, final AdobeStorageSession adobeStorageSession, final IAdobePSDPullCompletionHandler iAdobePSDPullCompletionHandler, final Handler handler) {
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        final boolean[] zArr = {false};
        FutureTask<AdobeNetworkHttpResponse> futureTask = new FutureTask<AdobeNetworkHttpResponse>(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    zArr[0] = true;
                    final AdobePSDCompositeBranch adobePSDCompositeBranchInternalPullPSDComposite = AdobePSDCompositeXfer.internalPullPSDComposite(adobePSDComposite, adobeImageSession, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (iAdobePSDPullCompletionHandler != null) {
                                    iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullPSDComposite);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    if (iAdobePSDPullCompletionHandler != null) {
                        iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullPSDComposite);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    if (iAdobePSDPullCompletionHandler != null) {
                        AdobePSDCompositeXfer.postFailureOnPullCompletionHandler(iAdobePSDPullCompletionHandler, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        }) { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.6
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                if (isCancelled() && !zArr[0]) {
                    if (iAdobePSDPullCompletionHandler != null) {
                        AdobePSDCompositeXfer.postFailureOnPullCompletionHandler(iAdobePSDPullCompletionHandler, handler, new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled, null));
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                }
            }
        };
        adobeNetworkCompositeHttpTaskHandle.setFuture(futureTask);
        AdobeDCXCompositeXfer.transferQueue().execute(futureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle pullMinimalPSDComposite(final AdobePSDComposite adobePSDComposite, final AdobeImageSession adobeImageSession, final AdobeStorageSession adobeStorageSession, final IAdobePSDPullCompletionHandler iAdobePSDPullCompletionHandler, final Handler handler) {
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        FutureTask futureTask = new FutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    final AdobePSDCompositeBranch adobePSDCompositeBranchInternalPullMinimalPSDComposite = AdobePSDCompositeXfer.internalPullMinimalPSDComposite(adobePSDComposite, adobeImageSession, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (iAdobePSDPullCompletionHandler != null) {
                                    iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullMinimalPSDComposite);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    if (iAdobePSDPullCompletionHandler != null) {
                        iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullMinimalPSDComposite);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    if (iAdobePSDPullCompletionHandler != null) {
                        AdobePSDCompositeXfer.postFailureOnPullCompletionHandler(iAdobePSDPullCompletionHandler, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        });
        adobeNetworkCompositeHttpTaskHandle.setFuture(futureTask);
        AdobeDCXCompositeXfer.transferQueue().execute(futureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobeNetworkHttpTaskHandle pullComponentsForLayers(final ArrayList<AdobePSDLayerNode> arrayList, final boolean z, final AdobePSDComposite adobePSDComposite, final AdobeStorageSession adobeStorageSession, final IAdobePSDPullCompletionHandler iAdobePSDPullCompletionHandler, final Handler handler) {
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        FutureTask futureTask = new FutureTask(new Callable<AdobeNetworkHttpResponse>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AdobeNetworkHttpResponse call() {
                try {
                    final AdobePSDCompositeBranch adobePSDCompositeBranchInternalPullComponentsForLayers = AdobePSDCompositeXfer.internalPullComponentsForLayers(arrayList, z, adobePSDComposite, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle);
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (iAdobePSDPullCompletionHandler != null) {
                                    iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullComponentsForLayers);
                                }
                                adobeNetworkCompositeHttpTaskHandle.markFinished();
                                adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            }
                        });
                        return null;
                    }
                    if (iAdobePSDPullCompletionHandler != null) {
                        iAdobePSDPullCompletionHandler.onCompletion(adobePSDCompositeBranchInternalPullComponentsForLayers);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                } catch (AdobeCSDKException e2) {
                    if (iAdobePSDPullCompletionHandler != null) {
                        AdobePSDCompositeXfer.postFailureOnPullCompletionHandler(iAdobePSDPullCompletionHandler, handler, e2);
                    }
                    adobeNetworkCompositeHttpTaskHandle.markFinished();
                    adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                    return null;
                }
            }
        });
        adobeNetworkCompositeHttpTaskHandle.setFuture(futureTask);
        AdobeDCXCompositeXfer.transferQueue().execute(futureTask);
        return adobeNetworkCompositeHttpTaskHandle;
    }

    public static AdobePSDCompositeBranch pullPSDComposite(AdobePSDComposite adobePSDComposite, AdobeImageSession adobeImageSession, AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        return internalPullPSDComposite(adobePSDComposite, adobeImageSession, adobeStorageSession, new AdobeNetworkCompositeHttpTaskHandle());
    }

    public static AdobePSDCompositeBranch pullMinimalPSDComposite(AdobePSDComposite adobePSDComposite, AdobeImageSession adobeImageSession, AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        return internalPullMinimalPSDComposite(adobePSDComposite, adobeImageSession, adobeStorageSession, new AdobeNetworkCompositeHttpTaskHandle());
    }

    public static AdobePSDCompositeBranch pullComponentsForLayers(ArrayList<AdobePSDLayerNode> arrayList, boolean z, AdobePSDComposite adobePSDComposite, AdobeStorageSession adobeStorageSession) throws AdobeCSDKException {
        return internalPullComponentsForLayers(arrayList, z, adobePSDComposite, adobeStorageSession, new AdobeNetworkCompositeHttpTaskHandle());
    }

    static void postFailureOnPullCompletionHandler(final IAdobePSDPullCompletionHandler iAdobePSDPullCompletionHandler, Handler handler, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.9
                @Override // java.lang.Runnable
                public void run() {
                    if (iAdobePSDPullCompletionHandler != null) {
                        iAdobePSDPullCompletionHandler.onError(adobeCSDKException);
                    }
                }
            });
        } else if (iAdobePSDPullCompletionHandler != null) {
            iAdobePSDPullCompletionHandler.onError(adobeCSDKException);
        }
    }

    static AdobePSDCompositeBranch internalPullPSDComposite(AdobePSDComposite adobePSDComposite, AdobeImageSession adobeImageSession, AdobeStorageSession adobeStorageSession, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        if (internalPullMinimalPSDComposite(adobePSDComposite, adobeImageSession, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle) != null) {
            return internalPullComponentsForLayers(null, false, adobePSDComposite, adobeStorageSession, adobeNetworkCompositeHttpTaskHandle);
        }
        return null;
    }

    static AdobePSDCompositeBranch internalPullMinimalPSDComposite(final AdobePSDComposite adobePSDComposite, final AdobeImageSession adobeImageSession, final AdobeStorageSession adobeStorageSession, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        Assert.assertNotNull("composite should not be null", adobePSDComposite);
        final AdobeDCXComposite dcxComposite = adobePSDComposite.getDcxComposite();
        Assert.assertNotNull("composite.dcxComposite should not be null", dcxComposite);
        if (AdobeDCXCompositeXfer.internalPullMinimalComposite(adobePSDComposite.getDcxComposite(), adobeStorageSession, adobeNetworkCompositeHttpTaskHandle, new IAdobeDCXCompositeManifestDownload() { // from class: com.adobe.creativesdk.foundation.storage.AdobePSDCompositeXfer.10
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeManifestDownload
            public AdobeDCXManifest perform(AdobeDCXManifest adobeDCXManifest) throws AdobeCSDKException {
                AdobeDCXManifest adobeDCXManifest2 = null;
                AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = adobeStorageSession.resourceForManifest(adobeDCXManifest, dcxComposite);
                String str = new String("/assets/psd");
                AdobeStorageResourceItem manifest = adobeImageSession.getManifest(adobeStorageResourceItemResourceForManifest, adobePSDComposite.getPsdHref(), str);
                if (manifest != null) {
                    try {
                        adobeDCXManifest2 = new AdobeDCXManifest(new String(manifest.getData(), "UTF-8"));
                    } catch (UnsupportedEncodingException e2) {
                    }
                    if (adobeDCXManifest2 != null && (dcxComposite.getCompositeId() == null || dcxComposite.getHref() == null)) {
                        String compositeId = adobeDCXManifest2.getCompositeId();
                        dcxComposite.setCompositeId(compositeId);
                        try {
                            dcxComposite.setHref(new URI(AdobeDCXUtils.stringByAppendingLastPathComponent(str, compositeId)));
                        } catch (URISyntaxException e3) {
                            AdobeLogger.log(Level.DEBUG, "AdobePSDCompositeXfer.internalPullMinimalPSDComposite", e3.getMessage());
                        }
                    }
                    adobeDCXManifest2.setEtag(manifest.etag);
                    adobeDCXManifest2.setCompositeHref(adobePSDComposite.getDcxComposite().getHref());
                }
                return adobeDCXManifest2;
            }
        }) == null) {
            return null;
        }
        return adobePSDComposite.getPulled();
    }

    static AdobePSDCompositeBranch internalPullComponentsForLayers(ArrayList<AdobePSDLayerNode> arrayList, boolean z, AdobePSDComposite adobePSDComposite, AdobeStorageSession adobeStorageSession, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) throws AdobeCSDKException {
        ArrayList arrayList2;
        if (arrayList != null) {
            ArrayList arrayList3 = new ArrayList();
            AdobeDCXCompositeBranch pulled = adobePSDComposite.getDcxComposite().getPulled();
            AdobeDCXCompositeBranch current = pulled == null ? adobePSDComposite.getDcxComposite().getCurrent() : pulled;
            Iterator<AdobePSDLayerNode> it = arrayList.iterator();
            while (it.hasNext()) {
                collectComponents(arrayList3, it.next().getNode(), z, current);
            }
            arrayList2 = arrayList3;
        } else {
            arrayList2 = null;
        }
        if (AdobeDCXCompositeXfer.pullComponents(arrayList2, adobePSDComposite.getDcxComposite(), adobeStorageSession) == null) {
            return null;
        }
        if (adobePSDComposite.getPulled() != null) {
            return adobePSDComposite.getPulled();
        }
        return adobePSDComposite.getCurrent();
    }

    static void collectComponents(ArrayList<AdobeDCXComponent> arrayList, AdobeDCXManifestNode adobeDCXManifestNode, boolean z, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        List<AdobeDCXComponent> componentsOf = adobeDCXCompositeBranch.getComponentsOf(adobeDCXManifestNode);
        if (componentsOf != null && componentsOf.size() > 0) {
            arrayList.addAll(componentsOf);
        }
        if (z) {
            Iterator<AdobeDCXManifestNode> it = adobeDCXCompositeBranch.getChildrenOf(adobeDCXManifestNode).iterator();
            while (it.hasNext()) {
                collectComponents(arrayList, it.next(), true, adobeDCXCompositeBranch);
            }
        }
    }
}
