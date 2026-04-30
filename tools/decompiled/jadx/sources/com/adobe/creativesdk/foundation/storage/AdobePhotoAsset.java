package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSPhotoEvent;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.adobe.creativesdk.foundation.internal.util.AdobePhotoUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.net.URI;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoAsset extends AdobePhoto implements Externalizable {
    public static final String AdobePhotoAssetRenditionImage1024 = "1024";
    public static final String AdobePhotoAssetRenditionImage2048 = "2048";
    public static final String AdobePhotoAssetRenditionImageFavorite = "favorite";
    public static final String AdobePhotoAssetRenditionImageFullSize = "fullsize";
    public static final String AdobePhotoAssetRenditionImagePreview = "preview";
    public static final String AdobePhotoAssetRenditionImageThumbnail = "144h";
    public static final String AdobePhotoAssetRenditionImageThumbnail2x = "thumbnail2x";
    private static final String AdobePhotoAssetRenditionLinkImage1024 = "/rels/rendition_type/1024";
    private static final String AdobePhotoAssetRenditionLinkImage2048 = "/rels/rendition_type/2048";
    private static final String AdobePhotoAssetRenditionLinkImageFavorite = "/rels/rendition_type/favorite";
    private static final String AdobePhotoAssetRenditionLinkImageFullSize = "/rels/rendition_type/fullsize";
    private static final String AdobePhotoAssetRenditionLinkImagePreview = "/rels/rendition_type/preview";
    private static final String AdobePhotoAssetRenditionLinkImageThumbnail = "/rels/rendition_type/144h";
    private static final String AdobePhotoAssetRenditionLinkImageThumbnail2x = "/rels/rendition_type/thumbnail2x";
    private AdobePhotoCatalog _catalog;
    private String _contentType;
    private AdobePhotoAssetRevision _latestRevision;
    private JSONObject _metadata;
    private String _name;
    private String _order;
    private Map<String, AdobePhotoAssetRendition> _renditions;
    private AdobePhotoAssetRevision _revision;
    private long _size;
    private AdobePhotoAssetType _type;
    private AdobeNetworkHttpTaskHandle _uploadRequestHandle = null;
    private IAdobeNetworkHttpTaskHandleListener _progressListener = null;
    private AdobeNetworkHttpTaskHandle _downloadRequestHandle = null;
    private IAdobeNetworkHttpTaskHandleListener _downloadProgressListener = null;

    /* JADX INFO: loaded from: classes2.dex */
    public enum AdobePhotoAssetType {
        AdobePhotoAssetTypeImage(0);

        private int _val;

        AdobePhotoAssetType(int i) {
            this._val = i;
        }

        public int getValue() {
            return this._val;
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this._name = (String) objectInput.readObject();
        this._catalog = (AdobePhotoCatalog) objectInput.readObject();
        this._contentType = (String) objectInput.readObject();
        try {
            this._metadata = new JSONObject((String) objectInput.readObject());
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePhotoAsset.readExternal", e2.getMessage());
        }
        this._latestRevision = (AdobePhotoAssetRevision) objectInput.readObject();
        this._revision = (AdobePhotoAssetRevision) objectInput.readObject();
        this._renditions = (Map) objectInput.readObject();
        this._order = (String) objectInput.readObject();
        this._size = objectInput.readLong();
        this._type = AdobePhotoAssetType.values()[objectInput.readInt()];
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this._name);
        objectOutput.writeObject(this._catalog);
        objectOutput.writeObject(this._contentType);
        objectOutput.writeObject(this._metadata.toString());
        objectOutput.writeObject(this._latestRevision);
        objectOutput.writeObject(this._revision);
        objectOutput.writeObject(this._renditions);
        objectOutput.writeObject(this._order);
        objectOutput.writeLong(this._size);
        objectOutput.writeInt(this._type.getValue());
    }

    public AdobePhotoCatalog getCatalog() {
        return this._catalog;
    }

    void setCatalog(AdobePhotoCatalog adobePhotoCatalog) {
        this._catalog = adobePhotoCatalog;
    }

    public String getName() {
        return this._name;
    }

    protected void setName(String str) {
        this._name = str;
    }

    public JSONObject getMetadata() {
        return this._metadata;
    }

    void setMetadata(JSONObject jSONObject) {
        this._metadata = jSONObject;
    }

    public AdobePhotoAssetType getType() {
        return this._type;
    }

    void setType(AdobePhotoAssetType adobePhotoAssetType) {
        this._type = adobePhotoAssetType;
    }

    public String getContentType() {
        return this._contentType;
    }

    void setContentType(String str) {
        this._contentType = str;
    }

    public long getSize() {
        return this._size;
    }

    void setSize(long j) {
        this._size = j;
    }

    public AdobePhotoAssetRevision getLatestRevision() {
        return this._latestRevision;
    }

    void setLatestRevision(AdobePhotoAssetRevision adobePhotoAssetRevision) {
        this._latestRevision = adobePhotoAssetRevision;
    }

    public AdobePhotoAssetRevision getRevision() {
        return this._revision;
    }

    void setRevision(AdobePhotoAssetRevision adobePhotoAssetRevision) {
        this._revision = adobePhotoAssetRevision;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto
    public AdobeCloud getCloud() {
        return super.getCloud();
    }

    public Map<String, AdobePhotoAssetRendition> getRenditions() {
        return this._renditions;
    }

    public void setRenditions(Map<String, AdobePhotoAssetRendition> map) {
        this._renditions = map;
    }

    public String getOrder() {
        return this._order;
    }

    void setOrder(String str) {
        this._order = str;
    }

    static AdobePhotoAsset create(final String str, AdobePhotoCatalog adobePhotoCatalog, URI uri, String str2, final IAdobeGenericRequestCallback<AdobePhotoAsset, AdobePhotoException> iAdobeGenericRequestCallback) {
        if (adobePhotoCatalog == null) {
            iAdobeGenericRequestCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE));
            return null;
        }
        AdobePhotoAsset adobePhotoAsset = new AdobePhotoAsset(str, null, adobePhotoCatalog);
        AdobePhotoSession adobePhotoSession = (AdobePhotoSession) adobePhotoCatalog.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        if (adobePhotoSession == null) {
            return null;
        }
        adobePhotoAsset._uploadRequestHandle = null;
        adobePhotoAsset._progressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }
        };
        adobePhotoAsset._uploadRequestHandle = adobePhotoSession.createAsset(adobePhotoAsset, adobePhotoCatalog, uri, str2, new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                adobePhotoAsset2.handleCommonUploadCompletionBookKeeping();
                iAdobeGenericRequestCallback.onCompletion(adobePhotoAsset2);
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                if (adobeCSDKException instanceof AdobeNetworkException) {
                    if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                        iAdobeGenericRequestCallback.onCancellation();
                        return;
                    } else {
                        AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to create photo asset " + str);
                        return;
                    }
                }
                if (adobeCSDKException instanceof AdobePhotoException) {
                    iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to create photo asset " + str);
                }
            }
        });
        adobePhotoAsset._uploadRequestHandle.registerListener(adobePhotoAsset._progressListener);
        return adobePhotoAsset;
    }

    public static AdobePhotoAsset create(final String str, AdobePhotoCollection adobePhotoCollection, URI uri, String str2, final IAdobeGenericRequestCallback<AdobePhotoAsset, AdobeCSDKException> iAdobeGenericRequestCallback) {
        if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeAuthException);
                }
            }
        }, "Create requires an authenticated user.")) {
            return null;
        }
        if (adobePhotoCollection == null) {
            iAdobeGenericRequestCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Input Validation failed"));
            return null;
        }
        AdobePhotoAsset adobePhotoAsset = new AdobePhotoAsset(str, null, adobePhotoCollection.getCatalog());
        AdobePhotoSession adobePhotoSession = (AdobePhotoSession) adobePhotoCollection.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        if (adobePhotoSession == null) {
            return null;
        }
        adobePhotoAsset._uploadRequestHandle = null;
        adobePhotoAsset._progressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.5
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }
        };
        final AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent = new AdobeAnalyticsETSPhotoEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSPhotoEvent.trackCloud(adobePhotoAsset.getCloud());
        adobeAnalyticsETSPhotoEvent.trackContentInfo(adobePhotoAsset._GUID, adobePhotoAsset._name, "", "photo", "" + adobePhotoAsset._size);
        adobePhotoAsset._uploadRequestHandle = adobePhotoSession.createAsset(adobePhotoAsset, adobePhotoCollection, uri, str2, new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                adobePhotoAsset2.handleCommonUploadCompletionBookKeeping();
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                adobeAnalyticsETSPhotoEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                iAdobeGenericRequestCallback.onCompletion(adobePhotoAsset2);
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.7
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                if (adobeCSDKException instanceof AdobeNetworkException) {
                    if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                        AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                        AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                        adobeAnalyticsETSPhotoEvent2.endAndTrackEventWithErrorCode("cancelled");
                        iAdobeGenericRequestCallback.onCancellation();
                        return;
                    }
                    AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to create photo asset " + str);
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent4 = adobeAnalyticsETSPhotoEvent;
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent5 = adobeAnalyticsETSPhotoEvent;
                    adobeAnalyticsETSPhotoEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    return;
                }
                if (adobeCSDKException instanceof AdobePhotoException) {
                    iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to create photo asset " + str);
                }
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent6 = adobeAnalyticsETSPhotoEvent;
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent7 = adobeAnalyticsETSPhotoEvent;
                adobeAnalyticsETSPhotoEvent6.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            }
        });
        adobePhotoAsset._uploadRequestHandle.registerListener(adobePhotoAsset._progressListener);
        return adobePhotoAsset;
    }

    public void cancelCreationRequest() {
        cancelUploadRequest();
    }

    public void refresh(final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobePhotoException> iAdobeGenericErrorCallback) {
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback2 = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.8
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback2 = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.9
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                if (!(adobeCSDKException instanceof AdobePhotoException)) {
                    AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to refresh photo asset " + AdobePhotoAsset.this._name);
                } else {
                    iAdobeGenericErrorCallback.onError((AdobePhotoException) adobeCSDKException);
                }
            }
        };
        if (getSession() != null) {
            getSession().getAsset(this, iAdobeGenericCompletionCallback2, iAdobeGenericErrorCallback2);
        }
    }

    public void delete(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        final AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent = new AdobeAnalyticsETSPhotoEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppDelete.getValue());
        adobeAnalyticsETSPhotoEvent.trackCloud(getCloud());
        adobeAnalyticsETSPhotoEvent.trackContentInfo(this._GUID, this._name, "", "photo", "" + this._size);
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.10
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeAuthException);
                }
            }
        }, "Delete requires an authenticated user.")) {
            IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.11
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                    adobeAnalyticsETSPhotoEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                    iAdobeRequestCompletionCallback.onCompletion();
                }
            };
            IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback2 = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.12
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                    adobeAnalyticsETSPhotoEvent2.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    if (!(adobeCSDKException instanceof AdobePhotoException)) {
                        AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to delete photo asset " + AdobePhotoAsset.this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError((AdobePhotoException) adobeCSDKException);
                    }
                }
            };
            if (getSession() != null) {
                getSession().deleteAsset(this, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback2);
            }
        }
    }

    public void uploadMasterDataFromPath(URI uri, boolean z, final IAdobeGenericRequestCallback<AdobePhotoAsset, AdobeCSDKException> iAdobeGenericRequestCallback) {
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.13
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeAuthException);
                }
            }
        }, "Upload requires an authenticated user.")) {
            this._uploadRequestHandle = null;
            this._progressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.14
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
                public void onProgressNotification(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            };
            IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.15
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                    AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                    iAdobeGenericRequestCallback.onCompletion(adobePhotoAsset);
                }
            };
            IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.16
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                    if (adobeCSDKException instanceof AdobeNetworkException) {
                        if (((AdobeNetworkException) adobeCSDKException).getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                            AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to upload photo asset " + AdobePhotoAsset.this._name);
                            return;
                        } else {
                            iAdobeGenericRequestCallback.onCancellation();
                            return;
                        }
                    }
                    if (!(adobeCSDKException instanceof AdobePhotoException)) {
                        AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to upload photo asset " + AdobePhotoAsset.this._name);
                    } else {
                        iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                    }
                }
            };
            if (getSession() != null) {
                this._uploadRequestHandle = getSession().uploadMasterDataForAsset(this, uri, z, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                this._uploadRequestHandle.registerListener(this._progressListener);
            }
        }
    }

    public void uploadRendition(AdobePhotoAssetRendition adobePhotoAssetRendition, final IAdobeGenericRequestCallback<AdobePhotoAsset, AdobeCSDKException> iAdobeGenericRequestCallback) {
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.17
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericRequestCallback != null) {
                    iAdobeGenericRequestCallback.onError(adobeAuthException);
                }
            }
        }, "Upload requires an authenticated user.")) {
            this._uploadRequestHandle = null;
            this._progressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.18
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
                public void onProgressNotification(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            };
            IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.19
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                    AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                    iAdobeGenericRequestCallback.onCompletion(adobePhotoAsset);
                }
            };
            IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.20
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                    if (adobeCSDKException instanceof AdobeNetworkException) {
                        if (((AdobeNetworkException) adobeCSDKException).getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                            AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to upload rendition for photo asset " + AdobePhotoAsset.this._name);
                            return;
                        } else {
                            iAdobeGenericRequestCallback.onCancellation();
                            return;
                        }
                    }
                    if (!(adobeCSDKException instanceof AdobePhotoException)) {
                        AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to upload rendition for photo asset " + AdobePhotoAsset.this._name);
                    } else {
                        iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                    }
                }
            };
            if (getSession() != null) {
                this._uploadRequestHandle = getSession().uploadRendition(adobePhotoAssetRendition, this, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                this._uploadRequestHandle.registerListener(this._progressListener);
            }
        }
    }

    public void cancelUploadRequest() {
        if (this._uploadRequestHandle != null) {
            if (this._progressListener != null) {
                this._uploadRequestHandle.unregisterListener(this._progressListener);
                this._progressListener = null;
            }
            this._uploadRequestHandle.cancel();
            this._uploadRequestHandle = null;
        }
    }

    public void downloadMasterData(final IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback) {
        Handler handler;
        final String str = String.format("%s-master", this._revision == null ? "(null)" : this._revision.getGUID());
        AdobeCommonCacheHandler<byte[]> adobeCommonCacheHandler = new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.21
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                iAdobeGenericRequestCallback.onCompletion(bArr);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobePhotoAsset.this._downloadRequestHandle = null;
                AdobePhotoAsset.this._downloadProgressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.21.1
                    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
                    public void onProgressNotification(double d2) {
                        iAdobeGenericRequestCallback.onProgress(d2);
                    }
                };
                IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.21.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobePhotoAsset.this.handleCommonDownloadCompletionBookKeeping();
                        iAdobeGenericRequestCallback.onCompletion(bArr);
                        AdobeCommonCache.getSharedInstance().addData(bArr, AdobePhotoAsset.this._GUID, str, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.photo", new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.21.2.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(Boolean bool) {
                                if (!bool.booleanValue()) {
                                    AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Request for cache com.adobe.cc.photoended in Error");
                                }
                            }
                        });
                    }
                };
                IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.21.3
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        AdobePhotoAsset.this.handleCommonDownloadCompletionBookKeeping();
                        if (adobeCSDKException instanceof AdobeNetworkException) {
                            if (((AdobeNetworkException) adobeCSDKException).getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                                AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to download data for photo asset " + AdobePhotoAsset.this._name);
                                return;
                            } else {
                                iAdobeGenericRequestCallback.onCancellation();
                                return;
                            }
                        }
                        if (!(adobeCSDKException instanceof AdobePhotoException)) {
                            AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to download data for photo asset " + AdobePhotoAsset.this._name);
                        } else {
                            iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                        }
                    }
                };
                if (AdobePhotoAsset.this.getSession() != null) {
                    AdobePhotoAsset.this._downloadRequestHandle = AdobePhotoAsset.this.getSession().downloadMasterDataForAsset(AdobePhotoAsset.this, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                    AdobePhotoAsset.this._downloadRequestHandle.registerListener(AdobePhotoAsset.this._downloadProgressListener);
                }
            }
        };
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(this._GUID, str, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.photo", adobeCommonCacheHandler, handler)) {
            AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Request for cache com.adobe.cc.photoended in Error");
            iAdobeGenericRequestCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_FILE_READ_FAILURE));
        }
    }

    public void downloadRendition(final AdobePhotoAssetRendition adobePhotoAssetRendition, final IAdobeGenericRequestCallback<byte[], AdobePhotoException> iAdobeGenericRequestCallback) {
        Handler handler;
        final String str = String.format("%s_%s_%s", adobePhotoAssetRendition.getGUID(), this._revision == null ? "(null)" : this._revision.getGUID(), Integer.valueOf(adobePhotoAssetRendition.getType().getValue()));
        AdobeCommonCacheHandler<byte[]> adobeCommonCacheHandler = new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.22
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                iAdobeGenericRequestCallback.onCompletion(bArr);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobePhotoAsset.this._downloadRequestHandle = null;
                AdobePhotoAsset.this._downloadProgressListener = new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.22.1
                    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
                    public void onProgressNotification(double d2) {
                        iAdobeGenericRequestCallback.onProgress(d2);
                    }
                };
                IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.22.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        AdobePhotoAsset.this.handleCommonDownloadCompletionBookKeeping();
                        iAdobeGenericRequestCallback.onCompletion(bArr);
                        AdobeCommonCache.getSharedInstance().addData(bArr, AdobePhotoAsset.this._GUID, str, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), "com.adobe.cc.photo", new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.22.2.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(Boolean bool) {
                                if (!bool.booleanValue()) {
                                    AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Request for cache com.adobe.cc.photo ended in Error");
                                }
                            }
                        });
                    }
                };
                IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoAsset.22.3
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        AdobePhotoAsset.this.handleCommonUploadCompletionBookKeeping();
                        if (adobeCSDKException instanceof AdobeNetworkException) {
                            if (((AdobeNetworkException) adobeCSDKException).getErrorCode() != AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                                AdobeLogger.log(Level.INFO, AdobePhotoAsset.class.getSimpleName(), "Failed to download data for photo asset " + AdobePhotoAsset.this._name);
                                return;
                            } else {
                                iAdobeGenericRequestCallback.onCancellation();
                                return;
                            }
                        }
                        if (!(adobeCSDKException instanceof AdobePhotoException)) {
                            AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Failed to download data for photo asset " + AdobePhotoAsset.this._name);
                        } else {
                            iAdobeGenericRequestCallback.onError((AdobePhotoException) adobeCSDKException);
                        }
                    }
                };
                if (AdobePhotoAsset.this.getSession() != null) {
                    AdobePhotoAsset.this._downloadRequestHandle = AdobePhotoAsset.this.getSession().downloadRendition(adobePhotoAssetRendition, AdobePhotoAsset.this, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                    AdobePhotoAsset.this._downloadRequestHandle.registerListener(AdobePhotoAsset.this._downloadProgressListener);
                }
            }
        };
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(this._GUID, str, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), "com.adobe.cc.photo", adobeCommonCacheHandler, handler)) {
            AdobeLogger.log(Level.ERROR, AdobePhotoAsset.class.getSimpleName(), "Request for cache com.adobe.cc.photoended in Error");
            iAdobeGenericRequestCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_FILE_READ_FAILURE));
        }
    }

    public void cancelDownloadRequest() {
        if (this._downloadRequestHandle != null) {
            if (this._downloadProgressListener != null) {
                this._downloadRequestHandle.unregisterListener(this._downloadProgressListener);
                this._downloadProgressListener = null;
            }
            this._downloadRequestHandle.cancel();
            this._downloadRequestHandle = null;
        }
    }

    public boolean isEqualToAsset(AdobePhotoAsset adobePhotoAsset) {
        return this._GUID.equals(adobePhotoAsset._GUID) && this._catalog.isEqualToCatalog(adobePhotoAsset._catalog);
    }

    protected AdobePhotoAsset() {
    }

    protected AdobePhotoAsset(String str, String str2, AdobePhotoCatalog adobePhotoCatalog) {
        str2 = str2 == null ? AdobePhotoUtils.generateGUID() : str2;
        this._GUID = str2;
        this._href = "/v1.0/catalogs/" + adobePhotoCatalog.getGUID() + "/assets/" + str2;
        this._catalog = adobePhotoCatalog;
        this._cloud = adobePhotoCatalog.getCloud();
        this._name = str;
        this._order = null;
        this._renditions = new HashMap();
        this._metadata = new JSONObject();
        this._type = null;
    }

    protected void handleCommonUploadCompletionBookKeeping() {
        if (this._uploadRequestHandle != null) {
            this._uploadRequestHandle.unregisterListener(this._progressListener);
        }
        this._uploadRequestHandle = null;
        this._progressListener = null;
    }

    void handleCommonDownloadCompletionBookKeeping() {
        if (this._downloadRequestHandle != null) {
            this._downloadRequestHandle.unregisterListener(this._downloadProgressListener);
        }
        this._downloadRequestHandle = null;
        this._downloadProgressListener = null;
    }

    public boolean updateFromDictionary(JSONObject jSONObject, AdobePhotoCatalog adobePhotoCatalog) throws AdobePhotoException {
        if (jSONObject.optString("id", null) != null) {
            this._internalID = jSONObject.optString("id", null);
        }
        if (jSONObject.optString("_id", null) != null) {
            this._GUID = jSONObject.optString("_id", null);
        }
        if (jSONObject.opt("created") != null) {
            this._creationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString("created"));
        }
        if (jSONObject.opt(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED) != null) {
            this._modificationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED));
        }
        if (this._modificationDate == null && this._creationDate != null) {
            this._modificationDate = this._creationDate;
        }
        this._catalog = adobePhotoCatalog;
        this._cloud = adobePhotoCatalog.getCloud();
        String strOptString = jSONObject.optString("subtype", null);
        if (strOptString != null && strOptString.equals("jpeg")) {
            this._type = AdobePhotoAssetType.AdobePhotoAssetTypeImage;
        }
        if (jSONObject.optString("order", null) != null) {
            this._order = jSONObject.optString("order", null);
        }
        this._metadata = jSONObject.optJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_PAYLOAD);
        if (this._metadata != null) {
            JSONObject jSONObjectOptJSONObject = this._metadata.optJSONObject("importSource");
            if (jSONObjectOptJSONObject != null) {
                this._name = jSONObjectOptJSONObject.optString(DCXProjectKeys.kDCXKey_Object_fileName, null);
                this._size = jSONObjectOptJSONObject.optLong("fileSize");
                this._contentType = jSONObjectOptJSONObject.optString("contentType", null);
            }
        } else {
            this._metadata = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AdobePhotoSession.LINKS);
        if (jSONObjectOptJSONObject2 != null) {
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("self");
            if (jSONObjectOptJSONObject3 != null) {
                this._href = jSONObjectOptJSONObject3.optString("href", null);
            }
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("/rels/latest_revision");
            if (jSONObjectOptJSONObject4 != null) {
                this._latestRevision = new AdobePhotoAssetRevision(jSONObjectOptJSONObject4.optString("href", null), false);
                this._revision = this._latestRevision;
            }
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject2.optJSONObject("/rels/master");
            if (jSONObjectOptJSONObject5 != null && this._contentType == null) {
                this._contentType = jSONObjectOptJSONObject5.optString(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyContentType, null);
            }
            HashMap map = new HashMap();
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImageThumbnail), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL, map, AdobePhotoAssetRenditionImageThumbnail);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImageThumbnail2x), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL_2X, map, AdobePhotoAssetRenditionImageThumbnail2x);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImage2048), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_2048, map, AdobePhotoAssetRenditionImage2048);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImage1024), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_1024, map, AdobePhotoAssetRenditionImage1024);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImageFullSize), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FULL_SIZE, map, AdobePhotoAssetRenditionImageFullSize);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImageFavorite), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FAVORITE, map, AdobePhotoAssetRenditionImageFavorite);
            addRenditionLink(jSONObjectOptJSONObject2.optJSONObject(AdobePhotoAssetRenditionLinkImagePreview), AdobePhotoAssetRendition.AdobePhotoAssetRenditionType.ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_PREVIEW, map, "preview");
            this._renditions = map;
            return true;
        }
        AdobeLogger.log(Level.WARN, AdobePhotoAsset.class.getSimpleName(), "Asset doesn't have any links.");
        this._href = null;
        return true;
    }

    void addRenditionLink(JSONObject jSONObject, AdobePhotoAssetRendition.AdobePhotoAssetRenditionType adobePhotoAssetRenditionType, Map<String, AdobePhotoAssetRendition> map, String str) {
        if (jSONObject != null) {
            map.put(str, new AdobePhotoAssetRendition(URI.create(jSONObject.optString("href", null)), adobePhotoAssetRenditionType));
        }
    }

    boolean updateFromData(String str, AdobePhotoCatalog adobePhotoCatalog) throws AdobePhotoException {
        JSONObject jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(str);
        if (jSONObjectJSONObjectWithData != null) {
            return updateFromDictionary(jSONObjectJSONObjectWithData, adobePhotoCatalog);
        }
        throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Parsed asset data is not of type dictionary.");
    }
}
