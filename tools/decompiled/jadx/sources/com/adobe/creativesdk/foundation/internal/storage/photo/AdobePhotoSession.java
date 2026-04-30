package com.adobe.creativesdk.foundation.internal.storage.photo;

import android.os.Handler;
import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.util.AdobePhotoErrUtils;
import com.adobe.creativesdk.foundation.internal.util.AdobePhotoUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRendition;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAssetRevision;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import com.adobe.creativesdk.foundation.storage.AdobePhotoErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoPage;
import com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.Charsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoSession extends AdobeCloudServiceSession {
    public static final String APPLICATION_JSON = "application/json";
    public static final String ASSETS = "assets";
    private static final String AdobePhotoAssetRenditionMetadataExtractDefault = "xmp,caption,location";
    private static final String AdobePhotoSessionCacheID = "com.adobe.cc.photo";
    public static final String CONTENT_LENGTH = "Content-Length";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String LINKS = "links";
    public static final String TOTAL_COUNT = "total_count";
    private static final Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap = new HashMap();
    protected boolean _cacheConfigured;

    public enum AdobePhotoAccountStatus {
        ADOBE_PHOTO_ACCOUNT_STATUS_CREATED,
        ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL,
        ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD,
        ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED,
        ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER,
        ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD,
        ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED
    }

    public class AccountSubscriptionTriple {
        String productID = null;
        Date purchase = null;
        Date expiration = null;

        public String getProductID() {
            return this.productID;
        }

        public Date getPurchase() {
            return this.purchase;
        }

        public Date getExpiration() {
            return this.expiration;
        }
    }

    public class AccountLimits {
        int maxCatalogs = 0;
        int maxUsersPerCatalog = 0;
        int uploadsPerMonth = 0;
        boolean canUploadRawData = false;

        public int getMaxCatalogs() {
            return this.maxCatalogs;
        }

        public int getMaxUsersPerCatalog() {
            return this.maxUsersPerCatalog;
        }

        public int getUploadsPerMonth() {
            return this.uploadsPerMonth;
        }

        public boolean isCanUploadRawData() {
            return this.canUploadRawData;
        }
    }

    protected static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        AdobeCloudEndpoint adobeCloudEndpoint;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://photo-api.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://photo-api-stage.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentTestUS:
                str = "https://photo-api-next.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobePhotoSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                return null;
        }
        try {
            adobeCloudEndpoint = new AdobeCloudEndpoint(null, new URL(str), AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            adobeCloudEndpoint = null;
        }
        return adobeCloudEndpoint;
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobePhotoSession(adobeCloudEndpoint);
    }

    public AdobePhotoSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobePhotoServiceDisconnectedNotification);
        setupOngoingConnectionTimer(15L, false);
    }

    public AdobePhotoSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
    }

    public AdobePhotoSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        super(adobeNetworkHttpService, null);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void setUpService() {
        String adobeID = AdobeAuthKeychain.getSharedKeychain().getAdobeID();
        if (!isCacheConfigured() && adobeID != null && adobeID.length() > 0) {
            try {
                AdobeCommonCache.getSharedInstance().configureCache(AdobePhotoSessionCacheID, 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU));
                e = null;
            } catch (AdobeInvalidCacheSettingsException e2) {
                e = e2;
            }
            if (e == null) {
                this._cacheConfigured = true;
            } else {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), null);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void tearDownService() {
        super.tearDownService();
        if (AdobeCommonCache.getSharedInstance().doesCacheExist(AdobePhotoSessionCacheID)) {
            AdobeCommonCache.getSharedInstance().printStatistics(AdobePhotoSessionCacheID);
            if (!AdobeCommonCache.getSharedInstance().removeCache(AdobePhotoSessionCacheID)) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Removal of cache failed");
            }
        }
        this._cacheConfigured = false;
    }

    protected boolean isCacheConfigured() {
        return this._cacheConfigured;
    }

    public AdobeNetworkHttpTaskHandle createCatalog(final AdobePhotoCatalog adobePhotoCatalog, AdobePhotoCatalog.AdobePhotoCatalogType adobePhotoCatalogType, final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCatalog, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, true);
        String str = "";
        if (adobePhotoCatalogType == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom) {
            str = "lightroom";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCatalog.getName()));
            jSONObject.put("subtype", str);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse;
                if (adobeNetworkHttpResponse.getStatusCode() != 201) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    try {
                        adobePhotoCatalog.updateFromData(adobeNetworkHttpResponse.getDataString());
                        photoErrorFromResponse = null;
                    } catch (AdobePhotoException e3) {
                        AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.createCatalog", e3.getMessage(), e3);
                        photoErrorFromResponse = null;
                    }
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCatalog createCatalog(AdobePhotoCatalog adobePhotoCatalog, AdobePhotoCatalog.AdobePhotoCatalogType adobePhotoCatalogType) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1EnclosedClass c1EnclosedClass = new C1EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                reentrantLock.lock();
                c1EnclosedClass.isDone = true;
                c1EnclosedClass.catalog = adobePhotoCatalog2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c1EnclosedClass.isDone = true;
                c1EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        createCatalog(adobePhotoCatalog, adobePhotoCatalogType, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c1EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.createCatalog", e2.getMessage());
            }
        }
        if (c1EnclosedClass.exception != null) {
            throw c1EnclosedClass.exception;
        }
        return c1EnclosedClass.catalog;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$1EnclosedClass, reason: invalid class name */
    class C1EnclosedClass {
        boolean isDone = false;
        AdobePhotoCatalog catalog = null;
        AdobeCSDKException exception = null;

        C1EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle updateCatalog(final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCatalog, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Content-Type", "application/json");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCatalog.getName()));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.updateCatalog", e2.getMessage(), e2);
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.4
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse;
                if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    try {
                        adobePhotoCatalog.updateFromData(adobeNetworkHttpResponse.getDataString());
                        photoErrorFromResponse = null;
                    } catch (AdobePhotoException e3) {
                        AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.updateCatalog", e3.getMessage(), e3);
                        photoErrorFromResponse = null;
                    }
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCatalog updateCatalog(AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C2EnclosedClass c2EnclosedClass = new C2EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                reentrantLock.lock();
                c2EnclosedClass.isDone = true;
                c2EnclosedClass.catalog = adobePhotoCatalog2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c2EnclosedClass.isDone = true;
                c2EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        updateCatalog(adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c2EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c2EnclosedClass.exception != null) {
            throw c2EnclosedClass.exception;
        }
        return c2EnclosedClass.catalog;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$2EnclosedClass, reason: invalid class name */
    class C2EnclosedClass {
        boolean isDone = false;
        AdobePhotoCatalog catalog = null;
        AdobeCSDKException exception = null;

        C2EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle deleteCatalog(final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCatalog, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, false);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCatalog.getName()));
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.7
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse = null;
                if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    AdobeLogger.log(Level.INFO, "PhotoSession:DeleteCatalog", String.format("Catalog %s deleted", adobePhotoCatalog.getName()));
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCatalog deleteCatalog(AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C3EnclosedClass c3EnclosedClass = new C3EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.8
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                reentrantLock.lock();
                c3EnclosedClass.isDone = true;
                c3EnclosedClass.catalog = adobePhotoCatalog2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.9
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c3EnclosedClass.isDone = true;
                c3EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        deleteCatalog(adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c3EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c3EnclosedClass.exception != null) {
            throw c3EnclosedClass.exception;
        }
        return c3EnclosedClass.catalog;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$3EnclosedClass, reason: invalid class name */
    class C3EnclosedClass {
        boolean isDone = false;
        AdobePhotoCatalog catalog = null;
        AdobeCSDKException exception = null;

        C3EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getCatalogWithUUID(String str, AdobeCloud adobeCloud, IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getCatalog(new AdobePhotoCatalog(null, str, adobeCloud), iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public AdobePhotoCatalog getCatalogWithUUID(String str, AdobeCloud adobeCloud) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C4EnclosedClass c4EnclosedClass = new C4EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.10
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog) {
                reentrantLock.lock();
                c4EnclosedClass.isDone = true;
                c4EnclosedClass.catalog = adobePhotoCatalog;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.11
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c4EnclosedClass.isDone = true;
                c4EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getCatalogWithUUID(str, adobeCloud, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c4EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c4EnclosedClass.exception != null) {
            throw c4EnclosedClass.exception;
        }
        return c4EnclosedClass.catalog;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$4EnclosedClass, reason: invalid class name */
    class C4EnclosedClass {
        boolean isDone = false;
        AdobePhotoCatalog catalog = null;
        AdobeCSDKException exception = null;

        C4EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getCatalog(final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getResponseFor(requestFor(adobePhotoCatalog, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, false), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.12
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse;
                if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    try {
                        adobePhotoCatalog.updateFromData(adobeNetworkHttpResponse.getDataString());
                        photoErrorFromResponse = null;
                    } catch (AdobePhotoException e2) {
                        AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.getCatalog", e2.getMessage(), e2);
                        photoErrorFromResponse = null;
                    }
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCatalog getCatalog(AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C5EnclosedClass c5EnclosedClass = new C5EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.13
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                reentrantLock.lock();
                c5EnclosedClass.isDone = true;
                c5EnclosedClass.catalog = adobePhotoCatalog2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.14
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c5EnclosedClass.isDone = true;
                c5EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getCatalog(adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c5EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c5EnclosedClass.exception != null) {
            throw c5EnclosedClass.exception;
        }
        return c5EnclosedClass.catalog;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$5EnclosedClass, reason: invalid class name */
    class C5EnclosedClass {
        boolean isDone = false;
        AdobePhotoCatalog catalog = null;
        AdobeCSDKException exception = null;

        C5EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle listCatalogsOfType(final AdobePhotoCatalog.AdobePhotoCatalogType adobePhotoCatalogType, final AdobeCloud adobeCloud, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        String str;
        String str2 = "all";
        if (adobePhotoCatalogType == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom) {
            str2 = "lightroom%3BX-lightroom";
        }
        if (getService() == null) {
            return null;
        }
        if (str2 == null) {
            str = "";
        } else {
            str = String.format("subtype=%s", str2);
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("/v1.0/catalogs?%s", str), getService().getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            final ArrayList arrayList = new ArrayList();
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.15
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws AdobePhotoException {
                    boolean zUpdateFromDictionary;
                    JSONObject jSONObjectJSONObjectWithData = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        e = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            e = null;
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                        } catch (AdobePhotoException e2) {
                            e = e2;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                JSONArray jSONArray = jSONObjectJSONObjectWithData.getJSONArray("catalogs");
                                if (jSONArray.length() == 0 && adobePhotoCatalogType == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom) {
                                    arrayList.add(new AdobePhotoCatalog("lightroom", null, adobeCloud, AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom));
                                } else {
                                    for (int i = 0; i < jSONArray.length(); i++) {
                                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                                        if (jSONObject != null) {
                                            AdobePhotoCatalog adobePhotoCatalog = new AdobePhotoCatalog(null, null, adobeCloud);
                                            if (this.getService() == null || this.getService().getBaseURL() == null) {
                                                iAdobeGenericErrorCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE));
                                                return;
                                            }
                                            adobePhotoCatalog.setHref(this.getService().getBaseURL().toString());
                                            try {
                                                zUpdateFromDictionary = adobePhotoCatalog.updateFromDictionary(jSONObject);
                                            } catch (AdobePhotoException e3) {
                                                AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.listCatalogsOfType", e3.getMessage(), e3);
                                                zUpdateFromDictionary = false;
                                            }
                                            if (zUpdateFromDictionary) {
                                                arrayList.add(adobePhotoCatalog);
                                            }
                                        }
                                    }
                                }
                            } catch (JSONException e4) {
                                AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.listCatalogsOfType", e4.getMessage(), e4);
                            }
                        } else if (jSONObjectJSONObjectWithData == null) {
                            e = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_MISSING_JSON_DATA);
                        }
                    }
                    if (e == null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    } else {
                        iAdobeGenericErrorCallback.onError(e);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public ArrayList<AdobePhotoCatalog> listCatalogsOfType(AdobePhotoCatalog.AdobePhotoCatalogType adobePhotoCatalogType, AdobeCloud adobeCloud) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C6EnclosedClass c6EnclosedClass = new C6EnclosedClass();
        IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.16
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoCatalog> arrayList) {
                reentrantLock.lock();
                c6EnclosedClass.isDone = true;
                c6EnclosedClass.catalogs = arrayList;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.17
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c6EnclosedClass.isDone = true;
                c6EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        listCatalogsOfType(adobePhotoCatalogType, adobeCloud, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c6EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c6EnclosedClass.exception != null) {
            throw c6EnclosedClass.exception;
        }
        return c6EnclosedClass.catalogs;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$6EnclosedClass, reason: invalid class name */
    class C6EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoCatalog> catalogs = null;
        AdobeCSDKException exception = null;

        C6EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle listCollectionsInCatalog(final AdobePhotoCatalog adobePhotoCatalog, final AdobeCloud adobeCloud, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        final AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/albums", adobePhotoCatalog.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.18
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    JSONObject jSONObjectJSONObjectWithData;
                    boolean zUpdateFromDictionary;
                    AdobePhotoException photoErrorFromResponse;
                    AdobePhotoException adobePhotoException = null;
                    ArrayList arrayList = new ArrayList();
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200) {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                        } catch (AdobePhotoException e2) {
                            adobePhotoException = e2;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                JSONArray jSONArray = jSONObjectJSONObjectWithData.getJSONArray("albums");
                                for (int i = 0; i < jSONArray.length(); i++) {
                                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                                    if (jSONObject != null) {
                                        AdobePhotoCollectionInternal adobePhotoCollectionInternal = new AdobePhotoCollectionInternal();
                                        adobePhotoCollectionInternal.setCloud(adobeCloud);
                                        adobePhotoCollectionInternal.setBaseHref(service.getBaseURL().toString());
                                        try {
                                            zUpdateFromDictionary = adobePhotoCollectionInternal.updateFromDictionary(jSONObject, adobePhotoCatalog);
                                        } catch (AdobePhotoException e3) {
                                            AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.listCollectionsInCatalog", e3.getMessage(), e3);
                                            zUpdateFromDictionary = false;
                                        }
                                        if (zUpdateFromDictionary) {
                                            arrayList.add(adobePhotoCollectionInternal);
                                        }
                                    }
                                }
                            } catch (JSONException e4) {
                                AdobeLogger.log(Level.ERROR, "", "", e4);
                            }
                        }
                        photoErrorFromResponse = adobePhotoException;
                    } else {
                        photoErrorFromResponse = (adobePhotoCatalog.getType() == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom && !adobePhotoCatalog.isInSync() && statusCode == 404) ? null : AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public ArrayList<AdobePhotoCollection> listCollectionsInCatalog(AdobePhotoCatalog adobePhotoCatalog, int i, AdobeCloud adobeCloud) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C7EnclosedClass c7EnclosedClass = new C7EnclosedClass();
        IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.19
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
                reentrantLock.lock();
                c7EnclosedClass.isDone = true;
                c7EnclosedClass.collections = arrayList;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.20
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c7EnclosedClass.isDone = true;
                c7EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        listCollectionsInCatalog(adobePhotoCatalog, adobeCloud, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c7EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c7EnclosedClass.exception != null) {
            throw c7EnclosedClass.exception;
        }
        return c7EnclosedClass.collections;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$7EnclosedClass, reason: invalid class name */
    class C7EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoCollection> collections = null;
        AdobeCSDKException exception = null;

        C7EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getCollectionCountInCatalog(final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/albums/count", adobePhotoCatalog.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.21
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException adobePhotoException;
                    JSONObject jSONObjectJSONObjectWithData;
                    AdobePhotoException photoErrorFromResponse;
                    Integer numValueOf = null;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200) {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            adobePhotoException = null;
                        } catch (AdobePhotoException e2) {
                            adobePhotoException = e2;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                numValueOf = Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobePhotoSession.TOTAL_COUNT));
                            } catch (JSONException e3) {
                                AdobeLogger.log(Level.ERROR, "", "", e3);
                            }
                        }
                        photoErrorFromResponse = adobePhotoException;
                    } else {
                        photoErrorFromResponse = (adobePhotoCatalog.getType() == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom && !adobePhotoCatalog.isInSync() && statusCode == 404) ? null : AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(numValueOf);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public int getCollectionCountInCatalog(AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C8EnclosedClass c8EnclosedClass = new C8EnclosedClass();
        IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.22
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Integer num) {
                reentrantLock.lock();
                c8EnclosedClass.isDone = true;
                c8EnclosedClass.collectionsCount = num;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.23
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c8EnclosedClass.isDone = true;
                c8EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getCollectionCountInCatalog(adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c8EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c8EnclosedClass.exception != null) {
            throw c8EnclosedClass.exception;
        }
        return c8EnclosedClass.collectionsCount.intValue();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$8EnclosedClass, reason: invalid class name */
    class C8EnclosedClass {
        boolean isDone = false;
        Integer collectionsCount = null;
        AdobeCSDKException exception = null;

        C8EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAssetCountInCatalog(final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets/count", adobePhotoCatalog.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.24
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException adobePhotoException;
                    JSONObject jSONObjectJSONObjectWithData;
                    AdobePhotoException photoErrorFromResponse;
                    Integer numValueOf = null;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200) {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            adobePhotoException = null;
                        } catch (AdobePhotoException e2) {
                            adobePhotoException = e2;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                numValueOf = Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobePhotoSession.TOTAL_COUNT));
                            } catch (JSONException e3) {
                                AdobeLogger.log(Level.ERROR, "", "", e3);
                            }
                        }
                        photoErrorFromResponse = adobePhotoException;
                    } else {
                        photoErrorFromResponse = (adobePhotoCatalog.getType() == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom && !adobePhotoCatalog.isInSync() && statusCode == 404) ? null : AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(numValueOf);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public int getAssetCountInCatalog(AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C9EnclosedClass c9EnclosedClass = new C9EnclosedClass();
        IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.25
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Integer num) {
                reentrantLock.lock();
                c9EnclosedClass.isDone = true;
                c9EnclosedClass.assetsCount = num;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.26
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c9EnclosedClass.isDone = true;
                c9EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getAssetCountInCatalog(adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c9EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c9EnclosedClass.exception != null) {
            throw c9EnclosedClass.exception;
        }
        return c9EnclosedClass.assetsCount.intValue();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$9EnclosedClass, reason: invalid class name */
    class C9EnclosedClass {
        boolean isDone = false;
        Integer assetsCount = null;
        AdobeCSDKException exception = null;

        C9EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle createCollection(final AdobePhotoCollection adobePhotoCollection, AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) throws AdobeCSDKException {
        final AdobePhotoCatalog adobePhotoCatalogCreateCatalog;
        if (adobePhotoCatalog == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        if (adobePhotoCatalog.getType() != AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom || adobePhotoCatalog.isInSync()) {
            adobePhotoCatalogCreateCatalog = adobePhotoCatalog;
        } else {
            try {
                adobePhotoCatalogCreateCatalog = createCatalog(adobePhotoCatalog, AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom);
            } catch (AdobeCSDKException e2) {
                iAdobeGenericErrorCallback.onError(e2);
                return null;
            }
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, true);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCollection.getName()));
            return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.27
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse;
                    if (adobeNetworkHttpResponse.getStatusCode() != 201) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoCollection.updateFromData(adobeNetworkHttpResponse.getDataString(), adobePhotoCatalogCreateCatalog);
                            photoErrorFromResponse = null;
                        } catch (AdobePhotoException e3) {
                            AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.createCollection", e3.getMessage(), e3);
                            photoErrorFromResponse = null;
                        }
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (JSONException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public void createCollectionAsync(final AdobePhotoCollection adobePhotoCollection, AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (adobePhotoCatalog == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
        } else if (adobePhotoCatalog.getType() == AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom && !adobePhotoCatalog.isInSync()) {
            createCatalog(adobePhotoCatalog, AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom, new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.28
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                    AdobePhotoSession.this.createCollectionForCatalogInSync(adobePhotoCollection, adobePhotoCatalog2, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                }
            }, iAdobeGenericErrorCallback);
        } else {
            createCollectionForCatalogInSync(adobePhotoCollection, adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        }
    }

    public AdobeNetworkHttpTaskHandle createCollectionForCatalogInSync(final AdobePhotoCollection adobePhotoCollection, final AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, true);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCollection.getName()));
            return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.29
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse;
                    if (adobeNetworkHttpResponse.getStatusCode() != 201) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoCollection.updateFromData(adobeNetworkHttpResponse.getDataString(), adobePhotoCatalog);
                            photoErrorFromResponse = null;
                        } catch (AdobePhotoException e2) {
                            AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.createCollection", e2.getMessage(), e2);
                            photoErrorFromResponse = null;
                        }
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        }
    }

    public AdobePhotoCollection createCollection(AdobePhotoCollection adobePhotoCollection, AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C10EnclosedClass c10EnclosedClass = new C10EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.30
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection2) {
                reentrantLock.lock();
                c10EnclosedClass.isDone = true;
                c10EnclosedClass.collection = adobePhotoCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.31
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c10EnclosedClass.isDone = true;
                c10EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        createCollection(adobePhotoCollection, adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c10EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c10EnclosedClass.exception != null) {
            throw c10EnclosedClass.exception;
        }
        return c10EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$10EnclosedClass, reason: invalid class name */
    class C10EnclosedClass {
        boolean isDone = false;
        AdobePhotoCollection collection = null;
        AdobeCSDKException exception = null;

        C10EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle updateCollection(final AdobePhotoCollection adobePhotoCollection, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Content-Type", "application/json");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", escapeName(adobePhotoCollection.getName()));
            if (adobePhotoCollection.getCoverAsset() != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("_id", adobePhotoCollection.getCoverAsset().getGUID());
                jSONObject.put("cover", jSONObject2);
            }
            return getResponseFor(adobeNetworkHttpRequestRequestFor, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.32
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse;
                    if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoCollection.updateFromData(adobeNetworkHttpResponse.getDataString(), adobePhotoCollection.getCatalog());
                            photoErrorFromResponse = null;
                        } catch (AdobePhotoException e2) {
                            AdobeLogger.log(Level.DEBUG, "AdobePhotoSession.updateCollection", e2.getMessage(), e2);
                            photoErrorFromResponse = null;
                        }
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        }
    }

    public AdobePhotoCollection updateCollection(AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C11EnclosedClass c11EnclosedClass = new C11EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.33
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection2) {
                reentrantLock.lock();
                c11EnclosedClass.isDone = true;
                c11EnclosedClass.collection = adobePhotoCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.34
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c11EnclosedClass.isDone = true;
                c11EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        updateCollection(adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c11EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c11EnclosedClass.exception != null) {
            throw c11EnclosedClass.exception;
        }
        return c11EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$11EnclosedClass, reason: invalid class name */
    class C11EnclosedClass {
        boolean isDone = false;
        AdobePhotoCollection collection = null;
        AdobeCSDKException exception = null;

        C11EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle deleteCollection(final AdobePhotoCollection adobePhotoCollection, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getResponseFor(requestFor(adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, false), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.35
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse = null;
                if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCollection deleteCollection(AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C12EnclosedClass c12EnclosedClass = new C12EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.36
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection2) {
                reentrantLock.lock();
                c12EnclosedClass.isDone = true;
                c12EnclosedClass.collection = adobePhotoCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.37
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c12EnclosedClass.isDone = true;
                c12EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        deleteCollection(adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c12EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c12EnclosedClass.exception != null) {
            throw c12EnclosedClass.exception;
        }
        return c12EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$12EnclosedClass, reason: invalid class name */
    class C12EnclosedClass {
        boolean isDone = false;
        AdobePhotoCollection collection = null;
        AdobeCSDKException exception = null;

        C12EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getCollectionWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog, IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getCollection(new AdobePhotoCollection(null, str, adobePhotoCatalog), iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public AdobePhotoCollection getCollectionWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C13EnclosedClass c13EnclosedClass = new C13EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.38
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                reentrantLock.lock();
                c13EnclosedClass.isDone = true;
                c13EnclosedClass.collection = adobePhotoCollection;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.39
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c13EnclosedClass.isDone = true;
                c13EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getCollectionWithUUID(str, adobePhotoCatalog, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c13EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c13EnclosedClass.exception != null) {
            throw c13EnclosedClass.exception;
        }
        return c13EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$13EnclosedClass, reason: invalid class name */
    class C13EnclosedClass {
        boolean isDone = false;
        AdobePhotoCollection collection = null;
        AdobeCSDKException exception = null;

        C13EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getCollection(final AdobePhotoCollection adobePhotoCollection, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getResponseFor(requestFor(adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, false), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.40
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException e2 = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200) {
                    try {
                        adobePhotoCollection.updateFromDictionary(AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()), adobePhotoCollection.getCatalog());
                    } catch (AdobePhotoException e3) {
                        e2 = e3;
                    }
                } else if (statusCode != 204) {
                    e2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                }
                if (e2 == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                } else {
                    iAdobeGenericErrorCallback.onError(e2);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoCollection getCollection(AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C14EnclosedClass c14EnclosedClass = new C14EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.41
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection2) {
                reentrantLock.lock();
                c14EnclosedClass.isDone = true;
                c14EnclosedClass.collection = adobePhotoCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.42
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c14EnclosedClass.isDone = true;
                c14EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getCollection(adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c14EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c14EnclosedClass.exception != null) {
            throw c14EnclosedClass.exception;
        }
        return c14EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$14EnclosedClass, reason: invalid class name */
    class C14EnclosedClass {
        boolean isDone = false;
        AdobePhotoCollection collection = null;
        AdobeCSDKException exception = null;

        C14EnclosedClass() {
        }
    }

    private AdobeNetworkHttpTaskHandle setAssets(final ArrayList<AdobePhotoAsset> arrayList, final AdobePhotoCollection adobePhotoCollection, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        int i = 0;
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets", adobePhotoCollection.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(adobeNetworkHttpRequestMethod);
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
            final String str = adobeNetworkHttpRequestMethod == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT ? "added" : AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED;
            JSONArray jSONArray = new JSONArray();
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    if (arrayList.get(i2) instanceof AdobePhotoAsset) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("_id", arrayList.get(i2).getGUID());
                            if (arrayList.get(i2).getOrder() != null) {
                                jSONObject.put("order", arrayList.get(i2).getOrder());
                            }
                            jSONArray.put(jSONObject);
                        } catch (JSONException e2) {
                            AdobeLogger.log(Level.ERROR, "", "", e2);
                        }
                    }
                    i = i2 + 1;
                } else {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("assets", jSONArray);
                        adobeNetworkHttpRequest.setRequestProperty("Content-Length", Integer.toString(jSONObject2.toString().length()));
                        return getResponseFor(adobeNetworkHttpRequest, null, jSONObject2.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.43
                            /* JADX WARN: Removed duplicated region for block: B:51:0x0134  */
                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public void onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r15) throws com.adobe.creativesdk.foundation.storage.AdobePhotoException {
                                /*
                                    Method dump skipped, instruction units count: 314
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.AnonymousClass43.onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse):void");
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                            public void onError(AdobeNetworkException adobeNetworkException) {
                                AdobePhotoException adobePhotoException;
                                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                                if (responseFromError != null) {
                                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                                } else {
                                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                                }
                                iAdobeGenericErrorCallback.onError(adobePhotoException);
                            }

                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                            public void onProgress(double d2) {
                            }
                        });
                    } catch (JSONException e3) {
                        AdobeLogger.log(Level.ERROR, "", "", e3);
                        return null;
                    }
                }
            }
        } catch (MalformedURLException e4) {
            AdobeLogger.log(Level.ERROR, "", "", e4);
            return null;
        } catch (URISyntaxException e5) {
            AdobeLogger.log(Level.ERROR, "", "", e5);
            return null;
        }
    }

    public AdobeNetworkHttpTaskHandle addAssets(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoCollection adobePhotoCollection, IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return setAssets(arrayList, adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public ArrayList<AdobePhotoAsset> addAssets(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C15EnclosedClass c15EnclosedClass = new C15EnclosedClass();
        IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.44
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                reentrantLock.lock();
                c15EnclosedClass.isDone = true;
                c15EnclosedClass.assets = arrayList2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.45
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c15EnclosedClass.isDone = true;
                c15EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        addAssets(arrayList, adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c15EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c15EnclosedClass.exception != null) {
            throw c15EnclosedClass.exception;
        }
        return c15EnclosedClass.assets;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$15EnclosedClass, reason: invalid class name */
    class C15EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoAsset> assets = null;
        AdobeCSDKException exception = null;

        C15EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle updateAssets(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoCollection adobePhotoCollection, IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return setAssets(arrayList, adobePhotoCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public ArrayList<AdobePhotoAsset> updateAssets(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C16EnclosedClass c16EnclosedClass = new C16EnclosedClass();
        IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.46
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                reentrantLock.lock();
                c16EnclosedClass.isDone = true;
                c16EnclosedClass.assets = arrayList2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.47
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c16EnclosedClass.isDone = true;
                c16EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        updateAssets(arrayList, adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c16EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c16EnclosedClass.exception != null) {
            throw c16EnclosedClass.exception;
        }
        return c16EnclosedClass.assets;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$16EnclosedClass, reason: invalid class name */
    class C16EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoAsset> assets = null;
        AdobeCSDKException exception = null;

        C16EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle removeAssets(final ArrayList<AdobePhotoAsset> arrayList, final AdobePhotoCollection adobePhotoCollection, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        String guid;
        if (arrayList.size() > 100) {
            AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
            AdobeLogger.log(Level.ERROR, "PhotoSession:RemoveAssets", "Too many assets specified to remove at one time. Limited to 100.");
            iAdobeGenericErrorCallback.onError(adobeNetworkException);
            return null;
        }
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        String str = "";
        int i = 0;
        while (i < arrayList.size()) {
            AdobePhotoAsset adobePhotoAsset = arrayList.get(i);
            if (adobePhotoAsset == null) {
                guid = str;
            } else {
                guid = i == 0 ? adobePhotoAsset.getGUID() : str + String.format("%%3B%s", adobePhotoAsset.getGUID());
            }
            i++;
            str = guid;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets?asset_ids=%s", adobePhotoCollection.getHref(), str), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.48
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        AdobeLogger.log(Level.INFO, "PhotoSession:RemoveAssets", String.format("ssets successfully removed from collection %s.", adobePhotoCollection.getName()));
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException2) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException2);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException2.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException2.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException2.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public ArrayList<AdobePhotoAsset> removeAssets(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C17EnclosedClass c17EnclosedClass = new C17EnclosedClass();
        IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.49
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                reentrantLock.lock();
                c17EnclosedClass.isDone = true;
                c17EnclosedClass.assets = arrayList2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.50
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c17EnclosedClass.isDone = true;
                c17EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        removeAssets(arrayList, adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c17EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c17EnclosedClass.exception != null) {
            throw c17EnclosedClass.exception;
        }
        return c17EnclosedClass.assets;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$17EnclosedClass, reason: invalid class name */
    class C17EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoAsset> assets = null;
        AdobeCSDKException exception = null;

        C17EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle listAssetsInCollection(final AdobePhotoCollection adobePhotoCollection, AdobePhotoPage adobePhotoPage, AdobePhotoCollection.AdobePhotoCollectionSort adobePhotoCollectionSort, AdobePhotoCollection.AdobePhotoCollectionFlag adobePhotoCollectionFlag, int i, final AdobeCloud adobeCloud, final IAdobePhotoAssetsListRequestCompletionHandler iAdobePhotoAssetsListRequestCompletionHandler, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (i > 500) {
            AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
            AdobeLogger.log(Level.ERROR, "PhotoSession:ListAssetsInCollection", "The limit cannot be greater than 500.");
            iAdobeGenericErrorCallback.onError(adobeNetworkException);
            return null;
        }
        final AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        String str = "";
        if (adobePhotoPage != null) {
            str = String.format("&%s", adobePhotoPage.getKey());
        } else if (adobePhotoCollectionSort == AdobePhotoCollection.AdobePhotoCollectionSort.ADOBE_PHOTO_COLLECTION_SORT_BY_CUSTOM_ORDER) {
            str = "&order_after=-";
        }
        String str2 = "";
        String str3 = null;
        switch (adobePhotoCollectionFlag) {
            case ADOBE_PHOTO_COLLECTION_FLAG_ALL:
                str3 = null;
                break;
            case ADOBE_PHOTO_COLLECTION_FLAG_PICKED:
                str3 = "pick";
                break;
            case ADOBE_PHOTO_COLLECTION_FLAG_UNFLAGGED:
                str3 = "unflagged";
                break;
            case ADOBE_PHOTO_COLLECTION_FLAG_REJECTED:
                str3 = "reject";
                break;
        }
        if (str3 != null) {
            str2 = String.format("&flag=%s", str3);
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets?limit=%d%s%s", adobePhotoCollection.getHref(), Integer.valueOf(i), str, str2), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.51
                /* JADX WARN: Removed duplicated region for block: B:45:0x00f8  */
                /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r11) throws com.adobe.creativesdk.foundation.storage.AdobePhotoException {
                    /*
                        Method dump skipped, instruction units count: 294
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.AnonymousClass51.onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse):void");
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException2) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException2);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException2.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException2.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException2.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public ArrayList<AdobePhotoAsset> listAssetsInCollection(AdobePhotoCollection adobePhotoCollection, AdobePhotoPage adobePhotoPage, AdobePhotoCollection.AdobePhotoCollectionSort adobePhotoCollectionSort, AdobePhotoCollection.AdobePhotoCollectionFlag adobePhotoCollectionFlag, int i, AdobeCloud adobeCloud) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C18EnclosedClass c18EnclosedClass = new C18EnclosedClass();
        IAdobePhotoAssetsListRequestCompletionHandler iAdobePhotoAssetsListRequestCompletionHandler = new IAdobePhotoAssetsListRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.52
            @Override // com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoPage adobePhotoPage2, AdobePhotoPage adobePhotoPage3) {
                reentrantLock.lock();
                c18EnclosedClass.isDone = true;
                c18EnclosedClass.assets = arrayList;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.53
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c18EnclosedClass.isDone = true;
                c18EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        listAssetsInCollection(adobePhotoCollection, adobePhotoPage, adobePhotoCollectionSort, adobePhotoCollectionFlag, i, adobeCloud, iAdobePhotoAssetsListRequestCompletionHandler, iAdobeGenericErrorCallback);
        while (!c18EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c18EnclosedClass.exception != null) {
            throw c18EnclosedClass.exception;
        }
        return c18EnclosedClass.assets;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$18EnclosedClass, reason: invalid class name */
    class C18EnclosedClass {
        boolean isDone = false;
        ArrayList<AdobePhotoAsset> assets = null;
        AdobeCSDKException exception = null;

        C18EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAssetCountInCollection(AdobePhotoCollection adobePhotoCollection, final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets/count", adobePhotoCollection.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.54
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException adobePhotoException;
                    JSONObject jSONObjectJSONObjectWithData;
                    AdobePhotoException photoErrorFromResponse;
                    Integer numValueOf = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            adobePhotoException = null;
                        } catch (AdobePhotoException e2) {
                            adobePhotoException = e2;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                numValueOf = Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobePhotoSession.TOTAL_COUNT));
                            } catch (JSONException e3) {
                                AdobeLogger.log(Level.ERROR, "", "", e3);
                            }
                        }
                        photoErrorFromResponse = adobePhotoException;
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(numValueOf);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public int getAssetCountInCollection(AdobePhotoCollection adobePhotoCollection) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C19EnclosedClass c19EnclosedClass = new C19EnclosedClass();
        IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.55
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Integer num) {
                reentrantLock.lock();
                c19EnclosedClass.isDone = true;
                c19EnclosedClass.assetsCount = num.intValue();
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.56
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c19EnclosedClass.isDone = true;
                c19EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getAssetCountInCollection(adobePhotoCollection, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c19EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c19EnclosedClass.exception != null) {
            throw c19EnclosedClass.exception;
        }
        return c19EnclosedClass.assetsCount;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$19EnclosedClass, reason: invalid class name */
    class C19EnclosedClass {
        boolean isDone = false;
        int assetsCount = 0;
        AdobeCSDKException exception = null;

        C19EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle createAsset(final AdobePhotoAsset adobePhotoAsset, final AdobePhotoCatalog adobePhotoCatalog, URI uri, String str, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (adobePhotoCatalog == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        if (uri == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        if (!new File(uri).exists()) {
            AdobeLogger.log(Level.WARN, "createAssetInCatalog", String.format("The Path for %s cannot be found", adobePhotoAsset.getName()));
            iAdobeGenericErrorCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_FILE_READ_FAILURE));
            return null;
        }
        if (str == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets", adobePhotoCatalog.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST);
            File file = new File(uri.getPath());
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", String.format("multipart/form-data; boundary=%s", "OzFormBoundary"));
            adobeNetworkHttpRequest.setRequestProperty("Accept", "*/*");
            byte[] bArrGenerateMultipartFormData = generateMultipartFormData(bArr, str, "master", adobePhotoAsset.getName(), "OzFormBoundary");
            adobeNetworkHttpRequest.setRequestProperty("Content-Length", Integer.toString(bArrGenerateMultipartFormData.length));
            return getResponseFor(adobeNetworkHttpRequest, null, bArrGenerateMultipartFormData, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.57
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException e2 = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 202) {
                        e2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoAsset.updateFromDictionary(AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()), adobePhotoCatalog);
                        } catch (AdobePhotoException e3) {
                            e2 = e3;
                        }
                    }
                    if (e2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                    } else {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (FileNotFoundException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (MalformedURLException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        } catch (IOException e4) {
            AdobeLogger.log(Level.ERROR, "", "", e4);
            return null;
        } catch (URISyntaxException e5) {
            AdobeLogger.log(Level.ERROR, "", "", e5);
            return null;
        }
    }

    public AdobePhotoAsset createAsset(AdobePhotoAsset adobePhotoAsset, AdobePhotoCatalog adobePhotoCatalog, URI uri, String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C20EnclosedClass c20EnclosedClass = new C20EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.58
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c20EnclosedClass.isDone = true;
                c20EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.59
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c20EnclosedClass.isDone = true;
                c20EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        createAsset(adobePhotoAsset, adobePhotoCatalog, uri, str, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c20EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c20EnclosedClass.exception != null) {
            throw c20EnclosedClass.exception;
        }
        return c20EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$20EnclosedClass, reason: invalid class name */
    class C20EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C20EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle createAsset(final AdobePhotoAsset adobePhotoAsset, final AdobePhotoCollection adobePhotoCollection, URI uri, String str, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        if (uri == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        if (!new File(uri).exists()) {
            AdobeLogger.log(Level.WARN, "createAssetInCatalog", String.format("The Path for %s cannot be found", adobePhotoAsset.getName()));
        }
        if (str == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/assets", adobePhotoCollection.getHref()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST);
            File file = new File(uri.getPath());
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", String.format("multipart/form-data; boundary=%s", "OzFormBoundary"));
            byte[] bArrGenerateMultipartFormData = generateMultipartFormData(bArr, str, "master", adobePhotoAsset.getName(), "OzFormBoundary");
            adobeNetworkHttpRequest.setRequestProperty("Content-Length", "" + Integer.toString(bArrGenerateMultipartFormData.length));
            return getResponseFor(adobeNetworkHttpRequest, null, bArrGenerateMultipartFormData, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.60
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException e2 = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 202) {
                        e2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoAsset.updateFromDictionary(AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()), adobePhotoCollection.getCatalog());
                        } catch (AdobePhotoException e3) {
                            e2 = e3;
                        }
                    }
                    if (e2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                    } else {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (FileNotFoundException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (MalformedURLException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        } catch (IOException e4) {
            AdobeLogger.log(Level.ERROR, "", "", e4);
            return null;
        } catch (URISyntaxException e5) {
            AdobeLogger.log(Level.ERROR, "", "", e5);
            return null;
        }
    }

    public AdobePhotoAsset createAsset(AdobePhotoAsset adobePhotoAsset, AdobePhotoCollection adobePhotoCollection, URI uri, String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C21EnclosedClass c21EnclosedClass = new C21EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.61
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c21EnclosedClass.isDone = true;
                c21EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.62
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c21EnclosedClass.isDone = true;
                c21EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        createAsset(adobePhotoAsset, adobePhotoCollection, uri, str, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c21EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c21EnclosedClass.exception != null) {
            throw c21EnclosedClass.exception;
        }
        return c21EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$21EnclosedClass, reason: invalid class name */
    class C21EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C21EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle deleteAsset(final AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getResponseFor(requestFor(adobePhotoAsset, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, false), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.63
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoException photoErrorFromResponse = null;
                if (adobeNetworkHttpResponse.getStatusCode() != 204) {
                    photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                } else {
                    AdobeLogger.log(Level.INFO, "PhotoSession:DeleteAsset", String.format("Asset %s deleted", adobePhotoAsset.getName()));
                }
                if (photoErrorFromResponse == null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                } else {
                    iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobePhotoException adobePhotoException;
                AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                } else {
                    adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeGenericErrorCallback.onError(adobePhotoException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public AdobePhotoAsset deleteAsset(AdobePhotoAsset adobePhotoAsset) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C22EnclosedClass c22EnclosedClass = new C22EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.64
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c22EnclosedClass.isDone = true;
                c22EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.65
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c22EnclosedClass.isDone = true;
                c22EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        deleteAsset(adobePhotoAsset, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c22EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c22EnclosedClass.exception != null) {
            throw c22EnclosedClass.exception;
        }
        return c22EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$22EnclosedClass, reason: invalid class name */
    class C22EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C22EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle uploadMasterDataForAsset(final AdobePhotoAsset adobePhotoAsset, URI uri, boolean z, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (uri == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        if (!new File(uri).exists()) {
            AdobeLogger.log(Level.WARN, "createAssetInCatalog", String.format("The Path for %s cannot be found", adobePhotoAsset.getName()));
            iAdobeGenericErrorCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_FILE_READ_FAILURE));
            return null;
        }
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/revisions/%s/master", adobePhotoAsset.getHref(), adobePhotoAsset.getRevision() == null ? "(null)" : adobePhotoAsset.getRevision().getGUID()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", "image/jpeg");
            if (z) {
                if (adobePhotoAsset.getType() == AdobePhotoAsset.AdobePhotoAssetType.AdobePhotoAssetTypeImage) {
                    adobeNetworkHttpRequest.setRequestProperty("X-Generate-Renditions", "all");
                }
                adobeNetworkHttpRequest.setRequestProperty("X-Read-Meta", AdobePhotoAssetRenditionMetadataExtractDefault);
            }
            return getResponseFor(adobeNetworkHttpRequest, uri.getPath(), null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.66
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 201) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        AdobeLogger.log(Level.INFO, "PhotoSession:uploadMasterData", String.format("Master data for asset %s uploaded", adobePhotoAsset.getName()));
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobePhotoAsset uploadMasterDataForAsset(AdobePhotoAsset adobePhotoAsset, URI uri, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C23EnclosedClass c23EnclosedClass = new C23EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.67
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c23EnclosedClass.isDone = true;
                c23EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.68
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c23EnclosedClass.isDone = true;
                c23EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        uploadMasterDataForAsset(adobePhotoAsset, uri, z, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c23EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c23EnclosedClass.exception != null) {
            throw c23EnclosedClass.exception;
        }
        return c23EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$23EnclosedClass, reason: invalid class name */
    class C23EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C23EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle downloadMasterDataForAsset(final AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/revisions/%s/master", adobePhotoAsset.getHref(), adobePhotoAsset.getRevision().getGUID()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.69
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        AdobeLogger.log(Level.INFO, "PhotoSession:downloadMasterData", String.format("Master data retrieved for asset %s", adobePhotoAsset.getName()));
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataBytes());
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public byte[] downloadMasterDataForAsset(AdobePhotoAsset adobePhotoAsset) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C24EnclosedClass c24EnclosedClass = new C24EnclosedClass();
        IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.70
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                reentrantLock.lock();
                c24EnclosedClass.isDone = true;
                c24EnclosedClass.data = bArr;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.71
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c24EnclosedClass.isDone = true;
                c24EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        downloadMasterDataForAsset(adobePhotoAsset, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c24EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c24EnclosedClass.exception != null) {
            throw c24EnclosedClass.exception;
        }
        return c24EnclosedClass.data;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$24EnclosedClass, reason: invalid class name */
    class C24EnclosedClass {
        boolean isDone = false;
        byte[] data = null;
        AdobeCSDKException exception = null;

        C24EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle uploadRendition(AdobePhotoAssetRendition adobePhotoAssetRendition, final AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        String str;
        if (adobePhotoAssetRendition.getDataPath() == null) {
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            }
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/revisions/%s/renditions/%s", adobePhotoAsset.getHref(), adobePhotoAsset.getRevision() == null ? "(null)" : adobePhotoAsset.getRevision().getGUID(), adobePhotoAssetRendition.getGUID()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", "image/jpeg");
            switch (adobePhotoAssetRendition.getType()) {
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_2048:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImage2048;
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_1024:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImage1024;
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FAVORITE:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImageFavorite;
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FULL_SIZE:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImageFullSize;
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_PREVIEW:
                    str = "preview";
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail;
                    break;
                case ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL_2X:
                    str = AdobePhotoAsset.AdobePhotoAssetRenditionImageThumbnail2x;
                    break;
                default:
                    str = null;
                    break;
            }
            if (str != null) {
                adobeNetworkHttpRequest.setRequestProperty("X-Rendition-Type", str);
            }
            return getResponseFor(adobeNetworkHttpRequest, adobePhotoAssetRendition.getDataPath().getPath(), null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.72
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 201) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        AdobeLogger.log(Level.INFO, "PhotoSession:uploadRendition", String.format("Rendition data for asset %s uploaded", adobePhotoAsset.getName()));
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobePhotoAsset uploadRendition(AdobePhotoAssetRendition adobePhotoAssetRendition, AdobePhotoAsset adobePhotoAsset) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C25EnclosedClass c25EnclosedClass = new C25EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.73
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c25EnclosedClass.isDone = true;
                c25EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.74
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c25EnclosedClass.isDone = true;
                c25EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        uploadRendition(adobePhotoAssetRendition, adobePhotoAsset, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c25EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c25EnclosedClass.exception != null) {
            throw c25EnclosedClass.exception;
        }
        return c25EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$25EnclosedClass, reason: invalid class name */
    class C25EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C25EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle downloadRendition(AdobePhotoAssetRendition adobePhotoAssetRendition, final AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobePhotoAssetRendition.getDataPath().getPath(), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.75
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException photoErrorFromResponse = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        photoErrorFromResponse = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        AdobeLogger.log(Level.INFO, "PhotoSession:downloadRendition", String.format("Rendition retrieve for asset %s", adobePhotoAsset.getName()));
                    }
                    if (photoErrorFromResponse == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataBytes());
                    } else {
                        iAdobeGenericErrorCallback.onError(photoErrorFromResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                        iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                        return;
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public byte[] downloadRendition(AdobePhotoAssetRendition adobePhotoAssetRendition, AdobePhotoAsset adobePhotoAsset) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C26EnclosedClass c26EnclosedClass = new C26EnclosedClass();
        IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<byte[]>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.76
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                reentrantLock.lock();
                c26EnclosedClass.isDone = true;
                c26EnclosedClass.data = bArr;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.77
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c26EnclosedClass.isDone = true;
                c26EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        downloadRendition(adobePhotoAssetRendition, adobePhotoAsset, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c26EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c26EnclosedClass.exception != null) {
            throw c26EnclosedClass.exception;
        }
        return c26EnclosedClass.data;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$26EnclosedClass, reason: invalid class name */
    class C26EnclosedClass {
        boolean isDone = false;
        byte[] data = null;
        AdobeCSDKException exception = null;

        C26EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle generateRenditionForAsset(final AdobePhotoAsset adobePhotoAsset, ArrayList<AdobePhotoAssetRendition.AdobePhotoAssetRenditionType> arrayList, ArrayList<String> arrayList2, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/revisions/%s/renditions", adobePhotoAsset.getHref(), adobePhotoAsset.getRevision().getGUID()), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST);
            if (arrayList != null) {
                adobeNetworkHttpRequest.setRequestProperty("X-Generate-Renditions", componentsJoinedByString(arrayList, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
            }
            if (arrayList2 != null) {
                adobeNetworkHttpRequest.setRequestProperty("X-Read-Meta", componentsJoinedByString(arrayList2, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
            }
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.78
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException e2 = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        e2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            JSONObject jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            if (jSONObjectJSONObjectWithData != null && jSONObjectJSONObjectWithData.opt(AdobePhotoSession.LINKS) != null) {
                                adobePhotoAsset.updateFromDictionary(jSONObjectJSONObjectWithData, adobePhotoAsset.getCatalog());
                            }
                        } catch (AdobePhotoException e3) {
                            e2 = e3;
                            AdobeLogger.log(Level.INFO, "PhotoSession:uploadRendition", String.format("Rendition generated for %s", adobePhotoAsset.getName()));
                        }
                    }
                    if (e2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset);
                    } else {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobePhotoAsset generateRenditionForAsset(AdobePhotoAsset adobePhotoAsset, ArrayList<AdobePhotoAssetRendition.AdobePhotoAssetRenditionType> arrayList, ArrayList<String> arrayList2) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C27EnclosedClass c27EnclosedClass = new C27EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.79
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c27EnclosedClass.isDone = true;
                c27EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.80
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c27EnclosedClass.isDone = true;
                c27EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        generateRenditionForAsset(adobePhotoAsset, arrayList, arrayList2, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c27EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c27EnclosedClass.exception != null) {
            throw c27EnclosedClass.exception;
        }
        return c27EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$27EnclosedClass, reason: invalid class name */
    class C27EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C27EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAssetWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog, IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getAssetWithUUID(str, adobePhotoCatalog, null, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public AdobePhotoAsset getAssetWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog) throws AdobeCSDKException {
        return getAssetWithUUID(str, adobePhotoCatalog, null);
    }

    public AdobeNetworkHttpTaskHandle getAssetWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog, AdobePhotoAssetRevision adobePhotoAssetRevision, IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getAsset(new AdobePhotoAssetInternal(null, str, adobePhotoCatalog), adobePhotoAssetRevision, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public AdobePhotoAsset getAssetWithUUID(String str, AdobePhotoCatalog adobePhotoCatalog, AdobePhotoAssetRevision adobePhotoAssetRevision) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C28EnclosedClass c28EnclosedClass = new C28EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.81
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                reentrantLock.lock();
                c28EnclosedClass.isDone = true;
                c28EnclosedClass.asset = adobePhotoAsset;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.82
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c28EnclosedClass.isDone = true;
                c28EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getAssetWithUUID(str, adobePhotoCatalog, adobePhotoAssetRevision, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c28EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c28EnclosedClass.exception != null) {
            throw c28EnclosedClass.exception;
        }
        return c28EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$28EnclosedClass, reason: invalid class name */
    class C28EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C28EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAsset(AdobePhotoAsset adobePhotoAsset, IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        return getAsset(adobePhotoAsset, null, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public AdobePhotoAsset getAsset(AdobePhotoAsset adobePhotoAsset) throws AdobeCSDKException {
        return getAsset(adobePhotoAsset, null);
    }

    public AdobeNetworkHttpTaskHandle getAsset(final AdobePhotoAsset adobePhotoAsset, AdobePhotoAssetRevision adobePhotoAssetRevision, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        String relativeTo = AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s", adobePhotoAsset.getHref()), service.getBaseURL().toString());
        if (adobePhotoAssetRevision != null) {
            relativeTo = AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("%s/revisions/%s", adobePhotoAsset.getHref(), adobePhotoAssetRevision.getGUID()), service.getBaseURL().toString());
        }
        try {
            URL url = new URI(relativeTo).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.83
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException e2 = null;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    AdobePhotoAsset adobePhotoAsset2 = adobePhotoAsset;
                    if (statusCode != 200) {
                        e2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            adobePhotoAsset2.updateFromDictionary(AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()), adobePhotoAsset2.getCatalog());
                        } catch (AdobePhotoException e3) {
                            e2 = e3;
                        }
                    }
                    if (e2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAsset2);
                    } else {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobePhotoAsset getAsset(AdobePhotoAsset adobePhotoAsset, AdobePhotoAssetRevision adobePhotoAssetRevision) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C29EnclosedClass c29EnclosedClass = new C29EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.84
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAsset adobePhotoAsset2) {
                reentrantLock.lock();
                c29EnclosedClass.isDone = true;
                c29EnclosedClass.asset = adobePhotoAsset2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.85
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c29EnclosedClass.isDone = true;
                c29EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getAsset(adobePhotoAsset, adobePhotoAssetRevision, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c29EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c29EnclosedClass.exception != null) {
            throw c29EnclosedClass.exception;
        }
        return c29EnclosedClass.asset;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$29EnclosedClass, reason: invalid class name */
    class C29EnclosedClass {
        boolean isDone = false;
        AdobePhotoAsset asset = null;
        AdobeCSDKException exception = null;

        C29EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAccountStatusForID(String str, final IAdobeGenericCompletionCallback<AdobePhotoAccountStatus> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("/v1.0/accounts/%s", str), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.86
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws AdobePhotoException {
                    JSONObject jSONObjectJSONObjectWithData;
                    AdobePhotoAccountStatus adobePhotoAccountStatus = null;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        e = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                    } else {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            e = null;
                        } catch (AdobePhotoException e2) {
                            e = e2;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                String string = jSONObjectJSONObjectWithData.getString(NotificationCompat.CATEGORY_STATUS);
                                if ("created".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_CREATED;
                                } else if ("trial".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL;
                                } else if ("trial_grace_period".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD;
                                } else if ("trial_expired".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED;
                                } else if ("subscriber".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER;
                                } else if ("subscriber_grace_period".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD;
                                } else if ("subscriber_expired".equals(string)) {
                                    adobePhotoAccountStatus = AdobePhotoAccountStatus.ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED;
                                }
                            } catch (JSONException e3) {
                                AdobeLogger.log(Level.ERROR, "", "", e3);
                                e = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_MISSING_JSON_DATA);
                            }
                        }
                    }
                    if (e == null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoAccountStatus);
                    } else {
                        iAdobeGenericErrorCallback.onError(e);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobePhotoAccountStatus getAccountStatusForID(String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C30EnclosedClass c30EnclosedClass = new C30EnclosedClass();
        IAdobeGenericCompletionCallback<AdobePhotoAccountStatus> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoAccountStatus>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.87
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoAccountStatus adobePhotoAccountStatus) {
                reentrantLock.lock();
                c30EnclosedClass.isDone = true;
                c30EnclosedClass.accountStatus = adobePhotoAccountStatus;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.88
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c30EnclosedClass.isDone = true;
                c30EnclosedClass.exception = adobeCSDKException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getAccountStatusForID(str, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
        while (!c30EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c30EnclosedClass.exception != null) {
            throw c30EnclosedClass.exception;
        }
        return c30EnclosedClass.accountStatus;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession$30EnclosedClass, reason: invalid class name */
    class C30EnclosedClass {
        boolean isDone = false;
        AdobePhotoAccountStatus accountStatus = null;
        AdobeCSDKException exception = null;

        C30EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle getAccountSubscriptionsForID(String str, final IAdobeGenericCompletionCallback<AccountSubscriptionTriple> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("/v1.0/accounts/%s", str), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.89
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException adobePhotoException;
                    JSONObject jSONObjectJSONObjectWithData;
                    AccountSubscriptionTriple accountSubscriptionTriple;
                    JSONException e2;
                    AdobePhotoException adobePhotoException2;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        adobePhotoException2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                        accountSubscriptionTriple = null;
                    } else {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            adobePhotoException = null;
                        } catch (AdobePhotoException e3) {
                            adobePhotoException = e3;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                JSONObject jSONObject = jSONObjectJSONObjectWithData.getJSONObject("current_subs");
                                if (jSONObject != null) {
                                    accountSubscriptionTriple = new AccountSubscriptionTriple();
                                    try {
                                        accountSubscriptionTriple.expiration = AdobeStorageUtils.convertStringToDate(jSONObject.optString("expires_date"));
                                        accountSubscriptionTriple.productID = jSONObject.optString("product_id");
                                        accountSubscriptionTriple.purchase = AdobeStorageUtils.convertStringToDate(jSONObject.optString("purchase_date"));
                                    } catch (JSONException e4) {
                                        e2 = e4;
                                        AdobeLogger.log(Level.ERROR, "", "", e2);
                                        adobePhotoException2 = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_MISSING_JSON_DATA);
                                    }
                                } else {
                                    accountSubscriptionTriple = null;
                                }
                                adobePhotoException2 = adobePhotoException;
                            } catch (JSONException e5) {
                                accountSubscriptionTriple = null;
                                e2 = e5;
                            }
                        } else {
                            accountSubscriptionTriple = null;
                            adobePhotoException2 = adobePhotoException;
                        }
                    }
                    if (adobePhotoException2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(accountSubscriptionTriple);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobePhotoException2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobeNetworkHttpTaskHandle getAccountLimitsForID(String str, final IAdobeGenericCompletionCallback<AccountLimits> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iAdobeGenericErrorCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                return null;
            }
            iAdobeGenericErrorCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
            return null;
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(String.format("/v1.0/accounts/%s", str), service.getBaseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.90
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobePhotoException adobePhotoException;
                    JSONObject jSONObjectJSONObjectWithData;
                    AccountLimits accountLimits;
                    JSONException e2;
                    AdobePhotoException adobePhotoException2;
                    if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                        adobePhotoException2 = AdobePhotoSession.this.getPhotoErrorFromResponse(adobeNetworkHttpResponse);
                        accountLimits = null;
                    } else {
                        try {
                            jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            adobePhotoException = null;
                        } catch (AdobePhotoException e3) {
                            adobePhotoException = e3;
                            jSONObjectJSONObjectWithData = null;
                        }
                        if (jSONObjectJSONObjectWithData != null) {
                            try {
                                JSONObject jSONObject = jSONObjectJSONObjectWithData.getJSONObject("limits");
                                if (jSONObject != null) {
                                    accountLimits = new AccountLimits();
                                    try {
                                        accountLimits.maxCatalogs = jSONObject.getInt("catalogs");
                                        accountLimits.maxUsersPerCatalog = jSONObject.getInt("catalog_users");
                                        if (jSONObject.has("uploads")) {
                                            accountLimits.uploadsPerMonth = jSONObject.getInt("uploads");
                                        }
                                        if (jSONObject.has("raw_upload")) {
                                            accountLimits.canUploadRawData = jSONObject.getBoolean("raw_upload");
                                        }
                                    } catch (JSONException e4) {
                                        e2 = e4;
                                        AdobeLogger.log(Level.ERROR, "", "", e2);
                                        adobePhotoException2 = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_MISSING_JSON_DATA);
                                    }
                                } else {
                                    accountLimits = null;
                                }
                                adobePhotoException2 = adobePhotoException;
                            } catch (JSONException e5) {
                                accountLimits = null;
                                e2 = e5;
                            }
                        } else {
                            accountLimits = null;
                            adobePhotoException2 = adobePhotoException;
                        }
                    }
                    if (adobePhotoException2 == null) {
                        iAdobeGenericCompletionCallback.onCompletion(accountLimits);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobePhotoException2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobePhotoException adobePhotoException;
                    AdobeNetworkHttpResponse responseFromError = AdobePhotoSession.this.getResponseFromError(adobeNetworkException);
                    if (responseFromError != null) {
                        adobePhotoException = AdobePhotoSession.this.getPhotoErrorFromResponse(responseFromError);
                    } else if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE, adobeNetworkException.getData(), null);
                    } else {
                        adobePhotoException = new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                    }
                    iAdobeGenericErrorCallback.onError(adobePhotoException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeNetworkHttpResponse getResponseFromError(AdobeNetworkException adobeNetworkException) {
        if (adobeNetworkException.getData() == null || !adobeNetworkException.getData().containsKey("Response")) {
            return null;
        }
        return (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
    }

    private AdobeNetworkHttpRequest requestFor(AdobePhoto adobePhoto, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, boolean z) {
        return requestFor(adobePhoto, adobeNetworkHttpRequestMethod, z, null);
    }

    private AdobeNetworkHttpRequest requestFor(AdobePhoto adobePhoto, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, boolean z, ArrayList<String> arrayList) {
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobePhoto.getHref().toString(), getService().baseURL().toString())).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(adobeNetworkHttpRequestMethod);
            if (z) {
                if ((adobePhoto instanceof AdobePhotoCatalog) || (adobePhoto instanceof AdobePhotoCollection)) {
                    adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
                } else if (adobePhoto instanceof AdobePhotoAsset) {
                    adobeNetworkHttpRequest.setRequestProperty("Content-Type", ((AdobePhotoAsset) adobePhoto).getContentType());
                }
            }
            if (arrayList != null) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i) + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                adobeNetworkHttpRequest.setRequestProperty("X-Update", sb.toString().substring(0, r0.length() - 1));
            }
            return adobeNetworkHttpRequest;
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            return null;
        }
    }

    public AdobeNetworkHttpTaskHandle getResponseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getResponseFor(adobeNetworkHttpRequest, str, bArr, iStorageResponseCallback, handler);
    }

    private AdobeNetworkHttpTaskHandle getResponseFor(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, final AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback, Handler handler) {
        AdobeNetworkHttpTaskHandle responseForUploadRequest;
        AdobeNetworkHttpService service = getService();
        if (service == null) {
            if (iStorageResponseCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.91
                        @Override // java.lang.Runnable
                        public void run() {
                            iStorageResponseCallback.onError(adobeNetworkException);
                        }
                    });
                } else {
                    iStorageResponseCallback.onError(adobeNetworkException);
                }
            }
            return null;
        }
        final AdobeNetworkException adobeNetworkExceptionCheckEntitlements = checkEntitlements();
        if (adobeNetworkExceptionCheckEntitlements != null) {
            if (iStorageResponseCallback != null) {
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.92
                        @Override // java.lang.Runnable
                        public void run() {
                            iStorageResponseCallback.onError(adobeNetworkExceptionCheckEntitlements);
                        }
                    });
                } else {
                    iStorageResponseCallback.onError(adobeNetworkExceptionCheckEntitlements);
                }
            } else {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), "Entitlement Check failed", adobeNetworkExceptionCheckEntitlements);
            }
            return null;
        }
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession.93
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobePhotoSession.requestMap.remove(adobeNetworkHttpRequest);
                iStorageResponseCallback.onComplete(adobeNetworkHttpResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException2) {
                iStorageResponseCallback.onError(adobeNetworkException2);
            }
        };
        if (str == null) {
            adobeNetworkHttpRequest.setBody(bArr);
            responseForUploadRequest = service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET) {
            responseForUploadRequest = service.getResponseForDownloadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else {
            responseForUploadRequest = service.getResponseForUploadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        }
        requestMap.put(adobeNetworkHttpRequest, responseForUploadRequest);
        return responseForUploadRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobePhotoException getPhotoErrorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        AdobePhotoException adobePhotoExceptionCreatePhotoError = null;
        if (adobeNetworkHttpResponse == null) {
            return null;
        }
        int statusCode = adobeNetworkHttpResponse.getStatusCode();
        if (statusCode == 412) {
            adobePhotoExceptionCreatePhotoError = AdobePhotoErrUtils.createPhotoError(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_CONFLICTING_CHANGES, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (statusCode == 507) {
            adobePhotoExceptionCreatePhotoError = AdobePhotoErrUtils.createPhotoError(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_EXCEEDED_QUOTA, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (statusCode == 415) {
            adobePhotoExceptionCreatePhotoError = AdobePhotoErrUtils.createPhotoError(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNSUPPORTED_MEDIA, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        if (adobePhotoExceptionCreatePhotoError == null) {
            return AdobePhotoErrUtils.createPhotoError(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        return adobePhotoExceptionCreatePhotoError;
    }

    private String escapeName(String str) {
        if (str == null) {
            return null;
        }
        return str;
    }

    private String encodeName(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20");
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobePhotoPage parseNavigationLink(String str) throws AdobeCSDKException {
        if (str == null) {
            throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE);
        }
        Matcher matcher = Pattern.compile("((captured|updated|order)_(before|after|since))=([a-zA-Z_0-9-:.%]+)", 2).matcher(str);
        if (matcher.find()) {
            return new AdobePhotoPage(str.substring(matcher.start(), matcher.end()));
        }
        throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE);
    }

    private String componentsJoinedByString(ArrayList arrayList, String str) {
        if (arrayList == null || str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append(arrayList.get(i).toString());
        }
        return sb.toString();
    }

    private byte[] generateMultipartFormData(byte[] bArr, String str, String str2, String str3, String str4) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeBytes(String.format("--%s\r%n", str4));
            dataOutputStream.write(String.format("Content-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r%n", str2, str3).getBytes("UTF-8"));
            dataOutputStream.writeBytes(String.format("Content-Type: %s\r%n\r%n", str));
            dataOutputStream.write(bArr);
            dataOutputStream.writeBytes("\r\n");
            dataOutputStream.writeBytes(String.format("--%s--\r%n", str4));
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return null;
        }
    }

    private AdobeNetworkException checkEntitlements() {
        AdobeEntitlementServices sharedServices = AdobeEntitlementServices.getSharedServices();
        if (sharedServices.getServices() == null || sharedServices.getServices().optJSONObject("lightroom") == null || sharedServices.getServices().optJSONObject("lightroom").optBoolean("entitled")) {
            return null;
        }
        return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService);
    }
}
