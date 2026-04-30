package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageFitType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputDispositionType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputParameters;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCImageComponents;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDPreview;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPullCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPushCompletionHandler;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetPSDFile extends AdobeAssetFileInternal {
    private AdobeNetworkHttpTaskHandle _layerRenditionRequest;
    private LinkedHashMap<String, AdobeNetworkHttpTaskHandle> _layerRenditionRequests;
    private AdobeNetworkHttpTaskHandle _previewPSDCompositeRequest;
    private AdobeNetworkHttpTaskHandle _pullPSDCompositeRequestHandle;
    private AdobeNetworkHttpTaskHandle _pushPSDCompositeRequestHandle;
    private final Lock lock;

    public static AdobeAssetPSDFile createWithPSDComposite(AdobePSDComposite adobePSDComposite, boolean z, IAdobeGenericRequestCallback<AdobeAssetPSDFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        return createWithPSDComposite(adobePSDComposite, z, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), iAdobeGenericRequestCallback, handler);
    }

    public static AdobeAssetPSDFile create(String str, @NonNull AdobeAssetFolder adobeAssetFolder, AdobeAGCManifest adobeAGCManifest, AdobeAGCImageComponents adobeAGCImageComponents, boolean z, final IAdobeGenericRequestCallback<AdobeAssetPSDFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String string = adobeAssetFolder.getHref().toString();
        if (!string.endsWith(URIUtil.SLASH)) {
            string = string + URIUtil.SLASH;
        }
        String str2 = string + str;
        final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(str2);
        adobeStorageResourceItemResourceFromHref.name = str;
        final AdobeAssetPSDFile adobeAssetPSDFile = new AdobeAssetPSDFile(adobeStorageResourceItemResourceFromHref, AdobeStorageResourceCollection.collectionFromHref(str2));
        adobeAssetPSDFile.setCloud(adobeAssetFolder.getCloud());
        adobeAssetPSDFile.setCreationDate(new Date());
        adobeStorageResourceItemResourceFromHref.type = AdobeAssetFileExtensions.kAdobeMimeTypePhotoshop;
        adobeAssetPSDFile.type = AdobeAssetFileExtensions.kAdobeMimeTypePhotoshop;
        if (adobeAssetFolder.getCloud() != null) {
            ((AdobeImageSession) adobeAssetFolder.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeImage)).createPSD(adobeStorageResourceItemResourceFromHref, adobeAGCManifest, adobeAGCImageComponents, z, handler, new IAdobeImageRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.1
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
                public void onComplete(AdobeImageOperation adobeImageOperation) {
                    adobeAssetPSDFile.etag = adobeStorageResourceItemResourceFromHref.etag;
                    iAdobeGenericRequestCallback.onCompletion(adobeAssetPSDFile);
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }
            });
        } else {
            iAdobeGenericRequestCallback.onError(null);
        }
        return adobeAssetPSDFile;
    }

    public void getPreviewWithAppliedLayerCompId(Integer num, final IAdobeGenericRequestCallback<AdobePSDPreview, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String str = FileUtils.getTempDirectoryPath() + String.format("psd%d", Long.valueOf(new Date().getTime()));
        File file = new File(str);
        if (file.exists()) {
            try {
                FileUtils.deleteDirectory(file);
            } catch (IOException e2) {
            }
        }
        file.mkdirs();
        final String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, "preview.json");
        AdobeImageOutputParameters adobeImageOutputParameters = new AdobeImageOutputParameters();
        adobeImageOutputParameters.disposition = AdobeImageOutputDispositionType.AdobeImageOutputDispositionDownload;
        adobeImageOutputParameters.path = strStringByAppendingLastPathComponent;
        adobeImageOutputParameters.location = null;
        adobeImageOutputParameters.mediaRange = null;
        IAdobeImageRequestCompletionHandler iAdobeImageRequestCompletionHandler = new IAdobeImageRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.2
            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onComplete(AdobeImageOperation adobeImageOperation) {
                AdobeAssetPSDFile.this._previewPSDCompositeRequest = null;
                try {
                    AdobePSDPreview adobePSDPreviewPsdPreviewFromFile = AdobePSDPreview.psdPreviewFromFile(strStringByAppendingLastPathComponent, AdobeAssetPSDFile.this.name);
                    if (adobePSDPreviewPsdPreviewFromFile != null && iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onCompletion(adobePSDPreviewPsdPreviewFromFile);
                    }
                } catch (AdobeDCXException e3) {
                    AdobeLogger.log(Level.DEBUG, "AdobeAssetPSDFile.getPreviewWithAppliedLayerCompId", e3.getMessage());
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getErrorCode().equals(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled)) {
                    AdobeLogger.log(Level.ERROR, "AdobeAssetPSDFile.getPreviewWithAppliedLayerCompId", String.format("PSD preview request for %s has been cancelled.", AdobeAssetPSDFile.this.href));
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onCancellation();
                        return;
                    }
                    return;
                }
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            }
        };
        AdobeImageSession imageSession = getImageSession();
        if (imageSession != null) {
            this._previewPSDCompositeRequest = imageSession.describePSD(AdobeStorageResourceItem.resourceFromHref(this.href), adobeImageOutputParameters, iAdobeImageRequestCompletionHandler, handler);
        }
    }

    public void pullPSDCompositeAt(String str, final IAdobeGenericRequestCallback<AdobePSDComposite, AdobeAssetException> iAdobeGenericRequestCallback, Handler handler) {
        AdobeStorageSession storageSession;
        final AdobePSDComposite adobePSDComposite = new AdobePSDComposite(getHref().getPath(), str);
        final IAdobeNetworkHttpTaskHandleListener iAdobeNetworkHttpTaskHandleListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.3
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            }
        };
        AdobeImageSession imageSession = getImageSession();
        if (imageSession != null && (storageSession = getStorageSession()) != null) {
            this._pullPSDCompositeRequestHandle = AdobePSDCompositeXfer.pullPSDComposite(adobePSDComposite, imageSession, storageSession, new IAdobePSDPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.4
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPullCompletionHandler
                public void onCompletion(AdobePSDCompositeBranch adobePSDCompositeBranch) {
                    handleCommonCompletionTasks();
                    try {
                        adobePSDComposite.resolvePulledBranch();
                        if (iAdobeGenericRequestCallback != null) {
                            iAdobeGenericRequestCallback.onCompletion(adobePSDComposite);
                        }
                    } catch (AdobeDCXException e2) {
                    }
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPullCompletionHandler
                public void onError(AdobeCSDKException adobeCSDKException) {
                    handleCommonCompletionTasks();
                    if ((adobeCSDKException instanceof AdobeNetworkException) && ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                        AdobeLogger.log(Level.INFO, AdobeAssetPSDFile.class.getSimpleName(), "PSD composite pull request for %@ has been cancelled for" + AdobeAssetPSDFile.this.getHref().getPath());
                        iAdobeGenericRequestCallback.onCancellation();
                    }
                }

                void handleCommonCompletionTasks() {
                    if (AdobeAssetPSDFile.this._pullPSDCompositeRequestHandle != null) {
                        AdobeAssetPSDFile.this._pullPSDCompositeRequestHandle.unregisterListener(iAdobeNetworkHttpTaskHandleListener);
                        AdobeAssetPSDFile.this._pullPSDCompositeRequestHandle = null;
                    }
                }
            }, handler);
            this._pullPSDCompositeRequestHandle.registerListener(iAdobeNetworkHttpTaskHandleListener);
        }
    }

    public void cancelPullPSDCompositeRequest() {
        if (this._pullPSDCompositeRequestHandle != null) {
            this._pullPSDCompositeRequestHandle.cancel();
            this._pullPSDCompositeRequestHandle = null;
        }
    }

    public void pushPSDComposite(final AdobePSDComposite adobePSDComposite, boolean z, final IAdobeGenericRequestCallback<AdobePSDComposite, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        AdobeStorageSession storageSession;
        final IAdobeNetworkHttpTaskHandleListener iAdobeNetworkHttpTaskHandleListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.5
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            }
        };
        AdobeImageSession imageSession = getImageSession();
        if (imageSession != null && (storageSession = getStorageSession()) != null) {
            this._pushPSDCompositeRequestHandle = AdobePSDCompositeXfer.pushPSDComposite(adobePSDComposite, z, imageSession, storageSession, new IAdobePSDPushCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.6
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPushCompletionHandler
                public void onCompletion(boolean z2) {
                    if (z2) {
                        handleCommonCompletionTasks();
                        try {
                            adobePSDComposite.acceptPushWithError();
                            AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductSaves, "Creative Cloud");
                            if (iAdobeGenericRequestCallback != null) {
                                iAdobeGenericRequestCallback.onCompletion(adobePSDComposite);
                            }
                        } catch (AdobeDCXException e2) {
                        }
                    }
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.psd.IAdobePSDPushCompletionHandler
                public void onError(AdobeCSDKException adobeCSDKException) {
                    handleCommonCompletionTasks();
                    if ((adobeCSDKException instanceof AdobeNetworkException) && ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                        AdobeLogger.log(Level.INFO, AdobeAssetPSDFile.class.getSimpleName(), "PSD composite push request for %@ has been cancelled for" + AdobeAssetPSDFile.this.getHref().getPath());
                    }
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onError(adobeCSDKException);
                    }
                }

                void handleCommonCompletionTasks() {
                    AdobeAssetPSDFile.this._pushPSDCompositeRequestHandle.unregisterListener(iAdobeNetworkHttpTaskHandleListener);
                    AdobeAssetPSDFile.this._pushPSDCompositeRequestHandle = null;
                }
            }, handler);
            this._pushPSDCompositeRequestHandle.registerListener(iAdobeNetworkHttpTaskHandleListener);
        }
    }

    public void cancelPushPSDCompositeRequest() {
        if (this._pushPSDCompositeRequestHandle != null) {
            this._pushPSDCompositeRequestHandle.cancel();
        }
    }

    public boolean pushPSDComposite(AdobePSDComposite adobePSDComposite, boolean z) {
        AdobeStorageSession storageSession;
        boolean zPushPSDComposite;
        AdobeImageSession imageSession = getImageSession();
        if (imageSession == null || (storageSession = getStorageSession()) == null) {
            return false;
        }
        try {
            zPushPSDComposite = AdobePSDCompositeXfer.pushPSDComposite(adobePSDComposite, z, imageSession, storageSession);
            if (zPushPSDComposite && (zPushPSDComposite = adobePSDComposite.acceptPushWithError())) {
                AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductSaves, "Creative Cloud");
            }
        } catch (AdobeCSDKException e2) {
            AdobeLogger.log(Level.ERROR, AdobeAssetPSDFile.class.getSimpleName(), "PSD composite push request for %@ has failed" + getHref().getPath(), e2);
            zPushPSDComposite = false;
        }
        return zPushPSDComposite;
    }

    protected static boolean pushPSDComposite(boolean z, AdobePSDComposite adobePSDComposite, AdobeCloud adobeCloud) {
        boolean zPushPSDComposite;
        AdobeImageSession adobeImageSession = adobeCloud != null ? (AdobeImageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeImage) : null;
        if (adobeImageSession == null) {
            return false;
        }
        AdobeStorageSession adobeStorageSession = adobeCloud != null ? (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage) : null;
        if (adobeStorageSession == null) {
            return false;
        }
        try {
            zPushPSDComposite = AdobePSDCompositeXfer.pushPSDComposite(adobePSDComposite, z, adobeImageSession, adobeStorageSession);
            if (zPushPSDComposite) {
                zPushPSDComposite = adobePSDComposite.acceptPushWithError();
            }
        } catch (AdobeCSDKException e2) {
            AdobeLogger.log(Level.ERROR, AdobeAssetPSDFile.class.getSimpleName(), "PSD composite push request for %@ has failed" + adobePSDComposite.getPsdHref(), e2);
            zPushPSDComposite = false;
        }
        return zPushPSDComposite;
    }

    public String getRenditionForLayer(final Integer num, final Integer num2, final AdobeAssetFileRenditionType adobeAssetFileRenditionType, final AdobeAssetImageDimensions adobeAssetImageDimensions, final IAdobeGenericRequestCallback<byte[], AdobeCSDKException> iAdobeGenericRequestCallback, final Handler handler) {
        final String strCacheKeyForLayer = cacheKeyForLayer(num, num2, adobeAssetFileRenditionType, scaledDimensions(adobeAssetImageDimensions));
        try {
            if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(resourceItem().internalID, String.format("%d_%d-%d", Integer.valueOf(adobeAssetFileRenditionType.getIntVal()), Integer.valueOf((int) adobeAssetImageDimensions.width), Integer.valueOf((int) adobeAssetImageDimensions.height)), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.storage", new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.7
                @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                public void onHit(final byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                    AdobeCommonCache.getSharedInstance().getDictionaryFromGUID(AdobeAssetPSDFile.this.resourceItem().internalID, "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.storage", new AdobeCommonCacheHandler<Map<String, Object>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.7.1
                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onHit(Map<String, Object> map, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                            String str = (String) map.get(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                            if (str != null && str.equals(AdobeAssetPSDFile.this.md5Hash)) {
                                if (iAdobeGenericRequestCallback != null) {
                                    iAdobeGenericRequestCallback.onCompletion(bArr);
                                }
                            } else {
                                AdobeCommonCache.getSharedInstance().removeSetWithGUID(AdobeAssetPSDFile.this.resourceItem().internalID, "com.adobe.cc.storage");
                                AdobeAssetPSDFile.this.getRenditionFromServerForLayer(num, num2, adobeAssetFileRenditionType, adobeAssetImageDimensions, strCacheKeyForLayer, iAdobeGenericRequestCallback, handler);
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onMiss() {
                            AdobeAssetPSDFile.this.getRenditionFromServerForLayer(num, num2, adobeAssetFileRenditionType, adobeAssetImageDimensions, strCacheKeyForLayer, iAdobeGenericRequestCallback, handler);
                        }
                    }, handler);
                }

                @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                public void onMiss() {
                    AdobeAssetPSDFile.this.getRenditionFromServerForLayer(num, num2, adobeAssetFileRenditionType, adobeAssetImageDimensions, strCacheKeyForLayer, iAdobeGenericRequestCallback, handler);
                }
            }, handler)) {
                AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetRenditionFromCache", String.format("Rendition request for %s ended in error.", this.href));
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(null);
                }
            }
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeAssetPSDFile.getRenditionForLayer", e2.getMessage());
        }
        return strCacheKeyForLayer;
    }

    AdobeNetworkHttpTaskHandle getRenditionFromServerForLayer(Integer num, Integer num2, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, final String str, final IAdobeGenericRequestCallback<byte[], AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String str2;
        String str3;
        switch (adobeAssetFileRenditionType) {
            case ADOBE_ASSET_FILE_RENDITION_TYPE_GIF:
                str2 = "image/gif";
                str3 = AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF;
                break;
            case ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG:
                str2 = "image/jpeg";
                str3 = "jpeg";
                break;
            case ADOBE_ASSET_FILE_RENDITION_TYPE_TIFF:
                str2 = AdobeAssetFileExtensions.kAdobeMimeTypeTIFF;
                str3 = AdobeAssetFileExtensions.kAdobeFileExtensionTypeTIFF;
                break;
            default:
                str2 = "image/png";
                str3 = "png";
                break;
        }
        AdobeAssetImageDimensions adobeAssetImageDimensionsScaledDimensions = scaledDimensions(adobeAssetImageDimensions);
        AdobeImageSession imageSession = getImageSession();
        if (imageSession == null) {
            return null;
        }
        final AdobeImageOutputParameters adobeImageOutputParameters = new AdobeImageOutputParameters();
        adobeImageOutputParameters.disposition = AdobeImageOutputDispositionType.AdobeImageOutputDispositionDownload;
        adobeImageOutputParameters.path = createLayerRenditionTmpFileWithExtension(str3);
        adobeImageOutputParameters.location = null;
        adobeImageOutputParameters.mediaRange = str2;
        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleRender = imageSession.render(resourceItem(), num, null, null, adobeAssetImageDimensionsScaledDimensions.width >= adobeAssetImageDimensionsScaledDimensions.height ? Float.valueOf(adobeAssetImageDimensionsScaledDimensions.width) : null, adobeAssetImageDimensionsScaledDimensions.height >= adobeAssetImageDimensionsScaledDimensions.width ? Float.valueOf(adobeAssetImageDimensionsScaledDimensions.height) : null, AdobeImageFitType.AdobeImageConstrain, null, num2, null, adobeImageOutputParameters, new IAdobeImageRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.8
            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onComplete(AdobeImageOperation adobeImageOperation) throws Throwable {
                FileInputStream fileInputStream;
                AdobeAssetPSDFile.this.lock.lock();
                if (AdobeAssetPSDFile.this._layerRenditionRequests != null) {
                    AdobeAssetPSDFile.this._layerRenditionRequests.remove(str);
                }
                AdobeAssetPSDFile.this.lock.unlock();
                AdobeAssetPSDFile.this._layerRenditionRequest = null;
                File file = new File(adobeImageOutputParameters.path);
                byte[] bArr = new byte[(int) file.length()];
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                        int i = 0;
                        while (i < bArr.length) {
                            try {
                                int i2 = fileInputStream.read(bArr, i, bArr.length - i);
                                if (i2 > 0) {
                                    i += i2;
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileInputStream.close();
                                throw th;
                            }
                        }
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = null;
                    }
                } catch (FileNotFoundException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeAssetPSDFile.getRenditionFromServerForLayer", e2.getMessage());
                } catch (IOException e3) {
                    AdobeLogger.log(Level.DEBUG, "AdobeAssetPSDFile.getRenditionFromServerForLayer", e3.getMessage());
                }
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onCompletion(bArr);
                }
                if (!file.exists() || !file.delete()) {
                    AdobeLogger.log(Level.ERROR, "AdobeAssetPSDFile.getRenditionFromServerForLayer", String.format("Attempt to delete temporary layer rendition file %s ended in error", adobeImageOutputParameters.path));
                }
                if (bArr != null) {
                    AdobeCommonCache.getSharedInstance().addData(bArr, AdobeAssetPSDFile.this.resourceItem().internalID, str, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.storage", new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.8.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                            if (!bool.booleanValue()) {
                                AdobeLogger.log(Level.ERROR, "AdobeAssetPSDFile.getRenditionFromServerForLayer", String.format("Adding to caches is failed for %s", AdobeAssetPSDFile.this.href));
                            }
                        }
                    });
                    if (AdobeAssetPSDFile.this.md5Hash != null) {
                        HashMap map = new HashMap();
                        map.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, AdobeAssetPSDFile.this.md5Hash);
                        map.put(AdobeDCXConstants.AdobeDCXAssetStateModified, AdobeAssetPSDFile.this.modificationDate);
                        map.put("etag", AdobeAssetPSDFile.this.etag);
                        if (!AdobeCommonCache.getSharedInstance().addDictionary(map, AdobeAssetPSDFile.this.resourceItem().internalID, "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.storage")) {
                            AdobeLogger.log(Level.ERROR, "AdobeAssetPSDFile.getRenditionFromServerForLayer", String.format("Image service rendition request for %s ended in error:", AdobeAssetPSDFile.this.href));
                        }
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeAssetPSDFile.this.lock.lock();
                if (AdobeAssetPSDFile.this._layerRenditionRequests != null) {
                    AdobeAssetPSDFile.this._layerRenditionRequests.remove(str);
                }
                AdobeAssetPSDFile.this.lock.unlock();
                AdobeAssetPSDFile.this._layerRenditionRequest = null;
                if (adobeNetworkException.getErrorCode().equals(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled)) {
                    AdobeLogger.log(Level.INFO, "AdobeAssetPSDFile.getRenditionFromServerForLayer", String.format("Image service rendition request for %s has been cancelled.", AdobeAssetPSDFile.this.href));
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onCancellation();
                        return;
                    }
                    return;
                }
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            }
        }, handler);
        this.lock.lock();
        try {
            if (this._layerRenditionRequests == null) {
                this._layerRenditionRequests = new LinkedHashMap<>();
            }
            this._layerRenditionRequests.put(str, adobeNetworkHttpTaskHandleRender);
            return adobeNetworkHttpTaskHandleRender;
        } finally {
            this.lock.unlock();
        }
    }

    public void cancelLayerRenditionRequest(String str) {
        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle;
        if (str != null) {
            this.lock.lock();
            try {
                if (this._layerRenditionRequests != null && (adobeNetworkHttpTaskHandle = this._layerRenditionRequests.get(str)) != null) {
                    adobeNetworkHttpTaskHandle.cancel();
                }
            } finally {
                this.lock.unlock();
            }
        }
    }

    protected AdobeAssetPSDFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        super(adobeStorageResourceItem, adobeStorageResourceCollection);
        this._layerRenditionRequests = null;
        this._layerRenditionRequest = null;
        this.lock = new ReentrantLock();
        this._pullPSDCompositeRequestHandle = null;
        this._pushPSDCompositeRequestHandle = null;
        this._previewPSDCompositeRequest = null;
    }

    String cacheKeyForLayer(Integer num, Integer num2, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions) {
        Object[] objArr = new Object[5];
        objArr[0] = num == null ? "none" : "" + num;
        objArr[1] = num2 == null ? ServletHandler.__DEFAULT_SERVLET : "" + num2;
        objArr[2] = Integer.valueOf(adobeAssetFileRenditionType.getIntVal());
        objArr[3] = Integer.valueOf((int) adobeAssetImageDimensions.width);
        objArr[4] = Integer.valueOf((int) adobeAssetImageDimensions.height);
        return String.format("%s_%s_%d_%d-%d", objArr);
    }

    boolean isCachedForKey(String str) {
        return AdobeCommonCache.getSharedInstance().containsItem(resourceItem().internalID, str, "com.adobe.cc.storage");
    }

    AdobeAssetImageDimensions scaledDimensions(AdobeAssetImageDimensions adobeAssetImageDimensions) {
        float f2 = new DisplayMetrics().density;
        return adobeAssetImageDimensions;
    }

    String createLayerRenditionTmpDir() {
        String str = FileUtils.getTempDirectoryPath() + "PSDLayerRenditionTemp";
        File file = new File(str);
        if (file.exists()) {
            try {
                FileUtils.deleteDirectory(file);
            } catch (IOException e2) {
            }
        }
        file.mkdirs();
        return str;
    }

    String createLayerRenditionTmpFileWithExtension(String str) {
        return AdobeDCXUtils.stringByAppendingLastPathComponent(createLayerRenditionTmpDir(), String.format("temp%s.%s", AdobeStorageUtils.generateUuid(), str));
    }

    protected static AdobeAssetPSDFile createWithPSDComposite(AdobePSDComposite adobePSDComposite, boolean z, AdobeCloud adobeCloud, final IAdobeGenericRequestCallback<AdobeAssetPSDFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        try {
            String psdHref = adobePSDComposite.getPsdHref();
            final AdobeAssetPSDFile adobeAssetPSDFile = new AdobeAssetPSDFile(AdobeStorageResourceItem.resourceFromHref(psdHref), AdobeStorageResourceCollection.collectionFromHref(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(psdHref)));
            adobeAssetPSDFile.setCloud(adobeCloud);
            adobeAssetPSDFile.pushPSDComposite(adobePSDComposite, z, new IAdobeGenericRequestCallback<AdobePSDComposite, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPSDFile.9
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePSDComposite adobePSDComposite2) {
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onCompletion(adobeAssetPSDFile);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onError(adobeCSDKException);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onCancellation();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    if (iAdobeGenericRequestCallback != null) {
                        iAdobeGenericRequestCallback.onProgress(d2);
                    }
                }
            }, handler);
            adobeAssetPSDFile.setCreationDate(new Date());
            return adobeAssetPSDFile;
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, AdobeAssetPSDFile.class.getSimpleName(), e2.getMessage(), e2);
            if (iAdobeGenericRequestCallback == null) {
                return null;
            }
            iAdobeGenericRequestCallback.onError(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
            return null;
        }
    }

    private AdobeImageSession getImageSession() {
        return (AdobeImageSession) getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeImage);
    }

    private AdobeStorageSession getStorageSession() {
        return (AdobeStorageSession) getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal, com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetPSDFile) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal, com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }
}
