package com.adobe.creativesdk.foundation.internal.adobe360;

import android.content.Context;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowSession {
    private static final String Adobe360WorkflowSessionCacheID = "com.adobe.cc.360workflow";
    private static final String AdobeActionRegistryCacheGUIDKey = "action-registry";
    private static final String AdobeActionRegistryCacheKey = "actions-list";
    private static final String AdobeActionRegistryEtagCacheKey = "etag";
    private static final String AdobeIfNoneMatchKey = "if-none-match";
    private static Adobe360WorkflowSession _sharedSession = null;
    private AdobeNetworkHttpService _service;

    Adobe360WorkflowSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        this._service = adobeNetworkHttpService;
        configureCache();
    }

    private void configureCache() {
        if (!AdobeCommonCache.getSharedInstance().doesCacheExist(Adobe360WorkflowSessionCacheID)) {
            try {
                AdobeCommonCache.getSharedInstance().configureCache(Adobe360WorkflowSessionCacheID, 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheAllowOfflineUse));
            } catch (AdobeInvalidCacheSettingsException e2) {
                AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowSession", null, e2);
            }
        }
    }

    public static Adobe360WorkflowSession getSharedSession() {
        synchronized (Adobe360WorkflowSession.class) {
            if (_sharedSession == null) {
                HashMap map = new HashMap();
                Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
                _sharedSession = new Adobe360WorkflowSession(new AdobeNetworkHttpService(null, applicationContext != null ? applicationContext.getPackageName() : null, map));
            }
        }
        return _sharedSession;
    }

    public void downloadAppIconFromPath(String str, final IAdobeGenericCompletionCallback<byte[]> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeNetworkException> iAdobeGenericErrorCallback, Handler handler) {
        responseFromURLPath(str, null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataBytes());
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGenericErrorCallback.onError(adobeNetworkException);
            }
        }, handler);
    }

    public void actionRegistryArrayFromPath(String str, IAdobeGenericCompletionCallback<JSONArray> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeNetworkException> iAdobeGenericErrorCallback, Handler handler) {
        AdobeCommonCache.getSharedInstance().getObjectFromGUID(AdobeActionRegistryCacheGUIDKey, "etag", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), Adobe360WorkflowSessionCacheID, new AnonymousClass2(str, iAdobeGenericCompletionCallback, handler, iAdobeGenericErrorCallback), handler);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession$2, reason: invalid class name */
    class AnonymousClass2 implements AdobeCommonCacheHandler<Object> {
        final /* synthetic */ IAdobeGenericCompletionCallback val$completionCallback;
        final /* synthetic */ IAdobeGenericErrorCallback val$errorCallback;
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ String val$path;

        AnonymousClass2(String str, IAdobeGenericCompletionCallback iAdobeGenericCompletionCallback, Handler handler, IAdobeGenericErrorCallback iAdobeGenericErrorCallback) {
            this.val$path = str;
            this.val$completionCallback = iAdobeGenericCompletionCallback;
            this.val$handler = handler;
            this.val$errorCallback = iAdobeGenericErrorCallback;
        }

        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
        public void onHit(Object obj, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
            Adobe360WorkflowSession.this.responseFromURLPath(this.val$path, (String) obj, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.2.1
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    Adobe360WorkflowSession.this.handleActionRegistryResponse(adobeNetworkHttpResponse, AnonymousClass2.this.val$completionCallback, AnonymousClass2.this.val$handler);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(final AdobeNetworkException adobeNetworkException) {
                    AdobeCommonCache.getSharedInstance().getObjectFromGUID(Adobe360WorkflowSession.AdobeActionRegistryCacheGUIDKey, Adobe360WorkflowSession.AdobeActionRegistryCacheKey, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), Adobe360WorkflowSession.Adobe360WorkflowSessionCacheID, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.2.1.1
                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onHit(Object obj2, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                            JSONArray jSONArray;
                            try {
                                jSONArray = new JSONArray((String) obj2);
                            } catch (JSONException e2) {
                                AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowSession", null, e2);
                                jSONArray = null;
                            }
                            AnonymousClass2.this.val$completionCallback.onCompletion(jSONArray);
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                        public void onMiss() {
                            AnonymousClass2.this.val$errorCallback.onError(adobeNetworkException);
                        }
                    }, AnonymousClass2.this.val$handler);
                }
            }, this.val$handler);
        }

        @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
        public void onMiss() {
            Adobe360WorkflowSession.this.responseFromURLPath(this.val$path, null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.2.2
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    Adobe360WorkflowSession.this.handleActionRegistryResponse(adobeNetworkHttpResponse, AnonymousClass2.this.val$completionCallback, AnonymousClass2.this.val$handler);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AnonymousClass2.this.val$errorCallback.onError(adobeNetworkException);
                }
            }, this.val$handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleActionRegistryResponse(final AdobeNetworkHttpResponse adobeNetworkHttpResponse, final IAdobeGenericCompletionCallback<JSONArray> iAdobeGenericCompletionCallback, Handler handler) {
        if (adobeNetworkHttpResponse.getStatusCode() == 304) {
            AdobeCommonCache.getSharedInstance().getObjectFromGUID(AdobeActionRegistryCacheGUIDKey, AdobeActionRegistryCacheKey, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), Adobe360WorkflowSessionCacheID, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.3
                @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                public void onHit(Object obj, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                    JSONArray jSONArray;
                    if (iAdobeGenericCompletionCallback != null) {
                        try {
                            jSONArray = new JSONArray((String) obj);
                        } catch (JSONException e2) {
                            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowSession", null, e2);
                            jSONArray = null;
                        }
                        iAdobeGenericCompletionCallback.onCompletion(jSONArray);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                public void onMiss() {
                    Adobe360WorkflowSession.this.actionRegistryFromResponse(adobeNetworkHttpResponse, iAdobeGenericCompletionCallback);
                }
            }, handler);
            return;
        }
        AdobeCommonCache.getSharedInstance().removeItemWithGUID(AdobeActionRegistryCacheGUIDKey, AdobeActionRegistryCacheKey, Adobe360WorkflowSessionCacheID);
        AdobeCommonCache.getSharedInstance().removeItemWithGUID(AdobeActionRegistryCacheGUIDKey, "etag", Adobe360WorkflowSessionCacheID);
        actionRegistryFromResponse(adobeNetworkHttpResponse, iAdobeGenericCompletionCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void actionRegistryFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, IAdobeGenericCompletionCallback<JSONArray> iAdobeGenericCompletionCallback) {
        JSONArray jSONArray;
        if (adobeNetworkHttpResponse == null || adobeNetworkHttpResponse.getDataString() == null) {
            if (iAdobeGenericCompletionCallback != null) {
                iAdobeGenericCompletionCallback.onCompletion(null);
                return;
            }
            return;
        }
        try {
            jSONArray = new JSONArray(adobeNetworkHttpResponse.getDataString());
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowSession", null, e2);
            jSONArray = null;
        }
        if (!AdobeCommonCache.getSharedInstance().addObject(adobeNetworkHttpResponse.getDataString(), AdobeActionRegistryCacheGUIDKey, AdobeActionRegistryCacheKey, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), Adobe360WorkflowSessionCacheID)) {
            AdobeLogger.log(Level.ERROR, "Adobe360WorkflowSession", "Failed to add app library list in cache:");
        }
        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
        if (!AdobeCommonCache.getSharedInstance().addObject((headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0), AdobeActionRegistryCacheGUIDKey, "etag", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), Adobe360WorkflowSessionCacheID)) {
            AdobeLogger.log(Level.ERROR, "Adobe360WorkflowSession", "Failed to add etag info in cache:");
        }
        if (iAdobeGenericCompletionCallback != null) {
            iAdobeGenericCompletionCallback.onCompletion(jSONArray);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void responseFromURLPath(String str, String str2, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        URL url;
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        try {
            url = new URL(str);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.DEBUG, "Adobe360WorkflowSession", null, e2);
            url = null;
        }
        adobeNetworkHttpRequest.setUrl(url);
        if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null) {
            if (AdobeNetworkReachabilityUtil.isOnline()) {
                if (str2 != null) {
                    adobeNetworkHttpRequest.setRequestProperty(AdobeIfNoneMatchKey, str2);
                }
                this._service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
            } else {
                final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline);
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowSession.4
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                        }
                    });
                } else {
                    iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                }
            }
        }
    }
}
