package com.adobe.creativesdk.foundation.storage;

import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSAssetFileEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileInfo;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.Externalizable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URL;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetFile extends AdobeAsset implements Externalizable {
    private static final String CACHENAME = "com.adobe.cc.storage";
    public static final String STREAMING_VIDEO_TYPE = "application/vnd.adobe.ccv.videometadata";
    private static final String T = AdobeAssetFile.class.getSimpleName();
    protected static final AdobeAssetImageDimensions THUMBNAIL_SIZED_RENDITION = new AdobeAssetImageDimensions(250.0f, 250.0f);
    protected transient AdobeStorageResourceItem asrItem;
    protected int currentVersion;
    protected transient AdobeNetworkHttpRequest dataRequest;
    protected long fileSize;
    protected String md5Hash;
    protected JSONObject optionalMetadata;
    protected boolean pendingRendRequestCancellation;
    protected transient AdobeNetworkHttpTaskHandle renditionRequest;
    protected String type;
    protected transient AdobeNetworkHttpRequest uploadRequest;

    public String getType() {
        return this.type;
    }

    public String getMd5Hash() {
        return this.md5Hash;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public int getCurrentVersion() {
        return this.currentVersion;
    }

    public JSONObject getOptionalMetadata() {
        return this.optionalMetadata;
    }

    public static AdobeAssetFile create(String str, AdobeAssetFolder adobeAssetFolder, URL url, String str2, IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        return create(str, adobeAssetFolder, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), url, str2, iAdobeGenericRequestCallback, handler);
    }

    public void cancelCreationRequest() {
        cancelUpdateRequest();
    }

    public void update(final URL url, final String str, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, final Handler handler) {
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(final AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericRequestCallback.onError(adobeAuthException);
                            }
                        });
                    } else {
                        iAdobeGenericRequestCallback.onError(adobeAuthException);
                    }
                }
            }
        }, "Update requires an authenticated user.")) {
            if (this.GUID != null) {
                update(url, str, true, iAdobeGenericRequestCallback, handler);
                return;
            }
            AdobeStorageSession session = getSession();
            if (session != null) {
                session.getHeaderInfoForFile(resourceItem(), new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.2
                    @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
                    public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                        AdobeAssetFile.this.update(url, str, (adobeStorageResourceItem == null || adobeStorageResourceItem.etag == null) ? false : true, iAdobeGenericRequestCallback, handler);
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                        iAdobeGenericRequestCallback.onProgress(d2);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        if (adobeAssetException.getHttpStatusCode().intValue() == 404) {
                            AdobeAssetFile.this.update(url, str, false, iAdobeGenericRequestCallback, handler);
                        } else {
                            iAdobeGenericRequestCallback.onError(adobeAssetException);
                        }
                    }
                }, handler);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(URL url, final String str, boolean z, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, final Handler handler) {
        long length;
        String strDecode = Uri.decode(url.getFile());
        File file = new File(strDecode);
        if (file == null || !file.exists()) {
            length = 0;
        } else {
            length = file.length();
        }
        final AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent = new AdobeAnalyticsETSAssetFileEvent(z ? AdobeAnalyticsEventParams.Type.AdobeEventTypeAppUpdate.getValue() : AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue(), str);
        adobeAnalyticsETSAssetFileEvent.trackContentInfo(this.etag, this.name, "", str, "" + length);
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(final AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericRequestCallback.onError(adobeAuthException);
                            }
                        });
                    } else {
                        iAdobeGenericRequestCallback.onError(adobeAuthException);
                    }
                }
            }
        }, "Update requires an authenticated user.")) {
            this.asrItem.setPath(strDecode);
            this.type = str;
            AdobeStorageSession session = getSession();
            if (session != null) {
                this.uploadRequest = session.updateFile(resourceItem(), z, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.4
                    @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
                    public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                        AdobeAssetFile.this.uploadRequest = null;
                        if (adobeStorageResourceItem != null) {
                            AdobeAssetFile.this.asrItem = adobeStorageResourceItem;
                            AdobeAssetFile.this.etag = adobeStorageResourceItem.etag;
                            AdobeAssetFile.this.name = adobeStorageResourceItem.name;
                            AdobeAssetFile.this.GUID = adobeStorageResourceItem.internalID;
                            AdobeAssetFile.this.href = adobeStorageResourceItem.href;
                            AdobeAssetFile.this.md5Hash = adobeStorageResourceItem.getMd5();
                            AdobeAssetFile.this.links = adobeStorageResourceItem.links;
                            if (adobeStorageResourceItem.getLength() != null) {
                                AdobeAssetFile.this.fileSize = adobeStorageResourceItem.getLength().intValue();
                            } else {
                                AdobeAssetFile.this.fileSize = 0L;
                            }
                            if (adobeStorageResourceItem.getVersion() != null) {
                                AdobeAssetFile.this.currentVersion = Integer.parseInt(adobeStorageResourceItem.getVersion());
                            } else {
                                AdobeAssetFile.this.currentVersion = 0;
                            }
                            if (adobeStorageResourceItem.modified != null) {
                                AdobeAssetFile.this.modificationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceItem.modified);
                            } else {
                                AdobeAssetFile.this.modificationDate = AdobeAssetFile.this.creationDate;
                            }
                            AdobeAssetFile.this.optionalMetadata = adobeStorageResourceItem.getOptionalMetadata();
                            AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductSaves, "Creative Cloud");
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                            String str2 = adobeStorageResourceItem.etag;
                            String str3 = adobeStorageResourceItem.name;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent2.trackContentInfo(str2, str3, "", str, "" + AdobeAssetFile.this.fileSize);
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent4 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent5 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                            iAdobeGenericRequestCallback.onCompletion(this);
                            return;
                        }
                        AdobeLogger.log(Level.ERROR, "AdobeAssetFile:Update", String.format("Failed to Create/Update File: %s", AdobeAssetFile.this.name));
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent6 = adobeAnalyticsETSAssetFileEvent;
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent7 = adobeAnalyticsETSAssetFileEvent;
                        adobeAnalyticsETSAssetFileEvent6.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                        iAdobeGenericRequestCallback.onProgress(d2);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        if (adobeAssetException != null && adobeAssetException.getErrorCode().equals(AdobeAssetErrorCode.AdobeAssetErrorCancelled)) {
                            AdobeLogger.log(Level.INFO, "AdobeAssetFile:Update", String.format("Update request for %s has been cancelled.", AdobeAssetFile.this.href));
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent2.endAndTrackEventWithErrorCode("cancelled");
                            iAdobeGenericRequestCallback.onCancellation();
                            return;
                        }
                        if (adobeAssetException != null) {
                            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:Update", String.format("Update request for %s ended in error: %s.", AdobeAssetFile.this.href, adobeAssetException.toString()));
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent4 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent5 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                            iAdobeGenericRequestCallback.onError(adobeAssetException);
                        }
                    }
                }, handler);
            }
        }
    }

    private void updateFromStream(InputStream inputStream, final String str, boolean z, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, final Handler handler) {
        final int i;
        int iAvailable = 0;
        final AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent = new AdobeAnalyticsETSAssetFileEvent(z ? AdobeAnalyticsEventParams.Type.AdobeEventTypeAppUpdate.getValue() : AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue(), str);
        try {
            iAvailable = inputStream.available();
            adobeAnalyticsETSAssetFileEvent.trackContentInfo(this.etag, this.name, "", str, "" + iAvailable);
            i = iAvailable;
        } catch (IOException e2) {
            i = iAvailable;
            e2.printStackTrace();
        }
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(final AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericRequestCallback.onError(adobeAuthException);
                            }
                        });
                    } else {
                        iAdobeGenericRequestCallback.onError(adobeAuthException);
                    }
                }
            }
        }, "Update requires an authenticated user.")) {
            this.type = str;
            AdobeStorageSession session = getSession();
            if (session != null) {
                this.uploadRequest = session.updateFileFromStream(resourceItem(), inputStream, z, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.6
                    @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
                    public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                        AdobeAssetFile.this.uploadRequest = null;
                        if (adobeStorageResourceItem != null) {
                            AdobeAssetFile.this.asrItem = adobeStorageResourceItem;
                            AdobeAssetFile.this.etag = adobeStorageResourceItem.etag;
                            AdobeAssetFile.this.name = adobeStorageResourceItem.name;
                            AdobeAssetFile.this.GUID = adobeStorageResourceItem.internalID;
                            AdobeAssetFile.this.href = adobeStorageResourceItem.href;
                            AdobeAssetFile.this.md5Hash = adobeStorageResourceItem.getMd5();
                            AdobeAssetFile.this.links = adobeStorageResourceItem.links;
                            if (adobeStorageResourceItem.getVersion() != null) {
                                AdobeAssetFile.this.currentVersion = Integer.parseInt(adobeStorageResourceItem.getVersion());
                            } else {
                                AdobeAssetFile.this.currentVersion = 0;
                            }
                            if (adobeStorageResourceItem.modified != null) {
                                AdobeAssetFile.this.modificationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceItem.modified);
                            } else {
                                AdobeAssetFile.this.modificationDate = AdobeAssetFile.this.creationDate;
                            }
                            AdobeAssetFile.this.optionalMetadata = adobeStorageResourceItem.getOptionalMetadata();
                            AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductSaves, "Creative Cloud");
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                            String str2 = adobeStorageResourceItem.etag;
                            String str3 = adobeStorageResourceItem.name;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent2.trackContentInfo(str2, str3, "", str, "" + i);
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent4 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent5 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.6.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeGenericRequestCallback.onCompletion(this);
                                    }
                                });
                                return;
                            } else {
                                iAdobeGenericRequestCallback.onCompletion(this);
                                return;
                            }
                        }
                        AdobeLogger.log(Level.ERROR, "AdobeAssetFile:Update", String.format("Failed to Create/Update File: %s", AdobeAssetFile.this.name));
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent6 = adobeAnalyticsETSAssetFileEvent;
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent7 = adobeAnalyticsETSAssetFileEvent;
                        adobeAnalyticsETSAssetFileEvent6.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(final double d2) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.6.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeGenericRequestCallback.onProgress(d2);
                                }
                            });
                        } else {
                            iAdobeGenericRequestCallback.onProgress(d2);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(final AdobeAssetException adobeAssetException) {
                        if (adobeAssetException != null && adobeAssetException.getErrorCode().equals(AdobeAssetErrorCode.AdobeAssetErrorCancelled)) {
                            AdobeLogger.log(Level.INFO, "AdobeAssetFile:Update", String.format("Update request for %s has been cancelled.", AdobeAssetFile.this.href));
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent2.endAndTrackEventWithErrorCode("cancelled");
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.6.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeGenericRequestCallback.onCancellation();
                                    }
                                });
                                return;
                            } else {
                                iAdobeGenericRequestCallback.onCancellation();
                                return;
                            }
                        }
                        if (adobeAssetException != null) {
                            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:Update", String.format("Update request for %s ended in error: %s.", AdobeAssetFile.this.href, adobeAssetException.toString()));
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent4 = adobeAnalyticsETSAssetFileEvent;
                            AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent5 = adobeAnalyticsETSAssetFileEvent;
                            adobeAnalyticsETSAssetFileEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.6.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeGenericRequestCallback.onError(adobeAssetException);
                                    }
                                });
                            } else {
                                iAdobeGenericRequestCallback.onError(adobeAssetException);
                            }
                        }
                    }
                }, handler);
            }
        }
    }

    public void cancelUpdateRequest() {
        AdobeStorageSession session = getSession();
        if (session != null) {
            session.cancelRequest(this.uploadRequest);
        }
    }

    public void cancelRenditionRequest() {
        if (this.renditionRequest != null) {
            this.renditionRequest.cancel();
        } else {
            this.pendingRendRequestCancellation = true;
        }
    }

    public void cancelDataRequest() {
        AdobeStorageSession session = getSession();
        if (session != null) {
            session.cancelRequest(this.dataRequest);
        }
    }

    public void setVersion(int i) {
    }

    public void delete(AdobeStorageSession adobeStorageSession, final IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        if (adobeStorageSession != null) {
            final AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent = new AdobeAnalyticsETSAssetFileEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppDelete.getValue(), this.type);
            adobeAnalyticsETSAssetFileEvent.trackCloud(getCloud());
            adobeAnalyticsETSAssetFileEvent.trackContentInfo(this.etag, this.name, "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE, "" + this.fileSize);
            adobeStorageSession.deleteFile(resourceItem(), true, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.7
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
                public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                    if (adobeStorageResourceItem != null) {
                        AdobeAssetFile.this.asrItem = adobeStorageResourceItem;
                        AdobeAssetFile.this.etag = adobeStorageResourceItem.etag;
                        AdobeAssetFile.this.md5Hash = null;
                        AdobeAssetFile.this.fileSize = 0L;
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                        AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                        adobeAnalyticsETSAssetFileEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                        iAdobeStorageSessionEditCallback.onComplete();
                        return;
                    }
                    AdobeLogger.log(Level.INFO, "AssetFile.delete", "Failed to delete file");
                    AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent4 = adobeAnalyticsETSAssetFileEvent;
                    AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent5 = adobeAnalyticsETSAssetFileEvent;
                    adobeAnalyticsETSAssetFileEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    iAdobeStorageSessionEditCallback.onError(null);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent2 = adobeAnalyticsETSAssetFileEvent;
                    AdobeAnalyticsETSAssetFileEvent adobeAnalyticsETSAssetFileEvent3 = adobeAnalyticsETSAssetFileEvent;
                    adobeAnalyticsETSAssetFileEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    if (adobeAssetException != null) {
                        iAdobeStorageSessionEditCallback.onError(adobeAssetException);
                    }
                }
            });
        }
    }

    public void getRenditionWithType(AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        getRenditionWithType(adobeAssetFileRenditionType, adobeAssetImageDimensions, 0, iAdobeGenericRequestCallback);
    }

    public void getRenditionWithType(AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i, IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        Handler handler;
        boolean zIsEntitledToService = AdobeEntitlementServices.getSharedServices().isEntitledToService("ccv", getCloud());
        if (this.type == null) {
            AdobeLogger.log(Level.ERROR, "AdobeGetRendition:Invalid Type", String.format("Failed to get type of the image for %s", this.name));
            iAdobeGenericRequestCallback.onError(null);
            return;
        }
        if (this.type.equals("application/vnd.adobe.ccv.videometadata") || this.type.startsWith("video/")) {
            final AdobeAssetFileInternal adobeAssetFileInternal = (AdobeAssetFileInternal) this;
            if (zIsEntitledToService) {
                AdobeCommonCacheHandler<byte[]> adobeCommonCacheHandler = new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.8
                    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba A[PHI: r0
  0x00ba: PHI (r0v19 java.lang.String) = (r0v2 java.lang.String), (r0v4 java.lang.String) binds: [B:8:0x0019, B:11:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void onHit(byte[] r11, com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation r12) {
                        /*
                            r10 = this;
                            r3 = 0
                            r4 = 0
                            java.lang.String r0 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L83
                            java.lang.String r1 = "UTF-8"
                            r0.<init>(r11, r1)     // Catch: java.io.UnsupportedEncodingException -> L83
                            org.json.JSONObject r0 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils.JSONObjectWithData(r0)     // Catch: java.io.UnsupportedEncodingException -> L83
                            r5 = r0
                        Lf:
                            if (r5 == 0) goto L89
                            java.lang.String r0 = "hls_playlist"
                            java.lang.String r0 = r5.optString(r0, r4)
                        L18:
                            r2 = 1
                            if (r0 == 0) goto Lba
                            java.lang.String r1 = "UTF-8"
                            java.lang.String r0 = java.net.URLDecoder.decode(r0, r1)     // Catch: java.io.UnsupportedEncodingException -> L8b
                        L22:
                            java.util.Date r1 = new java.util.Date
                            r1.<init>()
                            long r6 = r1.getTime()
                            r8 = 1000(0x3e8, double:4.94E-321)
                            long r6 = r6 / r8
                            java.lang.String r1 = "~exp=(\\d+)~"
                            r8 = 2
                            java.util.regex.Pattern r1 = java.util.regex.Pattern.compile(r1, r8)
                            java.util.regex.Matcher r1 = r1.matcher(r0)
                            boolean r8 = r1.find()
                            if (r8 == 0) goto Lba
                            int r8 = r1.start()
                            int r8 = r8 + 5
                            int r1 = r1.end()
                            int r1 = r1 + (-1)
                            java.lang.String r1 = r0.substring(r8, r1)
                            long r8 = java.lang.Long.parseLong(r1)
                            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                            if (r1 < 0) goto L90
                            r0 = r2
                            r1 = r4
                        L5a:
                            if (r0 == 0) goto L93
                            com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache.getSharedInstance()
                            com.adobe.creativesdk.foundation.storage.AdobeAssetFile r1 = r2
                            java.lang.String r1 = com.adobe.creativesdk.foundation.storage.AdobeAssetFile.access$100(r1)
                            java.lang.String r2 = "video-data"
                            java.lang.String r3 = "com.adobe.cc.storage"
                            r0.removeItemWithGUID(r1, r2, r3)
                            com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal r0 = r3
                            r0.hlsHref = r4
                            com.adobe.creativesdk.foundation.storage.AdobeAssetFile$8$1 r0 = new com.adobe.creativesdk.foundation.storage.AdobeAssetFile$8$1
                            r0.<init>()
                            com.adobe.creativesdk.foundation.storage.AdobeAssetFile$8$2 r1 = new com.adobe.creativesdk.foundation.storage.AdobeAssetFile$8$2
                            r1.<init>()
                            com.adobe.creativesdk.foundation.storage.AdobeAssetFile r2 = r2
                            com.adobe.creativesdk.foundation.storage.AdobeAssetFile.access$200(r2, r0, r1)
                        L82:
                            return
                        L83:
                            r0 = move-exception
                            r0.printStackTrace()
                            r5 = r4
                            goto Lf
                        L89:
                            r0 = r4
                            goto L18
                        L8b:
                            r1 = move-exception
                            r1.printStackTrace()
                            goto L22
                        L90:
                            r1 = r0
                            r0 = r3
                            goto L5a
                        L93:
                            com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal r0 = r3
                            java.lang.String r0 = r0.hlsHref
                            if (r0 == 0) goto La3
                            com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal r0 = r3
                            java.lang.String r0 = r0.hlsHref
                            boolean r0 = r0.equals(r1)
                            if (r0 != 0) goto L82
                        La3:
                            com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal r0 = r3
                            java.lang.String r1 = "hls_playlist"
                            java.lang.String r1 = r5.optString(r1, r4)
                            r0.hlsHref = r1
                            com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal r0 = r3
                            java.lang.String r1 = "duration"
                            int r1 = r5.optInt(r1, r3)
                            r0._videDuration = r1
                            goto L82
                        Lba:
                            r1 = r0
                            r0 = r2
                            goto L5a
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.AnonymousClass8.onHit(byte[], com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation):void");
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onMiss() {
                        this.getVideoMetadata(new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.8.3
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(JSONObject jSONObject) {
                                adobeAssetFileInternal.hlsHref = jSONObject.optString("hls_playlist", null);
                                adobeAssetFileInternal._videDuration = jSONObject.optInt("duration", 0);
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.8.4
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException) {
                                AdobeLogger.log(Level.ERROR, "AdobeGetRendition:for video", String.format("Failed to get video metadata for %s: %s", this.name, adobeCSDKException));
                            }
                        });
                    }
                };
                try {
                    handler = new Handler();
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, "GetRendition", "failure:handler creation failed");
                    handler = null;
                }
                if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(cacheGUID(), "video-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), CACHENAME, adobeCommonCacheHandler, handler)) {
                    AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetRenditionFromCache", String.format("Rendition request for %s ended in error.", this.href));
                    iAdobeGenericRequestCallback.onError(null);
                }
            } else {
                adobeAssetFileInternal.hlsHref = null;
            }
        }
        getRenditionWithTypeForData(adobeAssetFileRenditionType, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
    }

    protected void getRenditionWithTypeForData(final AdobeAssetFileRenditionType adobeAssetFileRenditionType, final AdobeAssetImageDimensions adobeAssetImageDimensions, final int i, final IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        final C1outerClass c1outerClass = new C1outerClass();
        try {
            c1outerClass.handler = new Handler();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(cacheGUID(), cacheKey(adobeAssetFileRenditionType, adobeAssetImageDimensions, i), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), CACHENAME, new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.9
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(final byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                AdobeCommonCache.getSharedInstance().getDictionaryFromGUID(AdobeAssetFile.this.cacheGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeAssetFile.CACHENAME, new AdobeCommonCacheHandler<Map<String, Object>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.9.1
                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onHit(Map<String, Object> map, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                        String str = (String) map.get(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                        if (str == null || !str.equals(AdobeAssetFile.this.md5Hash)) {
                            AdobeCommonCache.getSharedInstance().removeSetWithGUID(AdobeAssetFile.this.cacheGUID(), AdobeAssetFile.CACHENAME);
                            AdobeAssetFile.this.getRenditionFromServerWithType(adobeAssetFileRenditionType, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
                        } else {
                            iAdobeGenericRequestCallback.onCompletion(bArr);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onMiss() {
                        AdobeAssetFile.this.getRenditionFromServerWithType(adobeAssetFileRenditionType, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
                    }
                }, c1outerClass.handler);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobeAssetFile.this.getRenditionFromServerWithType(adobeAssetFileRenditionType, adobeAssetImageDimensions, i, iAdobeGenericRequestCallback);
            }
        }, c1outerClass.handler)) {
            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetRenditionFromCache", String.format("Rendition request for %s ended in error.", this.href));
            iAdobeGenericRequestCallback.onError(null);
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFile$1outerClass, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class C1outerClass {
        Handler handler = null;

        C1outerClass() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getVideoMetadata(final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler = new IAdobeStorageDataRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.10
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler
            public void onComplete(byte[] bArr) {
                if (bArr != null) {
                    JSONObject jSONObjectJSONObjectWithData = null;
                    try {
                        jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(new String(bArr, "UTF-8"));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                    iAdobeGenericCompletionCallback.onCompletion(jSONObjectJSONObjectWithData);
                    AdobeCommonCache.getSharedInstance().addData(bArr, AdobeAssetFile.this.cacheGUID(), "video-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFile.CACHENAME, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.10.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                            if (!bool.booleanValue()) {
                                AdobeLogger.log(Level.ERROR, "AdobeAssetFile:getVideoMetadata", String.format("Adding to caches is failed for %s", AdobeAssetFile.this.href));
                            }
                        }
                    });
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeGenericErrorCallback.onError(adobeAssetException);
            }
        };
        AdobeStorageSession session = getSession();
        if (session != null) {
            session.getVideoMetadata(resourceItem(), this.type, iAdobeStorageDataRequestCompletionHandler);
        }
    }

    protected void getRenditionFromServerWithType(final AdobeAssetFileRenditionType adobeAssetFileRenditionType, final AdobeAssetImageDimensions adobeAssetImageDimensions, final int i, final IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        String str;
        switch (adobeAssetFileRenditionType) {
            case ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:
                str = "image/png";
                break;
            case ADOBE_ASSET_FILE_RENDITION_TYPE_PDF:
                str = "image/pdf";
                break;
            default:
                str = "image/jpeg";
                break;
        }
        float f2 = adobeAssetImageDimensions.height > adobeAssetImageDimensions.width ? adobeAssetImageDimensions.height : adobeAssetImageDimensions.width;
        IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler = new IAdobeStorageDataRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.11
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler
            public void onComplete(byte[] bArr) {
                AdobeAssetFile.this.renditionRequest = null;
                if (bArr != null) {
                    AdobeCommonCache.getSharedInstance().addData(bArr, AdobeAssetFile.this.cacheGUID(), AdobeAssetFile.this.cacheKey(adobeAssetFileRenditionType, adobeAssetImageDimensions, i), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFile.CACHENAME, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.11.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                            if (bool.booleanValue()) {
                                if (AdobeAssetFile.this.md5Hash != null) {
                                    HashMap map = new HashMap();
                                    map.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, AdobeAssetFile.this.md5Hash);
                                    map.put(AdobeDCXConstants.AdobeDCXAssetStateModified, AdobeAssetFile.this.modificationDate);
                                    map.put("etag", AdobeAssetFile.this.etag);
                                    AdobeCommonCache.getSharedInstance().addDictionary(map, AdobeAssetFile.this.cacheGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFile.CACHENAME);
                                    return;
                                }
                                return;
                            }
                            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:getRenditionFromServer", String.format("Adding to caches is failed for %s", AdobeAssetFile.this.href));
                        }
                    });
                }
                iAdobeGenericRequestCallback.onCompletion(bArr);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null && adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorCancelled) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getRendition", "Renditon Request for " + AdobeAssetFile.this.href + "has been cancelled");
                    iAdobeGenericRequestCallback.onCancellation();
                } else if (adobeAssetException != null) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getRendition", "Renditon Request for " + AdobeAssetFile.this.href + "ended in error", adobeAssetException);
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (!this.pendingRendRequestCancellation) {
            this.renditionRequest = session != null ? session.getRendition(resourceItem(), (int) f2, str, i, iAdobeStorageDataRequestCompletionHandler) : null;
        } else {
            iAdobeGenericRequestCallback.onCancellation();
            this.pendingRendRequestCancellation = false;
        }
    }

    public void downloadAssetFile(URI uri, IAdobeGenericRequestCallback<Boolean, AdobeAssetException> iAdobeGenericRequestCallback) {
        downloadAssetFileForPage(uri, 0, iAdobeGenericRequestCallback);
    }

    public void downloadAssetFileForPage(URI uri, final int i, final IAdobeGenericRequestCallback<Boolean, AdobeAssetException> iAdobeGenericRequestCallback) {
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.12
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                AdobeAssetFile.this.dataRequest = null;
                if (adobeStorageResourceItem != null) {
                    iAdobeGenericRequestCallback.onCompletion(true);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null && adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorCancelled) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "has been cancelled");
                    iAdobeGenericRequestCallback.onCancellation();
                } else if (adobeAssetException != null) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "ended in error", adobeAssetException);
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (session != null) {
            this.dataRequest = session.getFileForced(resourceItem(), iAdobeStorageResourceRequestCompletionHandler, uri.getPath());
        }
    }

    public void getData(final IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        final C2outerClass c2outerClass = new C2outerClass();
        try {
            c2outerClass.handler = new Handler();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(cacheGUID(), cacheGUID(), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), CACHENAME, new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.13
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(final byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                AdobeCommonCache.getSharedInstance().getDictionaryFromGUID(AdobeAssetFile.this.cacheGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeAssetFile.CACHENAME, new AdobeCommonCacheHandler<Map<String, Object>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.13.1
                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onHit(Map<String, Object> map, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                        String str = (String) map.get(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                        if (str == null || !str.equals(AdobeAssetFile.this.md5Hash)) {
                            AdobeCommonCache.getSharedInstance().removeSetWithGUID(AdobeAssetFile.this.cacheGUID(), AdobeAssetFile.CACHENAME);
                            AdobeAssetFile.this.getDataForPage(0, iAdobeGenericRequestCallback);
                        } else {
                            iAdobeGenericRequestCallback.onCompletion(bArr);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onMiss() {
                        AdobeAssetFile.this.getDataForPage(0, iAdobeGenericRequestCallback);
                    }
                }, c2outerClass.handler);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobeAssetFile.this.getDataForPage(0, iAdobeGenericRequestCallback);
            }
        }, c2outerClass.handler)) {
            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetDataFromCache", String.format("Rendition request for %s ended in error.", this.href));
            iAdobeGenericRequestCallback.onError(null);
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFile$2outerClass, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class C2outerClass {
        Handler handler = null;

        C2outerClass() {
        }
    }

    public void getDataForSaveToDevice(final IAdobeGenericRequestCallback<Uri, AdobeAssetException> iAdobeGenericRequestCallback, final String str) {
        final C3outerClass c3outerClass = new C3outerClass();
        try {
            c3outerClass.handler = new Handler();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(cacheGUID(), cacheGUID(), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), CACHENAME, new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.14
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                AdobeCommonCache.getSharedInstance().getDictionaryFromGUID(AdobeAssetFile.this.cacheGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeAssetFile.CACHENAME, new AdobeCommonCacheHandler<Map<String, Object>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.14.1
                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onHit(Map<String, Object> map, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                        String str2 = (String) map.get(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                        if (str2 == null || !str2.equals(AdobeAssetFile.this.md5Hash)) {
                            AdobeCommonCache.getSharedInstance().removeSetWithGUID(AdobeAssetFile.this.cacheGUID(), AdobeAssetFile.CACHENAME);
                            AdobeAssetFile.this.getDataForPageSaveToDevice(0, iAdobeGenericRequestCallback, str);
                        } else {
                            iAdobeGenericRequestCallback.onCompletion(null);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onMiss() {
                        AdobeAssetFile.this.getDataForPageSaveToDevice(0, iAdobeGenericRequestCallback, str);
                    }
                }, c3outerClass.handler);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobeAssetFile.this.getDataForPageSaveToDevice(0, iAdobeGenericRequestCallback, str);
            }
        }, c3outerClass.handler)) {
            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetDataFromCache", String.format("Rendition request for %s ended in error.", this.href));
            iAdobeGenericRequestCallback.onError(null);
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFile$3outerClass, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class C3outerClass {
        Handler handler = null;

        C3outerClass() {
        }
    }

    public void getDataForPageSaveToDevice(final int i, final IAdobeGenericRequestCallback<Uri, AdobeAssetException> iAdobeGenericRequestCallback, String str) {
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.15
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                AdobeAssetFile.this.dataRequest = null;
                if (adobeStorageResourceItem != null) {
                    iAdobeGenericRequestCallback.onCompletion(null);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null && adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorCancelled) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "has been cancelled");
                    iAdobeGenericRequestCallback.onCancellation();
                } else if (adobeAssetException != null) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "ended in error", adobeAssetException);
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (session != null) {
            this.dataRequest = session.getFileForcedSaveToDevice(resourceItem(), iAdobeStorageResourceRequestCompletionHandler, str);
        }
    }

    public void getDataForPage(final int i, final IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.16
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                AdobeAssetFile.this.dataRequest = null;
                if (adobeStorageResourceItem != null) {
                    AdobeCommonCache.getSharedInstance().addData(adobeStorageResourceItem.getData(), AdobeAssetFile.this.cacheGUID(), AdobeAssetFile.this.cacheGUID(), EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFile.CACHENAME, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.16.1
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                            if (bool.booleanValue()) {
                                if (AdobeAssetFile.this.md5Hash != null) {
                                    HashMap map = new HashMap();
                                    map.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, AdobeAssetFile.this.md5Hash);
                                    map.put(AdobeDCXConstants.AdobeDCXAssetStateModified, AdobeAssetFile.this.modificationDate);
                                    map.put("etag", AdobeAssetFile.this.etag);
                                    AdobeCommonCache.getSharedInstance().addDictionary(map, AdobeAssetFile.this.cacheGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFile.CACHENAME);
                                    return;
                                }
                                return;
                            }
                            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:getData", String.format("Adding to caches is failed for %s", AdobeAssetFile.this.href));
                        }
                    });
                    iAdobeGenericRequestCallback.onCompletion(adobeStorageResourceItem.getData());
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null && adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorCancelled) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "has been cancelled");
                    iAdobeGenericRequestCallback.onCancellation();
                } else if (adobeAssetException != null) {
                    AdobeLogger.log(Level.INFO, "AssetFile.getPage", "Data Request for page " + i + " in " + AdobeAssetFile.this.href + "ended in error", adobeAssetException);
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (session != null) {
            this.dataRequest = session.getFileForced(resourceItem(), iAdobeStorageResourceRequestCompletionHandler, null);
        }
    }

    public String getDescription() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.GUID != null) {
                jSONObject.put("guid", this.GUID);
            }
            if (this.etag != null) {
                jSONObject.put("etag", this.etag);
            }
            if (this.href != null) {
                jSONObject.put("getHref", this.href);
            }
            if (this.parentHref != null) {
                jSONObject.put("parent-getHref", this.parentHref);
            }
            if (this.name != null) {
                jSONObject.put("name", this.name);
            }
            if (this.creationDate != null) {
                jSONObject.put("created", this.creationDate.toString());
            }
            if (this.modificationDate != null) {
                jSONObject.put(AdobeDCXConstants.AdobeDCXAssetStateModified, this.modificationDate.toString());
            }
            if (this.type != null) {
                jSONObject.put("type", this.type);
            }
            jSONObject.put("fileSize", this.fileSize);
            if (this.md5Hash != null) {
                jSONObject.put("md5Hash", this.md5Hash);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    protected AdobeAssetFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        this.asrItem = adobeStorageResourceItem;
        this.GUID = adobeStorageResourceItem.internalID;
        this.href = adobeStorageResourceItem.href;
        this.etag = adobeStorageResourceItem.etag;
        this.name = adobeStorageResourceItem.name;
        this.mCloud = adobeStorageResourceItem.getCloud();
        this.parentHref = adobeStorageResourceCollection.href;
        this.creationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceItem.created);
        this.modificationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceItem.modified);
        this.type = adobeStorageResourceItem.type;
        this.links = adobeStorageResourceItem.links;
        this.pendingRendRequestCancellation = false;
        if (this.type != null && this.type.startsWith(AdobeCommunityConstants.AdobeCommunityResponseFileType) && adobeStorageResourceItem.getOptionalMetadata().has("content-type")) {
            if (!this.type.equals(AdobeCommunityConstants.AdobeCommunityResponseFileType)) {
                AdobeLogger.log(Level.WARN, "AdobeAssetFile", "Ignoring additional information in type: " + this.type);
            }
            try {
                this.type = adobeStorageResourceItem.getOptionalMetadata().getString("content-type");
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (adobeStorageResourceItem.getLength() != null) {
            this.fileSize = adobeStorageResourceItem.getLength().intValue();
        }
        this.md5Hash = adobeStorageResourceItem.getMd5();
        this.optionalMetadata = adobeStorageResourceItem.getOptionalMetadata();
    }

    protected AdobeAssetFile() {
        this.pendingRendRequestCancellation = false;
    }

    protected AdobeStorageResourceItem resourceItem() {
        if (this.asrItem == null) {
            this.asrItem = AdobeStorageResourceItem.resourceFromHref(this.href);
            this.asrItem.name = this.name;
            this.asrItem.etag = this.etag;
            this.asrItem.internalID = this.GUID;
            this.asrItem.setMd5(this.md5Hash);
        }
        return this.asrItem;
    }

    protected static AdobeAssetFile AdobeAssetFileFromInfo(AdobeStorageAssetFileInfo adobeStorageAssetFileInfo) {
        AdobeAssetFileInternal adobeAssetFileInternal = new AdobeAssetFileInternal();
        adobeAssetFileInternal.GUID = adobeStorageAssetFileInfo.GUID;
        adobeAssetFileInternal.href = adobeStorageAssetFileInfo.href;
        adobeAssetFileInternal.parentHref = adobeStorageAssetFileInfo.parentHref;
        adobeAssetFileInternal.etag = adobeStorageAssetFileInfo.etag;
        adobeAssetFileInternal.name = adobeStorageAssetFileInfo.name;
        adobeAssetFileInternal.creationDate = adobeStorageAssetFileInfo.creationDate;
        adobeAssetFileInternal.modificationDate = adobeStorageAssetFileInfo.modificationDate;
        adobeAssetFileInternal.type = adobeStorageAssetFileInfo.type;
        adobeAssetFileInternal.md5Hash = adobeStorageAssetFileInfo.md5Hash;
        adobeAssetFileInternal.fileSize = adobeStorageAssetFileInfo.fileSize;
        adobeAssetFileInternal.currentVersion = adobeStorageAssetFileInfo.currentVersion;
        adobeAssetFileInternal.optionalMetadata = adobeStorageAssetFileInfo.getOptionalMetadata();
        adobeAssetFileInternal.links = adobeStorageAssetFileInfo.getLinks();
        adobeAssetFileInternal.hlsHref = adobeStorageAssetFileInfo.hlsHref;
        return adobeAssetFileInternal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cacheGUID() {
        String str = resourceItem().internalID;
        if (str == null) {
            return this.href.getPath().split(URIUtil.SLASH)[r0.length - 1];
        }
        String strReplace = str.replace(URIUtil.SLASH, d.ROLL_OVER_FILE_NAME_SEPARATOR);
        AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        if (defaultCloud != null && defaultCloud.isPrivateCloud()) {
            return strReplace + defaultCloud.getGUID();
        }
        return strReplace;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String cacheKey(AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
        return String.format("%d_%d-%d-%d", Integer.valueOf(adobeAssetFileRenditionType.getIntVal()), Integer.valueOf((int) adobeAssetImageDimensions.width), Integer.valueOf((int) adobeAssetImageDimensions.height), Integer.valueOf(i));
    }

    private boolean isCached(AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i) {
        return AdobeCommonCache.getSharedInstance().containsItem(cacheGUID(), cacheKey(adobeAssetFileRenditionType, adobeAssetImageDimensions, i), CACHENAME);
    }

    protected AdobeAssetFolder getParentFolder() {
        return AdobeAssetFolder.getFolderFromHref(this.href, getCloud());
    }

    protected static AdobeAssetFile create(String str, AdobeAssetFolder adobeAssetFolder, AdobeCloud adobeCloud, URL url, String str2, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String str3;
        AdobeAssetFileInternal adobeAssetFileInternal;
        Exception e2;
        if (str == null) {
            str = AdobeStorageLastPathComponentUtil.getLastPathComponent(url.getPath());
        }
        if (adobeAssetFolder == null) {
            return null;
        }
        String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
        if (validatedAssetName == null) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Illegal Characters in name");
            map.put("AdobeNetworkHTTPStatus", 400);
            final AdobeAssetException adobeAssetException = new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, map);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.17
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericRequestCallback.onError(adobeAssetException);
                    }
                });
            } else {
                iAdobeGenericRequestCallback.onError(adobeAssetException);
            }
            return null;
        }
        String rawPath = adobeAssetFolder.getHref().getRawPath();
        if (rawPath.endsWith(URIUtil.SLASH)) {
            str3 = rawPath + validatedAssetName;
        } else {
            str3 = rawPath + URIUtil.SLASH + validatedAssetName;
        }
        try {
            AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(new URI(str3));
            adobeStorageResourceItemResourceFromHref.type = str2;
            adobeStorageResourceItemResourceFromHref.setCloud(adobeCloud);
            adobeAssetFileInternal = new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeAssetFolder.resourceCollection());
            try {
                adobeAssetFileInternal.update(url, str2, iAdobeGenericRequestCallback, handler);
                adobeAssetFileInternal.setCreationDate(new Date());
                return adobeAssetFileInternal;
            } catch (Exception e3) {
                e2 = e3;
                e2.printStackTrace();
                return adobeAssetFileInternal;
            }
        } catch (Exception e4) {
            adobeAssetFileInternal = null;
            e2 = e4;
        }
    }

    protected static AdobeAssetFile createFromStream(@NonNull String str, AdobeAssetFolder adobeAssetFolder, AdobeCloud adobeCloud, InputStream inputStream, String str2, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String str3;
        AdobeAssetFileInternal adobeAssetFileInternal;
        Exception e2;
        if (adobeAssetFolder == null) {
            return null;
        }
        String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
        if (validatedAssetName == null) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Illegal Characters in name");
            map.put("AdobeNetworkHTTPStatus", 400);
            final AdobeAssetException adobeAssetException = new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, map);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFile.18
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericRequestCallback.onError(adobeAssetException);
                    }
                });
            } else {
                iAdobeGenericRequestCallback.onError(adobeAssetException);
            }
            return null;
        }
        String rawPath = adobeAssetFolder.getHref().getRawPath();
        if (rawPath.endsWith(URIUtil.SLASH)) {
            str3 = rawPath + validatedAssetName;
        } else {
            str3 = rawPath + URIUtil.SLASH + validatedAssetName;
        }
        try {
            AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(new URI(str3));
            adobeStorageResourceItemResourceFromHref.type = str2;
            adobeStorageResourceItemResourceFromHref.setCloud(adobeCloud);
            adobeAssetFileInternal = new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeAssetFolder.resourceCollection());
            try {
                adobeAssetFileInternal.updateFromStream(inputStream, str2, false, iAdobeGenericRequestCallback, handler);
                adobeAssetFileInternal.setCreationDate(new Date());
                return adobeAssetFileInternal;
            } catch (Exception e3) {
                e2 = e3;
                e2.printStackTrace();
                return adobeAssetFileInternal;
            }
        } catch (Exception e4) {
            adobeAssetFileInternal = null;
            e2 = e4;
        }
    }

    @Override // java.io.Externalizable
    @Deprecated
    public void readExternal(ObjectInput objectInput) throws ClassNotFoundException {
        try {
            this.GUID = (String) objectInput.readObject();
            this.href = (URI) objectInput.readObject();
            this.parentHref = (URI) objectInput.readObject();
            this.etag = (String) objectInput.readObject();
            this.name = (String) objectInput.readObject();
            this.creationDate = (Date) objectInput.readObject();
            this.modificationDate = (Date) objectInput.readObject();
            this.type = (String) objectInput.readObject();
            this.md5Hash = (String) objectInput.readObject();
            this.fileSize = objectInput.readLong();
            this.currentVersion = objectInput.readInt();
            String str = (String) objectInput.readObject();
            if (str != null) {
                try {
                    this.optionalMetadata = new JSONObject(str);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (IOException e3) {
            Log.d("Parcel Adobe", " " + e3);
        }
    }

    @Override // java.io.Externalizable
    @Deprecated
    public void writeExternal(ObjectOutput objectOutput) {
        try {
            objectOutput.writeObject(this.GUID);
            objectOutput.writeObject(this.href);
            objectOutput.writeObject(this.parentHref);
            objectOutput.writeObject(this.etag);
            objectOutput.writeObject(this.name);
            objectOutput.writeObject(this.creationDate);
            objectOutput.writeObject(this.modificationDate);
            objectOutput.writeObject(this.type);
            objectOutput.writeObject(this.md5Hash);
            objectOutput.writeLong(this.fileSize);
            objectOutput.writeInt(this.currentVersion);
            if (this.optionalMetadata != null) {
                objectOutput.writeObject(this.optionalMetadata.toString());
            }
        } catch (IOException e2) {
            Log.d("Parcel Adobe", "" + e2);
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetFile) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }
}
