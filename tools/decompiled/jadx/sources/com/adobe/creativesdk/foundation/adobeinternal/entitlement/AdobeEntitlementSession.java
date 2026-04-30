package com.adobe.creativesdk.foundation.adobeinternal.entitlement;

import android.content.SharedPreferences;
import android.os.Handler;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementErrorUtils;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementSessionNotificationKeys;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementUtils;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeEntitlementSession extends AdobeCloudServiceSession {
    public static final String AdobeEntitlementSessionCacheID = "com.adobe.cc.entitlements";
    public static final String AdobeEntitlementSessionCacheKey = "profile";
    public static final String AdobeEntitlementSessionESDataEndpointsKey = "endpoints";
    public static final String AdobeEntitlementSessionESDataEntitledKey = "entitled";
    public static final String AdobeEntitlementSessionESDataPrivateCloudStorageKey = "private_cloud";
    public static final String AdobeEntitlementSessionESDataPublicCloudStorageKey = "public_cloud";
    public static final String AdobeEntitlementSessionESDataServicesKey = "services";
    public static final String AdobeEntitlementUserProfileCountryCode = "countryCode";
    public static final String AdobeEntitlementUserProfileDisplayName = "displayName";
    public static final String AdobeEntitlementUserProfileEmail = "email";
    public static final String AdobeEntitlementUserProfileEmailVerified = "emailVerified";
    public static final String AdobeEntitlementUserProfileFirstName = "first_name";
    public static final String AdobeEntitlementUserProfileIsEnterprise = "isEnterprise";
    public static final String AdobeEntitlementUserProfileLanguages = "preferred_languages";
    public static final String AdobeEntitlementUserProfileLastName = "last_name";
    public static final String AdobeEntitlementUserProfileLicenseStatus = "licenseStatus";
    public static final String AdobeEntitlementUserProfileName = "name";
    public static final String AdobeEntitlementUserProfilePhoneNumber = "phoneNumber";
    public static final String AdobeEntitlementUserProfileUTCOffset = "utcOffset";
    public static final String AdobeEntitlementUserProfileUserId = "userId";
    private static AdobeEntitlementSession _sharedSession = null;
    protected boolean _cacheConfigured;
    private Timer _refreshTimer;
    private SharedPreferences _sharedPrefs;

    public AdobeEntitlementSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobeEntitlementServiceDisconnectedNotification);
        setupOngoingConnectionTimer(15L, false);
        this._cacheConfigured = false;
        this._sharedPrefs = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getSharedPreferences(AdobeEntitlementSessionCacheID, 0);
    }

    public AdobeEntitlementSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        super(adobeNetworkHttpService, null);
    }

    public AdobeEntitlementSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
    }

    public static AdobeEntitlementSession getSharedSession() {
        synchronized (AdobeEntitlementSession.class) {
            if (_sharedSession == null) {
                _sharedSession = getSessionForCloudEndpoint(getServiceEndpoint());
            }
        }
        return _sharedSession;
    }

    private static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        AdobeCloudEndpoint adobeCloudEndpoint;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://entitlements.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://entitlements-stage.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobeEntitlementSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                return null;
        }
        try {
            adobeCloudEndpoint = new AdobeCloudEndpoint(null, new URL(str), AdobeCloudServiceType.AdobeCloudServiceTypeEntitlement);
        } catch (MalformedURLException e2) {
            adobeCloudEndpoint = null;
        }
        return adobeCloudEndpoint;
    }

    public static AdobeEntitlementSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobeEntitlementSession(adobeCloudEndpoint);
    }

    public void refreshEndpoint() {
        configureEndpoint(getServiceEndpoint());
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void setUpService() {
        String adobeID = AdobeAuthKeychain.getSharedKeychain().getAdobeID();
        if (!isCacheConfigured() && adobeID != null && adobeID.length() > 0) {
            try {
                AdobeCommonCache.getSharedInstance().configureCache(AdobeEntitlementSessionCacheID, 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU));
                e = null;
            } catch (AdobeInvalidCacheSettingsException e2) {
                e = e2;
            }
            if (e == null) {
                this._cacheConfigured = true;
            } else {
                AdobeLogger.log(Level.ERROR, AdobeEntitlementSession.class.getSimpleName(), null, e);
            }
        }
        setupRefreshTimer(43200000L);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void tearDownService() {
        if (AdobeCommonCache.getSharedInstance().doesCacheExist(AdobeEntitlementSessionCacheID)) {
            AdobeCommonCache.getSharedInstance().printStatistics(AdobeEntitlementSessionCacheID);
            if (!AdobeCommonCache.getSharedInstance().removeCache(AdobeEntitlementSessionCacheID)) {
                AdobeLogger.log(Level.ERROR, AdobeEntitlementSession.class.getSimpleName(), "Removal of cache failed");
            }
        }
        this._cacheConfigured = false;
        stopRefreshTimer();
    }

    protected boolean isCacheConfigured() {
        return this._cacheConfigured;
    }

    protected AdobeCSDKException errorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, String str, String str2) {
        AdobeNetworkException adobeNetworkException;
        if (adobeNetworkHttpResponse.getStatusCode() == 400) {
            adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
        } else {
            adobeNetworkException = adobeNetworkHttpResponse.getStatusCode() == 401 ? new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorAuthenticationFailed) : null;
        }
        if (adobeNetworkException == null) {
            return AdobeEntitlementErrorUtils.errorWithCode(AdobeEntitlementErrorCode.AdobeEntitlementErrorUnexpectedResponse, (Exception) null, str, str2);
        }
        return adobeNetworkException;
    }

    private static String getRelativeTo(String str, String str2) {
        if (str.startsWith(URIUtil.SLASH)) {
            str = str.substring(1);
        }
        if (str2.endsWith(URIUtil.SLASH)) {
            str2 = str2.substring(0, str2.lastIndexOf(URIUtil.SLASH));
        }
        return str2 + URIUtil.SLASH + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUserProfileData(JSONObject jSONObject, String str) {
        HashMap map = new HashMap();
        map.put(AdobeEntitlementSessionNotificationKeys.AdobeEntitlementSessionUserProfileData, jSONObject);
        map.put(AdobeEntitlementSessionNotificationKeys.AdobeEntitlementSessionEndPoint, getCloudEndpoint());
        map.put(AdobeEntitlementSessionNotificationKeys.AdobeEntitlementSessionAccessToken, str);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeEntilementUserProfileDataFetchNotification, map));
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession$1Output, reason: invalid class name */
    class C1Output {
        boolean isDone = false;
        JSONObject result = null;

        C1Output() {
        }
    }

    public JSONObject getUserProfileFromCache() {
        String string;
        String adobeID = AdobeAuthKeychain.getSharedKeychain().getAdobeID();
        final C1Output c1Output = new C1Output();
        if (adobeID != null) {
            Date timestampForGUID = AdobeCommonCache.getSharedInstance().getTimestampForGUID(adobeID, "profile", AdobeEntitlementSessionCacheID);
            if (timestampForGUID != null) {
                if ((new Date().getTime() - timestampForGUID.getTime()) / 1000 > 2592000) {
                    AdobeCommonCache.getSharedInstance().removeItemWithGUID(adobeID, "profile", AdobeEntitlementSessionCacheID);
                } else {
                    final ReentrantLock reentrantLock = new ReentrantLock();
                    final Condition conditionNewCondition = reentrantLock.newCondition();
                    AdobeCommonCache.getSharedInstance().getObjectFromGUID(adobeID, "profile", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeEntitlementSessionCacheID, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.1
                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onHit(Object obj, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                            JSONException e2;
                            JSONObject jSONObject;
                            try {
                                jSONObject = (!(obj instanceof String) || TextUtils.isEmpty((String) obj)) ? null : new JSONObject((String) obj);
                            } catch (JSONException e3) {
                                e2 = e3;
                                jSONObject = null;
                            }
                            try {
                                if (!AdobeEntitlementSession.this._sharedPrefs.contains("profile")) {
                                    SharedPreferences.Editor editorEdit = AdobeEntitlementSession.this._sharedPrefs.edit();
                                    editorEdit.putString("profile", (String) obj);
                                    editorEdit.commit();
                                }
                            } catch (JSONException e4) {
                                e2 = e4;
                                AdobeLogger.log(Level.ERROR, AdobeEntitlementSession.class.getSimpleName(), null, e2);
                            }
                            reentrantLock.lock();
                            try {
                                c1Output.isDone = true;
                                c1Output.result = jSONObject;
                                conditionNewCondition.signal();
                            } finally {
                                reentrantLock.unlock();
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onMiss() {
                            reentrantLock.lock();
                            try {
                                c1Output.isDone = true;
                                conditionNewCondition.signal();
                            } finally {
                                reentrantLock.unlock();
                            }
                        }
                    }, null);
                    reentrantLock.lock();
                    while (!c1Output.isDone) {
                        try {
                            try {
                                conditionNewCondition.await();
                            } catch (InterruptedException e2) {
                                AdobeLogger.log(Level.DEBUG, "AdobeEntitlementSession.getUserProfileFromCache", e2.getMessage(), e2);
                            }
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                }
            }
            if (c1Output.result == null && (string = this._sharedPrefs.getString("profile", null)) != null) {
                try {
                    c1Output.result = new JSONObject(string);
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.ERROR, "AdobeEntitlement:Cache", "USER PROFILE CACHE READ FAILED FROM SHARED PREFS", e3);
                }
            }
        }
        return c1Output.result;
    }

    void postResponseToSuccessBlock(final JSONObject jSONObject, final String str, final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, Handler handler) {
        if (iAdobeGenericCompletionCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericCompletionCallback.onCompletion(jSONObject);
                        AdobeEntitlementSession.this.postUserProfileData(jSONObject, str);
                    }
                });
            } else {
                iAdobeGenericCompletionCallback.onCompletion(jSONObject);
                postUserProfileData(jSONObject, str);
            }
        }
    }

    void postResposeToErrorBlock(final AdobeCSDKException adobeCSDKException, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.3
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                });
            } else {
                iAdobeGenericErrorCallback.onError(adobeCSDKException);
            }
        }
    }

    public AdobeNetworkHttpTaskHandle getUserProfileForToken(final String str, final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        URL url;
        final JSONObject userProfileFromCache = getUserProfileFromCache();
        if (!AdobeNetworkReachabilityUtil.isOnline() || getService() == null) {
            if (userProfileFromCache != null) {
                postResponseToSuccessBlock(userProfileFromCache, str, iAdobeGenericCompletionCallback, handler);
                return null;
            }
            postResposeToErrorBlock(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline), iAdobeGenericErrorCallback, handler);
            return null;
        }
        final boolean z = userProfileFromCache == null && AdobeUXAuthManager.getSharedAuthManager().isAuthenticated();
        try {
            url = new URL(getRelativeTo("/api/v2/profile", getService().baseURL().toString()));
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeEntitlementSession.class.getSimpleName(), null, e2);
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        return getResponseFor(adobeNetworkHttpRequest, null, null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.4
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws AdobeEntitlementException {
                JSONObject jSONObjectJSONObjectWithData;
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    try {
                        jSONObjectJSONObjectWithData = AdobeEntitlementUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                        e = null;
                    } catch (AdobeEntitlementException e3) {
                        e = e3;
                        jSONObjectJSONObjectWithData = null;
                    }
                    if (e == null) {
                        String adobeID = AdobeAuthKeychain.getSharedKeychain().getAdobeID();
                        if (adobeID != null && jSONObjectJSONObjectWithData != null) {
                            AdobeCommonCache.getSharedInstance().addObject(jSONObjectJSONObjectWithData.toString(), adobeID, "profile", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeEntitlementSession.AdobeEntitlementSessionCacheID);
                            SharedPreferences.Editor editorEdit = AdobeEntitlementSession.this._sharedPrefs.edit();
                            editorEdit.putString("profile", jSONObjectJSONObjectWithData.toString());
                            editorEdit.commit();
                        }
                        AdobeEntitlementSession.this.postResponseToSuccessBlock(jSONObjectJSONObjectWithData, str, iAdobeGenericCompletionCallback, handler);
                        return;
                    }
                    if (z) {
                        JSONObject jSONObjectFallbackServicesData = AdobeEntitlementUtils.fallbackServicesData();
                        try {
                            jSONObjectFallbackServicesData.putOpt("userId", AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID());
                            AdobeEntitlementSession.this.postResponseToSuccessBlock(jSONObjectFallbackServicesData, str, iAdobeGenericCompletionCallback, handler);
                            return;
                        } catch (JSONException e4) {
                            AdobeLogger.log(Level.ERROR, "getUserProfileForToken - JSON Exception", e4.getMessage());
                            AdobeEntitlementSession.this.postResposeToErrorBlock(AdobeEntitlementSession.this.errorFromResponse(adobeNetworkHttpResponse, null, null), iAdobeGenericErrorCallback, handler);
                            return;
                        }
                    }
                    AdobeEntitlementSession.this.postResposeToErrorBlock(AdobeEntitlementSession.this.errorFromResponse(adobeNetworkHttpResponse, null, null), iAdobeGenericErrorCallback, handler);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getStatusCode() != null && ((adobeNetworkException.getStatusCode().intValue() == 404 || adobeNetworkException.getStatusCode().intValue() == 600 || adobeNetworkException.getStatusCode().intValue() == 400) && userProfileFromCache != null)) {
                    AdobeEntitlementSession.this.postResponseToSuccessBlock(userProfileFromCache, str, iAdobeGenericCompletionCallback, handler);
                } else {
                    AdobeEntitlementSession.this.postResposeToErrorBlock(adobeNetworkException, iAdobeGenericErrorCallback, handler);
                }
            }
        }, handler);
    }

    public JSONObject getUserProfileForToken(String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1EnclosingClassForOutput c1EnclosingClassForOutput = new C1EnclosingClassForOutput();
        getUserProfileForToken(str, new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                reentrantLock.lock();
                c1EnclosingClassForOutput.userProfileJSON = jSONObject;
                c1EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c1EnclosingClassForOutput.userProfileError = adobeCSDKException;
                c1EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!c1EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.DEBUG, getClass().getSimpleName(), e2.getMessage(), e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c1EnclosingClassForOutput.userProfileError != null) {
            throw c1EnclosingClassForOutput.userProfileError;
        }
        return c1EnclosingClassForOutput.userProfileJSON;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession$1EnclosingClassForOutput, reason: invalid class name */
    class C1EnclosingClassForOutput {
        public boolean done = false;
        public JSONObject userProfileJSON = null;
        public AdobeCSDKException userProfileError = null;

        C1EnclosingClassForOutput() {
        }
    }

    protected AdobeNetworkHttpTaskHandle getResponseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        if (str == null) {
            adobeNetworkHttpRequest.setBody(bArr);
            return getService().getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        }
        if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET) {
            return getService().getResponseForDownloadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        }
        return getService().getResponseForUploadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
    }

    private void setupRefreshTimer(long j) {
        if (this._refreshTimer == null) {
            this._refreshTimer = new Timer();
            this._refreshTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AdobeEntitlementSession.this.refreshUserProfile();
                }
            }, j, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshUserProfile() {
        if (AdobeUXAuthManager.getSharedAuthManager().isAuthenticated() && AdobeNetworkReachabilityUtil.isOnline()) {
            getUserProfileForToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken(), null, null, null);
        }
    }

    private void stopRefreshTimer() {
        if (this._refreshTimer != null) {
            synchronized (this) {
                this._refreshTimer.cancel();
                this._refreshTimer = null;
            }
        }
    }
}
