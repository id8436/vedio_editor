package com.adobe.creativesdk.foundation.internal.storage.model.services;

import android.os.Handler;
import android.support.annotation.Nullable;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXMultiAssetCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeSessionProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeRequestParameters;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageSession extends AdobeCloudServiceSession implements IAdobeSessionProtocol {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ACCEPT_ENCODING = "Accept-Encoding";
    public static final String AdobeStorageSessionArchiveServiceTag = "archive";
    public static final String AdobeStorageSessionAssetServiceTag = "assets";
    public static final String AdobeStorageSessionClipboardServiceTag = "clipboard";
    public static final String AdobeStorageSessionFileServiceTag = "files";
    public static final String AdobeStorageSessionLibraryServiceTag = "libraries";
    public static final String CONTENT_LENGTH = "content-length";
    public static final String CONTENT_MD5 = "content-md5";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final int DEFAULT_202_DELAY_SECS = 10;
    public static final String HEIGHT = "height";
    public static final String IF_MATCH = "If-Match";
    public static final String IF_NONE_MATCH = "If-None-Match";
    public static final String INTERMEDIATES = "intermediates";
    public static final String PAGES = "pages";
    public static final String RESPONSE = "Response";
    public static final String WIDTH = "width";
    public static final String X_CHILDREN_NEXT_START = "x-children-next-start";
    public static final String X_LATEST_VERSION = "x-latest-version";
    public static final String X_ORDINAL = "X-Ordinal";
    public static final String X_RESOURCE_ID = "x-resource-id";
    private static Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap;
    protected boolean _cacheConfigured;
    private IAdobeDCXComponentManagerProtocol componentManager;
    private Handler componentManagerHandler;

    interface IPerformServerToServerCopyAction {
        AdobeNetworkHttpTaskHandle perform(boolean z, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler);
    }

    public interface IStorageResponseCallback extends IAdobeProgressCallback {
        void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

        void onError(AdobeNetworkException adobeNetworkException);
    }

    static {
        $assertionsDisabled = !AdobeStorageSession.class.desiredAssertionStatus();
        requestMap = new HashMap();
    }

    protected static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        MalformedURLException malformedURLException;
        AdobeCloudEndpoint adobeCloudEndpoint;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = AdobeCollaborationSession.HTTPS_CC_API_STORAGE_ADOBE_IO;
                break;
            case AdobeAuthIMSEnvironmentStageUS:
                str = AdobeCollaborationSession.HTTPS_CC_API_STORAGE_STAGE_ADOBE_IO;
                break;
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://cc-api-storage-labs.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                return null;
        }
        try {
            AdobeCloudEndpoint adobeCloudEndpoint2 = new AdobeCloudEndpoint("files", new URL(str), AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
            try {
                adobeCloudEndpoint2.addServiceSchemaId("assets", new URL(str));
                adobeCloudEndpoint2.addServiceSchemaId("libraries", new URL(str));
                return adobeCloudEndpoint2;
            } catch (MalformedURLException e2) {
                adobeCloudEndpoint = adobeCloudEndpoint2;
                malformedURLException = e2;
                AdobeLogger.log(Level.ERROR, "", "", malformedURLException);
                return adobeCloudEndpoint;
            }
        } catch (MalformedURLException e3) {
            malformedURLException = e3;
            adobeCloudEndpoint = null;
        }
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().hasPrivateCloudScope()) {
                return null;
            }
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobeStorageSession(adobeCloudEndpoint);
    }

    public AdobeStorageSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobeStorageServiceDisconnectedNotification);
        setupOngoingConnectionTimer(15L, false);
    }

    public AdobeStorageSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
    }

    public AdobeStorageSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        super(adobeNetworkHttpService, null);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void setUpService() {
        String adobeID = AdobeAuthKeychain.getSharedKeychain().getAdobeID();
        if (!isCacheConfigured() && adobeID != null && adobeID.length() > 0) {
            try {
                AdobeCommonCache.getSharedInstance().configureCache("com.adobe.cc.storage", 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU));
                e = null;
            } catch (AdobeInvalidCacheSettingsException e2) {
                e = e2;
            }
            if (e != null) {
                this._cacheConfigured = true;
            } else {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), null);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void tearDownService() {
        super.tearDownService();
        if (AdobeCommonCache.getSharedInstance().doesCacheExist("com.adobe.cc.storage")) {
            AdobeCommonCache.getSharedInstance().printStatistics("com.adobe.cc.storage");
            if (!AdobeCommonCache.getSharedInstance().removeCache("com.adobe.cc.storage")) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Removal of cache failed");
            }
        }
        this._cacheConfigured = false;
    }

    protected boolean isCacheConfigured() {
        return this._cacheConfigured;
    }

    protected AdobeNetworkHttpService getServiceForURI(String str) {
        URL url;
        AdobeNetworkHttpService serviceForSchemaId = getServiceForSchemaId("files");
        try {
            url = new URL(str);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            url = null;
        }
        if (url != null && url.getPath() != null) {
            str = url.getPath();
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            str = String.format("/%s", str);
        }
        if (str.startsWith("/archive")) {
            AdobeNetworkHttpService serviceForSchemaId2 = getServiceForSchemaId(AdobeStorageSessionArchiveServiceTag);
            if (serviceForSchemaId2 == null) {
                return getServiceForSchemaId(null);
            }
            return serviceForSchemaId2;
        }
        if (str.startsWith("/assets/adobe-libraries")) {
            return getServiceForSchemaId("libraries");
        }
        if (str.startsWith("/assets")) {
            return getServiceForSchemaId("assets");
        }
        return serviceForSchemaId;
    }

    public AdobeNetworkHttpRequest updateFileFromStream(final AdobeStorageResourceItem adobeStorageResourceItem, InputStream inputStream, boolean z, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler) {
        String mimeType;
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, adobeStorageResourceItem.etag == null ? null : "If-Match", true);
        if (adobeStorageResourceItem.type == null && isPrivateService() && (mimeType = AdobeStorageUtils.getMimeType(adobeStorageResourceItem.getPath())) != null) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("Content-Type", mimeType);
        }
        if (z) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
        }
        getResponseForUploadStream(adobeNetworkHttpRequestRequestFor, inputStream, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 201 || statusCode == 200 || statusCode == 204) {
                    try {
                        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                        if (headers != null) {
                            if (headers.containsKey("etag")) {
                                adobeStorageResourceItem.etag = headers.get("etag").get(0);
                            }
                            if (headers.containsKey("x-latest-version")) {
                                adobeStorageResourceItem.setVersion(headers.get("x-latest-version").get(0));
                            }
                            if (headers.containsKey("content-md5")) {
                                adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                            }
                            if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                                adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                            }
                            if (headers.containsKey("date")) {
                                adobeStorageResourceItem.modified = headers.get("date").get(0);
                            }
                        }
                        if (adobeNetworkHttpResponse.getDataString() != null) {
                            JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            if (jSONObjectJSONObjectWithData != null) {
                                adobeStorageResourceItem.internalID = jSONObjectJSONObjectWithData.getString("id");
                                adobeStorageResourceItem.setLength(Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobeCommunityConstants.AdobeCommunityResourceSizeKey)));
                                JSONObject jSONObject = new JSONObject();
                                if (jSONObjectJSONObjectWithData.has(AdobeStorageSession.PAGES)) {
                                    jSONObject.put(AdobeStorageSession.PAGES, jSONObjectJSONObjectWithData.getInt(AdobeStorageSession.PAGES));
                                }
                                if (jSONObjectJSONObjectWithData.has("width")) {
                                    jSONObject.put("width", jSONObjectJSONObjectWithData.getInt("width"));
                                }
                                if (jSONObjectJSONObjectWithData.has("height")) {
                                    jSONObject.put("height", jSONObjectJSONObjectWithData.getInt("height"));
                                }
                                adobeStorageResourceItem.setOptionalMetadata(jSONObject);
                            }
                        } else if (adobeNetworkHttpResponse.getBytesSent() != 0) {
                            adobeStorageResourceItem.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesSent()));
                        }
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.ERROR, "", "", e2);
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageResourceRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public String getHrefForUploadedComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite) {
        if (adobeDCXComposite.getHref() == null || adobeDCXComponent.getEtag() == null || adobeDCXComponent.getVersion() == null) {
            return null;
        }
        return AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, null, true).href.toString();
    }

    public AdobeNetworkHttpRequest requestFor(AdobeStorageResource adobeStorageResource, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, String str, boolean z) {
        return requestFor(adobeStorageResource, adobeNetworkHttpRequestMethod, str, z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest requestFor(com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource r9, com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod r10, java.lang.String r11, boolean r12, java.util.List<java.lang.String> r13) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.requestFor(com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource, com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod, java.lang.String, boolean, java.util.List):com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest");
    }

    public void cancelRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        if (requestMap.containsKey(adobeNetworkHttpRequest)) {
            requestMap.get(adobeNetworkHttpRequest).cancel();
            requestMap.remove(adobeNetworkHttpRequest);
        }
    }

    public AdobeNetworkHttpTaskHandle getResponseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, IStorageResponseCallback iStorageResponseCallback) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getResponseFor(adobeNetworkHttpRequest, str, bArr, iStorageResponseCallback, handler);
    }

    public AdobeNetworkHttpTaskHandle getResponseForUploadStream(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, InputStream inputStream, final IStorageResponseCallback iStorageResponseCallback, Handler handler) {
        AdobeNetworkHttpService serviceForURI = getServiceForURI(adobeNetworkHttpRequest.getUrl().toString());
        if (serviceForURI == null) {
            if (iStorageResponseCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.2
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
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.3
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
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.4
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeStorageSession.requestMap.remove(adobeNetworkHttpRequest);
                iStorageResponseCallback.onComplete(adobeNetworkHttpResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException2) {
                iStorageResponseCallback.onError(adobeNetworkException2);
            }
        };
        serviceForURI.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        AdobeNetworkHttpTaskHandle responseForUploadRequestFromStream = serviceForURI.getResponseForUploadRequestFromStream(adobeNetworkHttpRequest, inputStream, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        requestMap.put(adobeNetworkHttpRequest, responseForUploadRequestFromStream);
        responseForUploadRequestFromStream.registerListener(new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.5
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iStorageResponseCallback.onProgress(d2);
            }
        });
        return responseForUploadRequestFromStream;
    }

    public AdobeNetworkHttpTaskHandle getResponseFor(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, final IStorageResponseCallback iStorageResponseCallback, Handler handler) {
        AdobeNetworkHttpTaskHandle responseForUploadRequest;
        if (adobeNetworkHttpRequest == null) {
            iStorageResponseCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        AdobeNetworkHttpService serviceForURI = getServiceForURI(adobeNetworkHttpRequest.getUrl().toString());
        if (serviceForURI == null) {
            if (iStorageResponseCallback == null) {
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
            } else {
                final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.6
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
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.7
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
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.8
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeStorageSession.requestMap.remove(adobeNetworkHttpRequest);
                iStorageResponseCallback.onComplete(adobeNetworkHttpResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException2) {
                iStorageResponseCallback.onError(adobeNetworkException2);
            }
        };
        serviceForURI.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        if (str == null) {
            if (bArr != null) {
                adobeNetworkHttpRequest.setBody(bArr);
            }
            responseForUploadRequest = serviceForURI.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET) {
            responseForUploadRequest = serviceForURI.getResponseForDownloadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD) {
            responseForUploadRequest = serviceForURI.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else {
            responseForUploadRequest = serviceForURI.getResponseForUploadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        }
        requestMap.put(adobeNetworkHttpRequest, responseForUploadRequest);
        responseForUploadRequest.registerListener(new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.9
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iStorageResponseCallback.onProgress(d2);
            }
        });
        return responseForUploadRequest;
    }

    private AdobeNetworkException checkEntitlements() {
        boolean z = true;
        if (isPrivateService()) {
            if (!AdobeEntitlementServices.getSharedServices().hasAccessToPrivateStorageServices()) {
                z = false;
            }
        } else if (!AdobeEntitlementServices.getSharedServices().hasAccessToPublicStorageServices()) {
        }
        if (z) {
            return null;
        }
        return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService);
    }

    public static AdobeAssetException getAssetErrorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        AdobeAssetException adobeAssetExceptionCreateStorageError = null;
        if (adobeNetworkHttpResponse == null) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorCancelled, null, null, -1, null);
        } else if (adobeNetworkHttpResponse.hasNoStorageSpaceError()) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeNoStorageSpaceInDeviceToDownload, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (adobeNetworkHttpResponse.getStatusCode() == 412) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorConflictingChanges, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (adobeNetworkHttpResponse.getStatusCode() == 507) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorExceededQuota, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (adobeNetworkHttpResponse.getStatusCode() == 415) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (AdobeStorageErrorUtils.isErrorDueToOffline(adobeNetworkHttpResponse)) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (adobeNetworkHttpResponse.getStatusCode() == 403) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorForbiddenRequest, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        } else if (adobeNetworkHttpResponse.getStatusCode() == 600) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        if (adobeAssetExceptionCreateStorageError == null) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        return adobeAssetExceptionCreateStorageError;
    }

    public static AdobeAssetException getStorageError(AdobeNetworkException adobeNetworkException) {
        AdobeNetworkHttpResponse adobeNetworkHttpResponse = null;
        if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, null, null, -1, null);
        }
        if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoEnoughDeviceStorage) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeNoStorageSpaceInDeviceToDownload, null, null, -1, null);
        }
        if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNotEntitledToService) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorNotEntitledToService, null, null, -1, null);
        }
        if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorTimeout) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorTimeout, null, null, -1, null);
        }
        if (adobeNetworkException.getData() != null && adobeNetworkException.getData().containsKey("Response")) {
            adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
        }
        return getAssetErrorFromResponse(adobeNetworkHttpResponse);
    }

    private AdobeNetworkHttpRequest requestVideoMetadataFor(AdobeStorageResourceItem adobeStorageResourceItem, AdobeRequestParameters adobeRequestParameters, String str) {
        URL url = null;
        AdobeNetworkHttpService serviceForSchemaId = getServiceForSchemaId("files");
        try {
            String formattedLink = AdobeStorageUtils.getFormattedLink(adobeStorageResourceItem.getRenditionLink(), adobeRequestParameters);
            if (formattedLink == null) {
                formattedLink = constructRenditionLink(adobeStorageResourceItem.href, adobeRequestParameters);
            }
            url = new URI(serviceForSchemaId.baseURL().toString() + formattedLink).toURL();
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "MalformedURLException", e2);
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "URISyntaxException", e3);
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty(str, adobeStorageResourceItem.etag == null ? "*" : adobeStorageResourceItem.etag);
        }
        adobeNetworkHttpRequest.setRequestProperty("Accept", adobeRequestParameters.getAcceptType());
        return adobeNetworkHttpRequest;
    }

    private AdobeNetworkHttpRequest requestMetadataFor(AdobeStorageResourceItem adobeStorageResourceItem, String str) {
        URL url = null;
        try {
            String metadataLink = adobeStorageResourceItem.getMetadataLink();
            if (metadataLink == null) {
                metadataLink = constructMetaDataLink(adobeStorageResourceItem.href);
            }
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(metadataLink, getServiceForURI(metadataLink).baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestMetadata", "MalformedURLException", e2);
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestMetadata", "URISyntaxException", e3);
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty(str, adobeStorageResourceItem.etag == null ? "*" : adobeStorageResourceItem.etag);
        }
        return adobeNetworkHttpRequest;
    }

    private AdobeNetworkHttpRequest requestRenditionFor(AdobeStorageResourceItem adobeStorageResourceItem, AdobeRequestParameters adobeRequestParameters, String str) {
        URL url = null;
        try {
            AdobeNetworkHttpService serviceForSchemaId = getServiceForSchemaId("files");
            String formattedLink = AdobeStorageUtils.getFormattedLink(adobeStorageResourceItem.getRenditionLink(), adobeRequestParameters);
            if (formattedLink == null) {
                formattedLink = constructRenditionLink(adobeStorageResourceItem.href, adobeRequestParameters);
            }
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(formattedLink, serviceForSchemaId.baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "MalformedURLException", e2);
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "URISyntaxException", e3);
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty(str, adobeStorageResourceItem.etag == null ? "*" : adobeStorageResourceItem.etag);
        }
        adobeNetworkHttpRequest.setRequestProperty("Accept", adobeRequestParameters.getAcceptType());
        return adobeNetworkHttpRequest;
    }

    public void getQuotaInformationOnCompletion(final IAdobeStorageSessionQuotaCallback iAdobeStorageSessionQuotaCallback, final Handler handler) {
        URL url;
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfInvalidAccessToken(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.10
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(final AdobeAuthException adobeAuthException) {
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeStorageSessionQuotaCallback != null) {
                                iAdobeStorageSessionQuotaCallback.onError(adobeAuthException);
                            }
                        }
                    });
                } else if (iAdobeStorageSessionQuotaCallback != null) {
                    iAdobeStorageSessionQuotaCallback.onError(adobeAuthException);
                }
            }
        }, "Getting the quota requires an authenticated user.")) {
            try {
                AdobeNetworkHttpService serviceForURI = getServiceForURI("/profile/quota");
                if (serviceForURI != null) {
                    url = new URL(serviceForURI.baseURL().toString() + "/profile/quota");
                } else {
                    return;
                }
            } catch (MalformedURLException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
                url = null;
            }
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            getResponseFor(adobeNetworkHttpRequest, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.11
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                        JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                        if (jSONObjectJSONObjectWithData != null) {
                            final Double dValueOf = Double.valueOf(jSONObjectJSONObjectWithData.optDouble("storage_used"));
                            final Double dValueOf2 = Double.valueOf(jSONObjectJSONObjectWithData.optDouble("storage_available"));
                            final Double dValueOf3 = Double.valueOf(jSONObjectJSONObjectWithData.optDouble("storage_quota"));
                            if (iAdobeStorageSessionQuotaCallback != null) {
                                if (handler != null) {
                                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.11.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            iAdobeStorageSessionQuotaCallback.onCompletion(dValueOf, dValueOf2, dValueOf3);
                                        }
                                    });
                                    return;
                                } else {
                                    iAdobeStorageSessionQuotaCallback.onCompletion(dValueOf, dValueOf2, dValueOf3);
                                    return;
                                }
                            }
                            return;
                        }
                        if (iAdobeStorageSessionQuotaCallback != null) {
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.11.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeStorageSessionQuotaCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse));
                                    }
                                });
                            } else {
                                iAdobeStorageSessionQuotaCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse));
                            }
                        }
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    final AdobeAssetException storageError = AdobeStorageSession.getStorageError(adobeNetworkException);
                    if (iAdobeStorageSessionQuotaCallback != null) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.11.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeStorageSessionQuotaCallback.onError(storageError);
                                }
                            });
                        } else {
                            iAdobeStorageSessionQuotaCallback.onError(storageError);
                        }
                    }
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            }, handler);
        }
    }

    public AdobeNetworkHttpRequest renameAsset(AdobeAsset adobeAsset, String str, IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        String string = adobeAsset.getParentHref().toString();
        String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
        if (validatedAssetName == null) {
            iAdobeStorageSessionEditCallback.onError(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
            return null;
        }
        if (adobeAsset instanceof AdobeAssetFile) {
            String name = adobeAsset.getName();
            int iLastIndexOf = name.lastIndexOf(".");
            String strSubstring = iLastIndexOf != -1 ? name.substring(iLastIndexOf) : null;
            if (strSubstring != null) {
                validatedAssetName = validatedAssetName.concat(strSubstring);
            }
        }
        return moveAssetUtil(string.concat(validatedAssetName), adobeAsset, false, iAdobeStorageSessionEditCallback);
    }

    public AdobeNetworkHttpRequest eraseAsset(AdobeAsset adobeAsset, IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        String string = adobeAsset.getHref().toString();
        String strSubstring = "/archive/" + string.substring(string.substring(0, string.length() - 1).lastIndexOf(URIUtil.SLASH) + 1);
        if (strSubstring.endsWith(URIUtil.SLASH)) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        return moveAssetUtil(strSubstring, adobeAsset, false, iAdobeStorageSessionEditCallback);
    }

    public AdobeNetworkHttpRequest moveAsset(String str, AdobeAsset adobeAsset, IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        return moveAsset(str, adobeAsset, false, iAdobeStorageSessionEditCallback);
    }

    public AdobeNetworkHttpRequest moveAsset(String str, AdobeAsset adobeAsset, boolean z, IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        String name = adobeAsset.getName();
        if (str.endsWith(URIUtil.SLASH)) {
            str = str.substring(0, str.length() - 1);
        }
        return moveAssetUtil(str + URIUtil.SLASH + AdobeAsset.getValidatedAssetName(name), adobeAsset, z, iAdobeStorageSessionEditCallback);
    }

    private AdobeNetworkHttpRequest moveAssetUtil(String str, AdobeAsset adobeAsset, boolean z, final IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        try {
            if (adobeAsset == null) {
                iAdobeStorageSessionEditCallback.onError(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
                return null;
            }
            URL url = new URI(getServiceForSchemaId("files").baseURL().toString() + str).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            if (!isPrivateService()) {
                adobeNetworkHttpRequest.addQueryParameters("invocation_mode", "async");
            }
            String string = adobeAsset.getHref().toString();
            adobeNetworkHttpRequest.setRequestProperty(HttpHeaders.LINK, z ? String.format("<%s>;rel=source", string) : String.format("<%s>;rel=self", string));
            if (adobeAsset instanceof AdobeAssetFolder) {
                adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/vnd.adobe.directory+json");
            } else {
                adobeNetworkHttpRequest.setRequestProperty("Content-Type", "*/*");
            }
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
            getResponseFor(adobeNetworkHttpRequest, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.12
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                        iAdobeStorageSessionEditCallback.onComplete();
                    } else if (adobeNetworkHttpResponse.getStatusCode() == 202) {
                        new AdobeStorageAsyncResponseHandler(1L, this, new IAdobeStorageAsyncResponseHandlerCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.12.1
                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                iAdobeStorageSessionEditCallback.onComplete();
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                iAdobeStorageSessionEditCallback.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse2));
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onError(AdobeNetworkException adobeNetworkException) {
                                iAdobeStorageSessionEditCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                            }
                        }).startMonitoringServiceEndPoint(adobeNetworkHttpResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeStorageSessionEditCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
            return adobeNetworkHttpRequest;
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            iAdobeStorageSessionEditCallback.onError(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
            return null;
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, "", "", e3);
            iAdobeStorageSessionEditCallback.onError(AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
            return null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean archiveDCXComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1EnclosingClassForOutput c1EnclosingClassForOutput = new C1EnclosingClassForOutput();
        String string = adobeDCXComposite.getHref().toString();
        String strSubstring = "/archive/" + string.substring(string.substring(0, string.length() - 1).lastIndexOf(URIUtil.SLASH) + 1);
        if (strSubstring.endsWith(URIUtil.SLASH)) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        archiveDCXCompositeUtil(strSubstring, adobeDCXComposite, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.13
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c1EnclosingClassForOutput.compositeDeleteError = adobeCSDKException;
                c1EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onCompletion(AdobeDCXComposite adobeDCXComposite2) {
                reentrantLock.lock();
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
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c1EnclosingClassForOutput.compositeDeleteError != null) {
            throw c1EnclosingClassForOutput.compositeDeleteError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$1EnclosingClassForOutput, reason: invalid class name */
    class C1EnclosingClassForOutput {
        boolean done = false;
        AdobeCSDKException compositeDeleteError = null;

        C1EnclosingClassForOutput() {
        }
    }

    private AdobeNetworkHttpTaskHandle archiveDCXCompositeUtil(String str, final AdobeDCXComposite adobeDCXComposite, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, final Handler handler) {
        if (adobeDCXComposite == null) {
            iAdobeDCXCompositeRequestCompletionHandler.onError(AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorUnknownComposite, "Composite is null"));
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        if (!isPrivateService()) {
            adobeNetworkHttpRequest.addQueryParameters("invocation_mode", "async");
        }
        adobeNetworkHttpRequest.setRequestProperty(HttpHeaders.LINK, String.format("<%s>;rel=self", adobeDCXComposite.getHref().toString()));
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/vnd.adobe.directory+json");
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
        try {
            adobeNetworkHttpRequest.setUrl(new URI(getServiceForSchemaId("files").baseURL().toString() + str).toURL());
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Creation of URL Failed", e2);
            iAdobeDCXCompositeRequestCompletionHandler.onError(AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, null));
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Creation of URL Failed", e3);
            iAdobeDCXCompositeRequestCompletionHandler.onError(AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidPath, e3.getMessage(), e3));
        }
        return getResponseFor(adobeNetworkHttpRequest, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.14
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                final AdobeAssetException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 202 || statusCode == 204 || statusCode == 404) {
                    AdobeLogger.log(Level.INFO, AdobeStorageSession.class.getSimpleName(), "Archiving composite done with statusCode- " + statusCode);
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                if (assetErrorFromResponse == null) {
                    if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.14.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                                }
                            });
                            return;
                        } else {
                            iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                            return;
                        }
                    }
                    return;
                }
                if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.14.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(assetErrorFromResponse);
                            }
                        });
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(assetErrorFromResponse);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(final AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.14.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                                    }
                                });
                                return;
                            } else {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                                return;
                            }
                        }
                        return;
                    }
                }
                if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.14.4
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                            }
                        });
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    public AdobeNetworkHttpTaskHandle moveFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceItem adobeStorageResourceItem2, boolean z, IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException> iAdobeGenericRequestCallback) {
        return transferFile(adobeStorageResourceItem, adobeStorageResourceItem2, false, z, false, iAdobeGenericRequestCallback);
    }

    private AdobeNetworkHttpTaskHandle transferFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceItem adobeStorageResourceItem2, boolean z, boolean z2, boolean z3, final IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException> iAdobeGenericRequestCallback) {
        String str;
        URI uri = adobeStorageResourceItem.href;
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem2, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, false);
        adobeNetworkHttpRequestRequestFor.addQueryParameters("invocation_mode", "sync,async");
        if (z2) {
            adobeNetworkHttpRequestRequestFor.addQueryParameters(INTERMEDIATES, "true");
        } else {
            adobeNetworkHttpRequestRequestFor.addQueryParameters(INTERMEDIATES, "false");
        }
        String path = uri.getPath();
        String query = uri.getQuery();
        String str2 = query != null ? path + String.format("?%s", query) : path;
        if (z3) {
            str = "source";
        } else {
            str = "self";
        }
        adobeNetworkHttpRequestRequestFor.addQueryParameters(str, str2);
        if (z) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
        } else {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("If-None-Match", "*");
        }
        final String string = adobeStorageResourceItem2.href.toString();
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.15
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() != 202) {
                    AdobeStorageSession.this.transferCompletion(adobeNetworkHttpResponse, iAdobeGenericRequestCallback, string);
                } else {
                    new AdobeStorageAsyncResponseHandler(1L, this, new IAdobeStorageAsyncResponseHandlerCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.15.1
                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                        public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                            AdobeStorageSession.this.transferCompletion(adobeNetworkHttpResponse2, iAdobeGenericRequestCallback, string);
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                        public void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                            iAdobeGenericRequestCallback.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse2));
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                        public void onError(AdobeNetworkException adobeNetworkException) {
                            iAdobeGenericRequestCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                        }
                    }).startMonitoringServiceEndPoint(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGenericRequestCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void transferCompletion(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r11, com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback<com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem, com.adobe.creativesdk.foundation.storage.AdobeAssetException> r12, java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.transferCompletion(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse, com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback, java.lang.String):void");
    }

    public AdobeStorageResourceCollection getDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1EnclosedClass c1EnclosedClass = new C1EnclosedClass();
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.16
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection2) {
                reentrantLock.lock();
                c1EnclosedClass.isDone = true;
                c1EnclosedClass.collection = adobeStorageResourceCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c1EnclosedClass.isDone = true;
                c1EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        getDirectory(adobeStorageResourceCollection, adobeStoragePagingMode, iAdobeStorageCollectionRequestCompletionHandler);
        while (!c1EnclosedClass.isDone) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        if (c1EnclosedClass.exception != null) {
            throw c1EnclosedClass.exception;
        }
        return c1EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$1EnclosedClass, reason: invalid class name */
    class C1EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceCollection collection = null;
        AdobeAssetException exception = null;

        C1EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest getDirectoryForPageData(final AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback, Handler handler) {
        if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage) {
            adobeStorageResourceCollection.resetPageIndex();
        } else {
            if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageAppend || adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageReplace) {
                AdobeLogger.log(Level.ERROR, "StorageSession.getDirectory", "Unexpected Paging mode");
            }
            if (!adobeStorageResourceCollection.isComplete()) {
                AdobeLogger.log(Level.ERROR, "StorageSession.getDirectory", "Specified Paging mode should only be used with an incomplete collection that was populated by a previous request");
            }
            adobeStorageResourceCollection.setStartIndex(adobeStorageResourceCollection.getNextStartIndex());
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, adobeStorageResourceCollection.etag != null && adobeStorageResourceCollection.getChildren() != null && adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage ? "If-None-Match" : null, false, null);
        getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.17
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode != 304) {
                        if (adobeNetworkHttpResponse.getHeaders() != null && adobeNetworkHttpResponse.getHeaders().containsKey(AdobeStorageSession.X_CHILDREN_NEXT_START)) {
                            adobeStorageResourceCollection.setNextStartIndex(adobeNetworkHttpResponse.getHeaders().get(AdobeStorageSession.X_CHILDREN_NEXT_START).get(0));
                        } else {
                            adobeStorageResourceCollection.setNextStartIndex(null);
                        }
                        iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataString());
                        return;
                    }
                    return;
                }
                iAdobeGenericErrorCallback.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGenericErrorCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getDirectory(final AdobeStorageResourceCollection adobeStorageResourceCollection, final AdobeStoragePagingMode adobeStoragePagingMode, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage) {
            adobeStorageResourceCollection.resetPageIndex();
        } else {
            if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageAppend || adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageReplace) {
                AdobeLogger.log(Level.ERROR, "StorageSession.getDirectory", "Unexpected Paging mode");
            }
            if (!adobeStorageResourceCollection.isComplete()) {
                AdobeLogger.log(Level.ERROR, "StorageSession.getDirectory", "Specified Paging mode should only be used with an incomplete collection that was populated by a previous request");
            }
            adobeStorageResourceCollection.setStartIndex(adobeStorageResourceCollection.getNextStartIndex());
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, adobeStorageResourceCollection.etag != null && adobeStorageResourceCollection.getChildren() != null && adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage ? "If-None-Match" : null, false, null);
        getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.18
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode != 304) {
                        try {
                            adobeStorageResourceCollection.updateFromData(adobeNetworkHttpResponse.getDataString(), adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageAppend);
                            if (adobeNetworkHttpResponse.getHeaders() != null && adobeNetworkHttpResponse.getHeaders().containsKey(AdobeStorageSession.X_CHILDREN_NEXT_START)) {
                                adobeStorageResourceCollection.setNextStartIndex(adobeNetworkHttpResponse.getHeaders().get(AdobeStorageSession.X_CHILDREN_NEXT_START).get(0));
                            } else {
                                adobeStorageResourceCollection.setNextStartIndex(null);
                            }
                            iAdobeStorageCollectionRequestCompletionHandler.onComplete(adobeStorageResourceCollection);
                            return;
                        } catch (ParsingDataException e2) {
                            AdobeLogger.log(Level.ERROR, "", "", e2);
                            iAdobeStorageCollectionRequestCompletionHandler.onError(e2.getError());
                            return;
                        }
                    }
                    return;
                }
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getDirectory(adobeStorageResourceCollection, adobeStoragePagingMode, iAdobeStorageCollectionRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpRequest createDirectory(final AdobeStorageResourceCollection adobeStorageResourceCollection, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true);
        getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.19
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 201) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    if (headers != null) {
                        if (headers.containsKey("etag")) {
                            adobeStorageResourceCollection.etag = headers.get("etag").get(0);
                        }
                        if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                            adobeStorageResourceCollection.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                        }
                        if (headers.containsKey("date")) {
                            adobeStorageResourceCollection.created = headers.get("date").get(0);
                            adobeStorageResourceCollection.modified = headers.get("date").get(0);
                        }
                    }
                    iAdobeStorageCollectionRequestCompletionHandler.onComplete(adobeStorageResourceCollection);
                    return;
                }
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest createDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return createDirectory(adobeStorageResourceCollection, iAdobeStorageCollectionRequestCompletionHandler, handler);
    }

    public AdobeStorageResourceCollection createDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C2EnclosedClass c2EnclosedClass = new C2EnclosedClass();
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.20
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection2) {
                reentrantLock.lock();
                c2EnclosedClass.isDone = true;
                c2EnclosedClass.collection = adobeStorageResourceCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c2EnclosedClass.isDone = true;
                c2EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        createDirectory(adobeStorageResourceCollection, iAdobeStorageCollectionRequestCompletionHandler);
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
        return c2EnclosedClass.collection;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$2EnclosedClass, reason: invalid class name */
    class C2EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceCollection collection = null;
        AdobeAssetException exception = null;

        C2EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest deleteDirectory(final AdobeStorageResourceCollection adobeStorageResourceCollection, final boolean z, boolean z2, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, "If-Match", false);
        if (z2) {
            try {
                adobeNetworkHttpRequestRequestFor.setUrl(new URL(adobeNetworkHttpRequestRequestFor.getUrl().toString() + "?recursive=true"));
            } catch (MalformedURLException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
        getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.21
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 204 || (statusCode == 404 && z)) {
                    iAdobeStorageCollectionRequestCompletionHandler.onComplete(adobeStorageResourceCollection);
                } else {
                    iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest deleteDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection, boolean z, boolean z2, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return deleteDirectory(adobeStorageResourceCollection, z, z2, iAdobeStorageCollectionRequestCompletionHandler, handler);
    }

    public boolean deleteDirectory(AdobeStorageResourceCollection adobeStorageResourceCollection, boolean z, boolean z2) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C3EnclosedClass c3EnclosedClass = new C3EnclosedClass();
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.22
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection2) {
                reentrantLock.lock();
                c3EnclosedClass.isDone = true;
                c3EnclosedClass.collection = adobeStorageResourceCollection2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c3EnclosedClass.isDone = true;
                c3EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        };
        reentrantLock.lock();
        deleteDirectory(adobeStorageResourceCollection, z, z2, iAdobeStorageCollectionRequestCompletionHandler);
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
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$3EnclosedClass, reason: invalid class name */
    class C3EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceCollection collection = null;
        AdobeAssetException exception = null;

        C3EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest updateFile(final AdobeStorageResourceItem adobeStorageResourceItem, boolean z, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler) {
        String mimeType;
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, adobeStorageResourceItem.etag == null ? null : "If-Match", true);
        if (adobeStorageResourceItem.type == null && isPrivateService() && (mimeType = AdobeStorageUtils.getMimeType(adobeStorageResourceItem.getPath())) != null) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("Content-Type", mimeType);
        }
        if (z) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
        }
        getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), adobeStorageResourceItem.getData(), new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.23
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 201 || statusCode == 200 || statusCode == 204) {
                    try {
                        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                        if (headers != null) {
                            if (headers.containsKey("etag")) {
                                adobeStorageResourceItem.etag = headers.get("etag").get(0);
                            }
                            if (headers.containsKey("x-latest-version")) {
                                adobeStorageResourceItem.setVersion(headers.get("x-latest-version").get(0));
                            }
                            if (headers.containsKey("content-md5")) {
                                adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                            }
                            if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                                adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                            }
                            if (headers.containsKey("date")) {
                                adobeStorageResourceItem.modified = headers.get("date").get(0);
                            }
                        }
                        if (adobeNetworkHttpResponse.getDataString() != null) {
                            JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            if (jSONObjectJSONObjectWithData != null) {
                                adobeStorageResourceItem.internalID = jSONObjectJSONObjectWithData.getString("id");
                                adobeStorageResourceItem.setLength(Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobeCommunityConstants.AdobeCommunityResourceSizeKey)));
                                JSONObject jSONObject = new JSONObject();
                                if (jSONObjectJSONObjectWithData.has(AdobeStorageSession.PAGES)) {
                                    jSONObject.put(AdobeStorageSession.PAGES, jSONObjectJSONObjectWithData.getInt(AdobeStorageSession.PAGES));
                                }
                                if (jSONObjectJSONObjectWithData.has("width")) {
                                    jSONObject.put("width", jSONObjectJSONObjectWithData.getInt("width"));
                                }
                                if (jSONObjectJSONObjectWithData.has("height")) {
                                    jSONObject.put("height", jSONObjectJSONObjectWithData.getInt("height"));
                                }
                                adobeStorageResourceItem.setOptionalMetadata(jSONObject);
                            }
                        } else if (adobeNetworkHttpResponse.getBytesSent() != 0) {
                            adobeStorageResourceItem.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesSent()));
                        }
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.ERROR, "", "", e2);
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageResourceRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest updateFile(AdobeStorageResourceItem adobeStorageResourceItem, boolean z, IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return updateFile(adobeStorageResourceItem, z, iAdobeStorageResourceRequestCompletionHandler, handler);
    }

    public boolean updateFile(AdobeStorageResourceItem adobeStorageResourceItem, boolean z) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C4EnclosedClass c4EnclosedClass = new C4EnclosedClass();
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.24
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem2) {
                reentrantLock.lock();
                c4EnclosedClass.isDone = true;
                c4EnclosedClass.item = adobeStorageResourceItem2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c4EnclosedClass.isDone = true;
                c4EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        };
        reentrantLock.lock();
        updateFile(adobeStorageResourceItem, z, iAdobeStorageResourceRequestCompletionHandler);
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
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$4EnclosedClass, reason: invalid class name */
    class C4EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceItem item = null;
        AdobeAssetException exception = null;

        C4EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest getVideoMetadata(AdobeStorageResourceItem adobeStorageResourceItem, String str, IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getVideoMetadata(adobeStorageResourceItem, str, iAdobeStorageDataRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpRequest getAssetMetadata(AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestMetadataFor = requestMetadataFor(adobeStorageResourceItem, adobeStorageResourceItem.etag != null ? "If-None-Match" : null);
        getResponseFor(adobeNetworkHttpRequestRequestMetadataFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.25
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304 || statusCode == 415) {
                    iAdobeStorageDataRequestCompletionHandler.onComplete(adobeNetworkHttpResponse.getDataBytes());
                } else {
                    iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageDataRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestMetadataFor;
    }

    public AdobeNetworkHttpRequest getVideoMetadata(AdobeStorageResourceItem adobeStorageResourceItem, String str, final IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler, Handler handler) {
        if (!str.equals("application/vnd.adobe.ccv.videometadata") && !str.startsWith("video/")) {
            iAdobeStorageDataRequestCompletionHandler.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnsupportedMedia));
            return null;
        }
        AdobeRequestParameters adobeRequestParameters = new AdobeRequestParameters();
        adobeRequestParameters.setAcceptType("application/vnd.adobe.ccv.videometadata");
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestVideoMetadataFor = requestVideoMetadataFor(adobeStorageResourceItem, adobeRequestParameters, adobeStorageResourceItem.etag != null ? "If-None-Match" : null);
        getResponseFor(adobeNetworkHttpRequestRequestVideoMetadataFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.26
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304 || statusCode == 415) {
                    iAdobeStorageDataRequestCompletionHandler.onComplete(adobeNetworkHttpResponse.getDataBytes());
                } else {
                    iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageDataRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestVideoMetadataFor;
    }

    public AdobeNetworkHttpTaskHandle getRendition(AdobeStorageResourceItem adobeStorageResourceItem, int i, String str, int i2, final IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler, Handler handler) {
        AdobeRequestParameters adobeRequestParameters = new AdobeRequestParameters();
        adobeRequestParameters.setAcceptType(str);
        adobeRequestParameters.setPage(i2);
        if (i < 0) {
            i = 0;
        }
        adobeRequestParameters.setSize(i);
        return getResponseFor(requestRenditionFor(adobeStorageResourceItem, adobeRequestParameters, adobeStorageResourceItem.etag == null ? null : "If-None-Match"), adobeStorageResourceItem.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.27
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    iAdobeStorageDataRequestCompletionHandler.onComplete(adobeNetworkHttpResponse.getDataBytes());
                } else {
                    iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageDataRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
    }

    public AdobeNetworkHttpTaskHandle getRendition(AdobeStorageResourceItem adobeStorageResourceItem, int i, String str, int i2, IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getRendition(adobeStorageResourceItem, i, str, i2, iAdobeStorageDataRequestCompletionHandler, handler);
    }

    public AdobeNetworkHttpRequest getFile(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler, final String str) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, adobeStorageResourceItem.etag == null ? null : "If-None-Match", false);
        if (adobeNetworkHttpRequestRequestFor == null) {
            iAdobeStorageResourceRequestCompletionHandler.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorServiceDisconnected));
            return null;
        }
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Accept-Encoding", "");
        IStorageResponseCallback iStorageResponseCallback = new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.28
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (adobeStorageResourceItem.getPath() == null && str == null && statusCode != 304 && adobeNetworkHttpResponse.getDataBytes() != null) {
                        adobeStorageResourceItem.setData(adobeNetworkHttpResponse.getDataBytes());
                    }
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    if (headers != null) {
                        if (headers.containsKey("etag")) {
                            adobeStorageResourceItem.etag = headers.get("etag").get(0);
                        }
                        if (adobeStorageResourceItem.getVersion() == null && headers.containsKey("x-latest-version")) {
                            adobeStorageResourceItem.setVersion(headers.get("x-latest-version").get(0));
                        }
                        if (headers.containsKey("content-md5")) {
                            adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                        }
                        if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                            adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                        }
                    }
                    if (statusCode != 304) {
                        adobeStorageResourceItem.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesReceived()));
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageResourceRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        };
        if (str == null) {
            getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, iStorageResponseCallback, handler);
        } else {
            getResponseFor(adobeNetworkHttpRequestRequestFor, str, null, iStorageResponseCallback, handler);
        }
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getFile(AdobeStorageResourceItem adobeStorageResourceItem, IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, String str) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getFile(adobeStorageResourceItem, iAdobeStorageResourceRequestCompletionHandler, handler, str);
    }

    public AdobeNetworkHttpRequest getFileForcedSaveToDevice(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, String str) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Accept-Encoding", "");
        IStorageResponseCallback iStorageResponseCallback = new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.29
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    if (headers != null) {
                        if (headers.containsKey("etag")) {
                            adobeStorageResourceItem.etag = headers.get("etag").get(0);
                        }
                        if (adobeStorageResourceItem.getVersion() == null && headers.containsKey("x-latest-version")) {
                            adobeStorageResourceItem.setVersion(headers.get("x-latest-version").get(0));
                        }
                        if (headers.containsKey("content-md5")) {
                            adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                        }
                        if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                            adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                        }
                    }
                    if (statusCode != 304) {
                        adobeStorageResourceItem.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesReceived()));
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageResourceRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        };
        if (str == null) {
            getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, iStorageResponseCallback, handler);
        } else {
            getResponseFor(adobeNetworkHttpRequestRequestFor, str, null, iStorageResponseCallback, handler);
        }
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getFileForced(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler, final String str) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Accept-Encoding", "");
        IStorageResponseCallback iStorageResponseCallback = new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.30
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (adobeStorageResourceItem.getPath() == null && str == null && statusCode != 304) {
                        adobeStorageResourceItem.setData(adobeNetworkHttpResponse.getDataBytes());
                    }
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    if (headers != null) {
                        if (headers.containsKey("etag")) {
                            adobeStorageResourceItem.etag = headers.get("etag").get(0);
                        }
                        if (adobeStorageResourceItem.getVersion() == null && headers.containsKey("x-latest-version")) {
                            adobeStorageResourceItem.setVersion(headers.get("x-latest-version").get(0));
                        }
                        if (headers.containsKey("content-md5")) {
                            adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                        }
                        if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                            adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                        }
                    }
                    if (statusCode != 304) {
                        adobeStorageResourceItem.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesReceived()));
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeStorageResourceRequestCompletionHandler.onProgress(d2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        };
        if (str == null) {
            getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, iStorageResponseCallback, handler);
        } else {
            getResponseFor(adobeNetworkHttpRequestRequestFor, str, null, iStorageResponseCallback, handler);
        }
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest unsuscribeBookmark(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, null, false);
        getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.31
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 204) {
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                } else {
                    iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getFileForced(AdobeStorageResourceItem adobeStorageResourceItem, IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, String str) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getFileForced(adobeStorageResourceItem, iAdobeStorageResourceRequestCompletionHandler, handler, str);
    }

    public AdobeStorageResourceItem getFile(AdobeStorageResourceItem adobeStorageResourceItem, String str) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C5EnclosedClass c5EnclosedClass = new C5EnclosedClass();
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.32
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem2) {
                reentrantLock.lock();
                c5EnclosedClass.isDone = true;
                c5EnclosedClass.item = adobeStorageResourceItem2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c5EnclosedClass.isDone = true;
                c5EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        };
        reentrantLock.lock();
        getFile(adobeStorageResourceItem, iAdobeStorageResourceRequestCompletionHandler, str);
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
        return c5EnclosedClass.item;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$5EnclosedClass, reason: invalid class name */
    class C5EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceItem item = null;
        AdobeAssetException exception = null;

        C5EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest getHeaderInfoForFile(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Accept-Encoding", "");
        getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.33
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 204) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    if (headers != null) {
                        if (headers.containsKey("etag")) {
                            adobeStorageResourceItem.etag = headers.get("etag").get(0);
                        }
                        if (headers.containsKey("content-md5")) {
                            adobeStorageResourceItem.setMd5(headers.get("content-md5").get(0));
                        }
                        if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                            adobeStorageResourceItem.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                        }
                        if (headers.containsKey(AdobeStorageSession.CONTENT_LENGTH)) {
                            adobeStorageResourceItem.setLength(Integer.valueOf(Integer.parseInt(headers.get(AdobeStorageSession.CONTENT_LENGTH).get(0))));
                        }
                    }
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                    return;
                }
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        }, handler);
        return adobeNetworkHttpRequestRequestFor;
    }

    public AdobeNetworkHttpRequest getHeaderInfoForFile(AdobeStorageResourceItem adobeStorageResourceItem, IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        return getHeaderInfoForFile(adobeStorageResourceItem, iAdobeStorageResourceRequestCompletionHandler, handler);
    }

    public AdobeStorageResourceItem getHeaderInfoForFile(AdobeStorageResourceItem adobeStorageResourceItem) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C6EnclosedClass c6EnclosedClass = new C6EnclosedClass();
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.34
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem2) {
                reentrantLock.lock();
                c6EnclosedClass.isDone = true;
                c6EnclosedClass.item = adobeStorageResourceItem2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c6EnclosedClass.isDone = true;
                c6EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        };
        reentrantLock.lock();
        getHeaderInfoForFile(adobeStorageResourceItem, iAdobeStorageResourceRequestCompletionHandler);
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
        return c6EnclosedClass.item;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$6EnclosedClass, reason: invalid class name */
    class C6EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceItem item = null;
        AdobeAssetException exception = null;

        C6EnclosedClass() {
        }
    }

    public AdobeNetworkHttpRequest deleteFile(final AdobeStorageResourceItem adobeStorageResourceItem, final boolean z, final IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, "If-Match", false);
        getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItem.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.35
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 204 || (statusCode == 404 && z)) {
                    iAdobeStorageResourceRequestCompletionHandler.onComplete(adobeStorageResourceItem);
                } else {
                    iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageResourceRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }
        });
        return adobeNetworkHttpRequestRequestFor;
    }

    public boolean deleteFile(AdobeStorageResourceItem adobeStorageResourceItem, boolean z) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C7EnclosedClass c7EnclosedClass = new C7EnclosedClass();
        IAdobeStorageResourceRequestCompletionHandler iAdobeStorageResourceRequestCompletionHandler = new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.36
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem2) {
                reentrantLock.lock();
                c7EnclosedClass.isDone = true;
                c7EnclosedClass.item = adobeStorageResourceItem2;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c7EnclosedClass.isDone = true;
                c7EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        };
        reentrantLock.lock();
        deleteFile(adobeStorageResourceItem, z, iAdobeStorageResourceRequestCompletionHandler);
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
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$7EnclosedClass, reason: invalid class name */
    class C7EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceItem item = null;
        AdobeAssetException exception = null;

        C7EnclosedClass() {
        }
    }

    public AdobeNetworkHttpTaskHandle copyFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceItem adobeStorageResourceItem2, boolean z, IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException> iAdobeGenericRequestCallback) {
        return transferFile(adobeStorageResourceItem, adobeStorageResourceItem2, false, z, true, iAdobeGenericRequestCallback);
    }

    public AdobeStorageResourceItem copyFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceItem adobeStorageResourceItem2, boolean z) throws AdobeAssetException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C8EnclosedClass c8EnclosedClass = new C8EnclosedClass();
        IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.37
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem3) {
                reentrantLock.lock();
                c8EnclosedClass.isDone = true;
                c8EnclosedClass.item = adobeStorageResourceItem3;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                c8EnclosedClass.isDone = true;
                c8EnclosedClass.exception = adobeAssetException;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        };
        reentrantLock.lock();
        copyFile(adobeStorageResourceItem, adobeStorageResourceItem2, z, iAdobeGenericRequestCallback);
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
        return c8EnclosedClass.item;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$8EnclosedClass, reason: invalid class name */
    class C8EnclosedClass {
        boolean isDone = false;
        AdobeStorageResourceItem item = null;
        AdobeAssetException exception = null;

        C8EnclosedClass() {
        }
    }

    public String getSyncGroupName(AdobeDCXComposite adobeDCXComposite) {
        return AdobeStorageDCXServiceMapping.getSyncGroupNameForComposite(adobeDCXComposite);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public String getSyncGroupNameForComposite(AdobeDCXComposite adobeDCXComposite) {
        return AdobeStorageDCXServiceMapping.getSyncGroupNameForComposite(adobeDCXComposite);
    }

    public AdobeNetworkHttpTaskHandle createComposite(final AdobeDCXComposite adobeDCXComposite, boolean z, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, Handler handler) {
        URI uri;
        final AdobeStorageResourceItem adobeStorageResourceItemResourceForComposite = AdobeStorageDCXServiceMapping.resourceForComposite(adobeDCXComposite);
        if (adobeStorageResourceItemResourceForComposite.href != null && !adobeStorageResourceItemResourceForComposite.href.toString().endsWith(URIUtil.SLASH)) {
            try {
                uri = new URI(adobeStorageResourceItemResourceForComposite.href.toString() + URIUtil.SLASH);
            } catch (URISyntaxException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
                uri = null;
            }
            adobeStorageResourceItemResourceForComposite.href = uri;
        }
        if (z) {
            adobeStorageResourceItemResourceForComposite.etag = null;
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.add("content");
        arrayList.add(X_ORDINAL);
        final AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItemResourceForComposite, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, z ? "If-Match" : null, true, arrayList);
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.38
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXCompositeRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCSDKException adobeCSDKExceptionCreateStorageError;
                URI uri2;
                AdobeAssetException assetErrorFromResponse;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 201) {
                    adobeCSDKExceptionCreateStorageError = null;
                } else if (statusCode == 409 || statusCode == 501) {
                    adobeCSDKExceptionCreateStorageError = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorCompositeAlreadyExists);
                } else if (statusCode == 404 && (AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor) == null || !((AdobeNetworkHttpTaskHandle) AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor)).isCancelled())) {
                    try {
                        uri2 = adobeStorageResourceItemResourceForComposite.href != null ? new URI(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(adobeStorageResourceItemResourceForComposite.href.toString())) : null;
                    } catch (URISyntaxException e3) {
                        AdobeLogger.log(Level.ERROR, "", "", e3);
                        uri2 = null;
                    }
                    if (uri2 == null) {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorBadRequest, null));
                        return;
                    }
                    AdobeNetworkHttpService serviceForSchemaId = AdobeStorageSession.this.getServiceForSchemaId("assets");
                    if (serviceForSchemaId == null) {
                        if (iAdobeDCXCompositeRequestCompletionHandler == null) {
                            AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                            return;
                        } else {
                            iAdobeDCXCompositeRequestCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified));
                            return;
                        }
                    }
                    AdobeNetworkHttpResponse responseForDataRequest = serviceForSchemaId.getResponseForDataRequest(AdobeStorageSession.this.requestFor(AdobeStorageResourceItem.resourceFromHref(uri2), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true), AdobeNetworkRequestPriority.NORMAL);
                    int statusCode2 = responseForDataRequest.getStatusCode();
                    if (statusCode2 == 200 || statusCode2 == 201 || (statusCode2 == 409 && (AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor) == null || !((AdobeNetworkHttpTaskHandle) AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor)).isCancelled()))) {
                        AdobeNetworkHttpResponse responseForDataRequest2 = serviceForSchemaId.getResponseForDataRequest(AdobeStorageSession.this.requestFor(adobeStorageResourceItemResourceForComposite, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true, arrayList), AdobeNetworkRequestPriority.NORMAL);
                        int statusCode3 = responseForDataRequest2.getStatusCode();
                        assetErrorFromResponse = (statusCode3 == 200 || statusCode3 == 201 || (statusCode3 == 409 && (AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor) == null || !((AdobeNetworkHttpTaskHandle) AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor)).isCancelled()))) ? null : AdobeStorageSession.getAssetErrorFromResponse(responseForDataRequest2);
                    } else {
                        assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(responseForDataRequest);
                    }
                    adobeCSDKExceptionCreateStorageError = assetErrorFromResponse;
                } else {
                    adobeCSDKExceptionCreateStorageError = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                if (AdobeStorageSession.requestMap != null && AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor) != null && ((AdobeNetworkHttpTaskHandle) AdobeStorageSession.requestMap.get(adobeNetworkHttpRequestRequestFor)).isCancelled()) {
                    adobeCSDKExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorCancelled, null);
                }
                if (adobeCSDKExceptionCreateStorageError == null) {
                    iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                } else {
                    iAdobeDCXCompositeRequestCompletionHandler.onError(adobeCSDKExceptionCreateStorageError);
                }
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean createComposite(AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C2EnclosingClassForOutput c2EnclosingClassForOutput = new C2EnclosingClassForOutput();
        createComposite(adobeDCXComposite, z, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.39
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c2EnclosingClassForOutput.compositeCreateError = adobeCSDKException;
                c2EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onCompletion(AdobeDCXComposite adobeDCXComposite2) {
                reentrantLock.lock();
                try {
                    c2EnclosingClassForOutput.createdComposite = adobeDCXComposite2;
                    c2EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c2EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c2EnclosingClassForOutput.compositeCreateError != null) {
            throw c2EnclosingClassForOutput.compositeCreateError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$2EnclosingClassForOutput, reason: invalid class name */
    class C2EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXComposite createdComposite = null;
        AdobeCSDKException compositeCreateError = null;

        C2EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle deleteComposite(final AdobeDCXComposite adobeDCXComposite, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, final Handler handler) {
        URI uri;
        AdobeStorageResourceItem adobeStorageResourceItemResourceForComposite = AdobeStorageDCXServiceMapping.resourceForComposite(adobeDCXComposite);
        if (adobeStorageResourceItemResourceForComposite.href != null && !adobeStorageResourceItemResourceForComposite.href.toString().endsWith(URIUtil.SLASH)) {
            try {
                uri = new URI(adobeStorageResourceItemResourceForComposite.href.toString() + URIUtil.SLASH);
            } catch (URISyntaxException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
                uri = null;
            }
            adobeStorageResourceItemResourceForComposite.href = uri;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItemResourceForComposite, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, "If-Match", false);
        try {
            try {
                adobeNetworkHttpRequestRequestFor.setUrl(new URI(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeNetworkHttpRequestRequestFor.getUrl().toString(), "?recursive=true")).toURL());
            } catch (MalformedURLException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeStorageSession.class.getSimpleName(), "Creation of URL failed", e3);
            }
        } catch (URISyntaxException e4) {
            AdobeLogger.log(Level.DEBUG, AdobeStorageSession.class.getSimpleName(), "Creation of URL failed", e4);
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItemResourceForComposite.getPath(), adobeStorageResourceItemResourceForComposite.getData(), new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.40
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(final AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.40.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                                    }
                                });
                                return;
                            } else {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                                return;
                            }
                        }
                        return;
                    }
                }
                if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.40.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                            }
                        });
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                final AdobeAssetException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode != 200 && statusCode != 204 && statusCode != 404) {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                if (assetErrorFromResponse == null) {
                    if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.40.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                                }
                            });
                            return;
                        } else {
                            iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                            return;
                        }
                    }
                    return;
                }
                if (iAdobeDCXCompositeRequestCompletionHandler != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.40.4
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeDCXCompositeRequestCompletionHandler.onError(assetErrorFromResponse);
                            }
                        });
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(assetErrorFromResponse);
                    }
                }
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean deleteComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C3EnclosingClassForOutput c3EnclosingClassForOutput = new C3EnclosingClassForOutput();
        deleteComposite(adobeDCXComposite, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.41
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c3EnclosingClassForOutput.compositeDeleteError = adobeCSDKException;
                c3EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onCompletion(AdobeDCXComposite adobeDCXComposite2) {
                reentrantLock.lock();
                c3EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!c3EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c3EnclosingClassForOutput.compositeDeleteError != null) {
            throw c3EnclosingClassForOutput.compositeDeleteError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$3EnclosingClassForOutput, reason: invalid class name */
    class C3EnclosingClassForOutput {
        boolean done = false;
        AdobeCSDKException compositeDeleteError = null;

        C3EnclosingClassForOutput() {
        }
    }

    public AdobeNetworkHttpTaskHandle leaveSharedComposite(AdobeDCXComposite adobeDCXComposite, IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, Handler handler) {
        if ($assertionsDisabled || adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            return deleteComposite(adobeDCXComposite, iAdobeDCXCompositeRequestCompletionHandler, handler);
        }
        throw new AssertionError("Incorrect composite collaboration type.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean leaveSharedComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        if ($assertionsDisabled || adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            return deleteComposite(adobeDCXComposite);
        }
        throw new AssertionError("Incorrect composite collaboration type.");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeStorageResourceItem resourceForManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) {
        return AdobeStorageDCXServiceMapping.resourceForManifest(adobeDCXManifest, adobeDCXComposite);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle updateManifest(final AdobeDCXManifest adobeDCXManifest, final AdobeDCXComposite adobeDCXComposite, boolean z, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, Handler handler) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = AdobeStorageDCXServiceMapping.resourceForManifest(adobeDCXManifest, adobeDCXComposite);
        adobeStorageResourceItemResourceForManifest.setData(adobeDCXManifest.getRemoteData().getBytes(Charsets.UTF_8));
        if (z) {
            adobeStorageResourceItemResourceForManifest.etag = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItemResourceForManifest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, (adobeStorageResourceItemResourceForManifest.etag != null || z) ? "If-Match" : null, true);
        IStorageResponseCallback iStorageResponseCallback = new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.42
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeDCXManifest copy;
                AdobeCSDKException assetErrorFromResponse;
                AdobeAssetException adobeAssetExceptionCreateStorageError = null;
                adobeDCXManifest = null;
                adobeDCXManifest = null;
                adobeDCXManifest = null;
                AdobeDCXManifest adobeDCXManifest2 = null;
                adobeAssetExceptionCreateStorageError = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 201 || statusCode == 204) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    String str = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                    if (str != null) {
                        try {
                            copy = adobeDCXManifest.getCopy();
                            copy.setEtag(str);
                            if (copy.getCompositeHref() == null) {
                                copy.setCompositeHref(adobeDCXComposite.getHref());
                            }
                        } catch (AdobeDCXException e2) {
                            AdobeLogger.log(Level.ERROR, "", "", e2);
                            return;
                        }
                    } else {
                        adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), statusCode, headers);
                        copy = null;
                    }
                    AdobeDCXManifest adobeDCXManifest3 = copy;
                    assetErrorFromResponse = adobeAssetExceptionCreateStorageError;
                    adobeDCXManifest2 = adobeDCXManifest3;
                } else if (statusCode == 409) {
                    assetErrorFromResponse = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorCompositeAlreadyExists);
                } else if (statusCode == 404) {
                    assetErrorFromResponse = (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() == null || AdobeNetworkReachabilityUtil.isOnline()) ? null : AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
                    if (assetErrorFromResponse == null) {
                        assetErrorFromResponse = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorUnknownComposite);
                    }
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXManifestRequestCompletionHandler.onCompletion(adobeDCXManifest2, assetErrorFromResponse);
            }
        };
        if (adobeStorageResourceItemResourceForManifest.getPath() != null && !new File(adobeStorageResourceItemResourceForManifest.getPath()).exists()) {
            final AdobeDCXException adobeDCXException = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, "File " + adobeStorageResourceItemResourceForManifest.getPath() + " does not exist", null, null);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.43
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeDCXException);
                    }
                });
                return null;
            }
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.44
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeDCXException);
                }
            }).start();
            return null;
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItemResourceForManifest.getPath(), adobeStorageResourceItemResourceForManifest.getData(), iStorageResponseCallback, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest updateManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C4EnclosingClassForOutput c4EnclosingClassForOutput = new C4EnclosingClassForOutput();
        updateManifest(adobeDCXManifest, adobeDCXComposite, z, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.45
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c4EnclosingClassForOutput.manifestUpdateError = adobeCSDKException;
                c4EnclosingClassForOutput.updatedManifest = adobeDCXManifest2;
                c4EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!c4EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c4EnclosingClassForOutput.manifestUpdateError != null) {
            throw c4EnclosingClassForOutput.manifestUpdateError;
        }
        return c4EnclosingClassForOutput.updatedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$4EnclosingClassForOutput, reason: invalid class name */
    class C4EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXManifest updatedManifest = null;
        AdobeCSDKException manifestUpdateError = null;

        C4EnclosingClassForOutput() {
        }
    }

    public AdobeNetworkHttpTaskHandle getManifest(AdobeDCXManifest adobeDCXManifest, final AdobeDCXComposite adobeDCXComposite, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, Handler handler) {
        if (adobeDCXManifest == null) {
            adobeDCXManifest = adobeDCXComposite.getManifest();
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = AdobeStorageDCXServiceMapping.resourceForManifest(adobeDCXManifest, adobeDCXComposite);
        return getResponseFor(requestFor(adobeStorageResourceItemResourceForManifest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, adobeStorageResourceItemResourceForManifest.etag != null ? "If-None-Match" : null, false), null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.46
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXManifestRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeDCXManifest adobeDCXManifest2;
                AdobeDCXManifest adobeDCXManifest3;
                AdobeDCXException adobeDCXException;
                AdobeCSDKException adobeCSDKExceptionCreateStorageError;
                AdobeCSDKException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode == 200) {
                        try {
                            adobeDCXManifest3 = new AdobeDCXManifest(AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()));
                            adobeDCXException = null;
                        } catch (AdobeDCXException e2) {
                            adobeDCXManifest3 = null;
                            adobeDCXException = e2;
                        }
                        if (adobeDCXManifest3 != null) {
                            Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                            String str = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                            String str2 = (headers == null || !headers.containsKey("x-latest-version")) ? null : headers.get("x-latest-version").get(0);
                            if (str != null && str2 != null) {
                                adobeDCXManifest3.setEtag(str);
                                adobeDCXManifest3.setCompositeHref(adobeDCXComposite.getHref());
                                adobeDCXManifest3.setCollaborationType(adobeDCXComposite.getCollaborationType());
                                adobeCSDKExceptionCreateStorageError = adobeDCXException;
                            } else {
                                AdobeAssetErrorCode adobeAssetErrorCode = AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse;
                                Object[] objArr = new Object[1];
                                objArr[0] = str == null ? "etag" : "x-latest-version";
                                adobeCSDKExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(adobeAssetErrorCode, String.format("Missing header field %s", objArr));
                            }
                        } else {
                            adobeCSDKExceptionCreateStorageError = adobeDCXException;
                        }
                        assetErrorFromResponse = adobeCSDKExceptionCreateStorageError;
                        adobeDCXManifest2 = adobeDCXManifest3;
                    } else {
                        adobeDCXManifest2 = null;
                    }
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    adobeDCXManifest2 = null;
                }
                iAdobeDCXManifestRequestCompletionHandler.onCompletion(adobeDCXManifest2, assetErrorFromResponse);
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C5EnclosingClassForOutput c5EnclosingClassForOutput = new C5EnclosingClassForOutput();
        getManifest(adobeDCXManifest, adobeDCXComposite, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.47
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c5EnclosingClassForOutput.manifestdownloadError = adobeCSDKException;
                    c5EnclosingClassForOutput.downloadedManifest = adobeDCXManifest2;
                    c5EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c5EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c5EnclosingClassForOutput.manifestdownloadError != null) {
            throw c5EnclosingClassForOutput.manifestdownloadError;
        }
        return c5EnclosingClassForOutput.downloadedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$5EnclosingClassForOutput, reason: invalid class name */
    class C5EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXManifest downloadedManifest = null;
        AdobeCSDKException manifestdownloadError = null;

        C5EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, String str, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C6EnclosingClassForOutput c6EnclosingClassForOutput = new C6EnclosingClassForOutput();
        getManifest(adobeDCXManifest, adobeDCXComposite, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.48
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c6EnclosingClassForOutput.manifestdownloadError = adobeCSDKException;
                    c6EnclosingClassForOutput.downloadedManifest = adobeDCXManifest2;
                    c6EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c6EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c6EnclosingClassForOutput.manifestdownloadError != null) {
            throw c6EnclosingClassForOutput.manifestdownloadError;
        }
        return c6EnclosingClassForOutput.downloadedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$6EnclosingClassForOutput, reason: invalid class name */
    class C6EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXManifest downloadedManifest = null;
        AdobeCSDKException manifestdownloadError = null;

        C6EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite, final IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, @Nullable Handler handler) {
        final AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = AdobeStorageDCXServiceMapping.resourceForManifest(adobeDCXComposite.getManifest(), adobeDCXComposite);
        return getResponseFor(requestFor(adobeStorageResourceItemResourceForManifest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD, null, false), null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.49
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXResourceRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXResourceRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    adobeStorageResourceItemResourceForManifest.etag = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                    if (headers != null && headers.containsKey("content-md5")) {
                        adobeStorageResourceItemResourceForManifest.setMd5(headers.get("content-md5").get(0));
                    } else {
                        adobeStorageResourceItemResourceForManifest.setMd5(null);
                    }
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXResourceRequestCompletionHandler.onCompletion(adobeStorageResourceItemResourceForManifest, assetErrorFromResponse);
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeStorageResourceItem getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C7EnclosingClassForOutput c7EnclosingClassForOutput = new C7EnclosingClassForOutput();
        getHeaderInfoForManifestOfComposite(adobeDCXComposite, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.50
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c7EnclosingClassForOutput.manifestHeaderError = adobeCSDKException;
                    c7EnclosingClassForOutput.resource = adobeStorageResourceItem;
                    c7EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c7EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c7EnclosingClassForOutput.manifestHeaderError != null) {
            throw c7EnclosingClassForOutput.manifestHeaderError;
        }
        return c7EnclosingClassForOutput.resource;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$7EnclosingClassForOutput, reason: invalid class name */
    class C7EnclosingClassForOutput {
        boolean done = false;
        AdobeStorageResourceItem resource = null;
        AdobeCSDKException manifestHeaderError = null;

        C7EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle uploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, boolean z, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        return uploadComponent(adobeDCXComponent, adobeDCXComposite, str, z, iAdobeDCXComponentRequestCompletionHandler, null, handler);
    }

    public AdobeNetworkHttpTaskHandle uploadComponent(final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, final String str, boolean z, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, final IAdobeProgressCallback iAdobeProgressCallback, Handler handler) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceForComponent = AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, str, false);
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItemResourceForComponent, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true);
        if (adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            Map<String, String> queryParams = adobeNetworkHttpRequestRequestFor.getQueryParams();
            if (adobeNetworkHttpRequestRequestFor.getQueryParams() == null) {
                queryParams = new HashMap<>();
            }
            queryParams.put(INTERMEDIATES, "false");
            adobeNetworkHttpRequestRequestFor.setQueryParams(queryParams);
        }
        if (!z) {
            adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
        }
        IStorageResponseCallback iStorageResponseCallback = new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.51
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                if (iAdobeProgressCallback != null) {
                    iAdobeProgressCallback.onProgress(d2);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeAssetException storageError = AdobeStorageSession.getStorageError(adobeNetworkException);
                if (storageError != null && storageError.getData() != null && storageError.getData().get("Response") != null) {
                    storageError = AdobeStorageSession.getAssetErrorFromResponse((AdobeNetworkHttpResponse) storageError.getData().get("Response"));
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, storageError);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException adobeAssetExceptionCreateStorageError;
                Long lValueOf;
                AdobeDCXMutableComponent adobeDCXMutableComponent;
                AdobeCSDKException assetErrorFromResponse;
                AdobeCSDKException adobeDCXException = null;
                adobeDCXMutableComponent = null;
                AdobeDCXMutableComponent adobeDCXMutableComponent2 = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 201 || statusCode == 204) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    String str2 = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                    String str3 = (headers == null || !headers.containsKey("x-latest-version")) ? null : headers.get("x-latest-version").get(0);
                    String str4 = (headers == null || !headers.containsKey("content-md5")) ? null : headers.get("content-md5").get(0);
                    try {
                        lValueOf = Long.valueOf(FileUtils.sizeOf(new File(str)));
                        adobeAssetExceptionCreateStorageError = null;
                    } catch (Exception e2) {
                        AdobeLogger.log(Level.ERROR, "", "", e2);
                        adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, "couldn't get file length");
                        lValueOf = null;
                    }
                    if (str2 == null) {
                        adobeDCXMutableComponent = null;
                        adobeDCXException = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing header field Etag");
                    } else if (str3 == null) {
                        adobeDCXMutableComponent = null;
                        adobeDCXException = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing header field x-latest-version");
                    } else if (str4 == null) {
                        adobeDCXMutableComponent = null;
                        adobeDCXException = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing header field content-md5");
                    } else if (lValueOf == null || adobeAssetExceptionCreateStorageError != null) {
                        adobeDCXMutableComponent = null;
                        adobeDCXException = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure);
                    } else {
                        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
                        mutableCopy.setEtag(str2);
                        mutableCopy.setMd5(str4);
                        mutableCopy.setVersion(str3);
                        mutableCopy.setLength(lValueOf.intValue());
                        adobeDCXMutableComponent = mutableCopy;
                    }
                    assetErrorFromResponse = adobeDCXException;
                    adobeDCXMutableComponent2 = adobeDCXMutableComponent;
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    AdobeAssetException adobeAssetException = (AdobeAssetException) assetErrorFromResponse;
                    if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, adobeAssetException.getDescription());
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXMutableComponent2, assetErrorFromResponse);
            }
        };
        if (adobeStorageResourceItemResourceForComponent.getPath() != null && !new File(adobeStorageResourceItemResourceForComponent.getPath()).exists()) {
            final AdobeDCXException adobeDCXException = new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, "File " + adobeStorageResourceItemResourceForComponent.getPath() + " does not exist", null, null);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.52
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeDCXException);
                    }
                });
            } else {
                new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.53
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeDCXException);
                    }
                }).start();
            }
            return null;
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItemResourceForComponent.getPath(), adobeStorageResourceItemResourceForComponent.getData(), iStorageResponseCallback, handler);
    }

    public AdobeDCXComponent uploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C8EnclosingClassForOutput c8EnclosingClassForOutput = new C8EnclosingClassForOutput();
        uploadComponent(adobeDCXComponent, adobeDCXComposite, str, z, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.54
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
            public void onCompletion(AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c8EnclosingClassForOutput.componentUploadError = adobeCSDKException;
                    c8EnclosingClassForOutput.uploadedComponent = adobeDCXComponent2;
                    c8EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c8EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c8EnclosingClassForOutput.componentUploadError != null) {
            throw c8EnclosingClassForOutput.componentUploadError;
        }
        return c8EnclosingClassForOutput.uploadedComponent;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$8EnclosingClassForOutput, reason: invalid class name */
    class C8EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXComponent uploadedComponent = null;
        AdobeCSDKException componentUploadError = null;

        C8EnclosingClassForOutput() {
        }
    }

    void handle202Response(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, int i, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler) {
        if (!$assertionsDisabled && adobeNetworkHttpResponse.getStatusCode() != 202) {
            throw new AssertionError("handle202Response called with a response whose status code is not 202.");
        }
        JSONObject jSONObjectJSONObjectWithData = adobeNetworkHttpResponse.getDataBytes() != null ? AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()) : null;
        String strOptString = jSONObjectJSONObjectWithData != null ? jSONObjectJSONObjectWithData.optString("href", null) : null;
        if ((strOptString == null ? AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "202 response is missing href in response body.") : null) != null) {
            AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = new AdobeNetworkHttpResponse();
            adobeNetworkHttpResponse2.setHasFileError(true);
            adobeNetworkHttpResponse2.setURL(adobeNetworkHttpResponse.getUrl());
            adobeNetworkHttpResponse2.setData(ByteBuffer.wrap(adobeNetworkHttpResponse.getDataBytes()));
            adobeNetworkHttpResponse2.setHeaders(adobeNetworkHttpResponse.getHeaders());
            adobeNetworkHttpResponse2.setStatusCode(0);
            iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse2);
            return;
        }
        String str = adobeNetworkHttpResponse.getHeaders().get(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter).get(0);
        if (str != null) {
            Integer.parseInt(str);
        }
        pollForAsyncResponseFrom(strOptString, adobeNetworkHttpTaskHandle, iAdobeNetworkCompletionHandler);
    }

    void pollForAsyncResponseFrom(final String str, final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler) {
        if (!$assertionsDisabled && adobeNetworkHttpTaskHandle == null) {
            throw new AssertionError("pollForAsyncResponseFrom request was called with a nil request");
        }
        final AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(AdobeStorageResourceItem.resourceFromHref(str), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false);
        getServiceForURI(str).getResponseForDataRequest(adobeNetworkHttpRequestRequestFor, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.55
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 202) {
                    adobeNetworkHttpResponse.getHeaders().get(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter).get(0);
                    AdobeStorageSession.this.pollForAsyncResponseFrom(str, adobeNetworkHttpTaskHandle, iAdobeNetworkCompletionHandler);
                    return;
                }
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    AdobeNetworkHttpResponse asyncResponse = AdobeStorageSession.this.parseAsyncResponse(adobeNetworkHttpResponse, adobeNetworkHttpRequestRequestFor);
                    if (asyncResponse != null) {
                        iAdobeNetworkCompletionHandler.onSuccess(asyncResponse);
                        return;
                    }
                    return;
                }
                AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = new AdobeNetworkHttpResponse();
                adobeNetworkHttpResponse2.setHasFileError(true);
                adobeNetworkHttpResponse2.setURL(adobeNetworkHttpResponse.getUrl());
                adobeNetworkHttpResponse2.setData(ByteBuffer.wrap(adobeNetworkHttpResponse.getDataBytes()));
                adobeNetworkHttpResponse2.setHeaders(adobeNetworkHttpResponse.getHeaders());
                adobeNetworkHttpResponse2.setStatusCode(adobeNetworkHttpResponse.getStatusCode());
                iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
            }
        }, null);
    }

    AdobeNetworkHttpResponse parseAsyncResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = new AdobeNetworkHttpResponse();
        adobeNetworkHttpResponse2.setURL(adobeNetworkHttpRequest.getUrl());
        String dataString = adobeNetworkHttpResponse.getDataString();
        int iIndexOf = dataString.indexOf("\r\n\r\n");
        if (iIndexOf != -1) {
            int length = iIndexOf + "\r\n\r\n".length();
            if (length < dataString.length()) {
                adobeNetworkHttpResponse2.setData(ByteBuffer.wrap(dataString.substring(length).getBytes(Charsets.UTF_8)));
            }
            dataString = dataString.substring(0, length);
        }
        int iIndexOf2 = dataString.indexOf("\r\n");
        if (iIndexOf2 == -1) {
            return null;
        }
        String[] strArrSplit = dataString.substring(0, iIndexOf2).split(" ");
        if (strArrSplit.length < 2) {
            return null;
        }
        adobeNetworkHttpResponse2.setStatusCode(Integer.parseInt(strArrSplit[1]));
        int iIndexOf3 = dataString.indexOf("\r\n\r\n");
        if (iIndexOf3 == -1) {
            iIndexOf3 = dataString.length();
        }
        int i = iIndexOf2 + 2;
        if (iIndexOf3 > i) {
            adobeNetworkHttpResponse2.setHeaders(AdobeNetworkUtils.parseAndDecodeHTTPHeadersFromString(dataString.substring(i)));
        }
        return adobeNetworkHttpResponse2;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle uploadServerAssetWithHref(String str, final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, final boolean z, final Handler handler, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler) {
        String str2;
        URL url;
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("Source href should not be null");
        }
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("The compoent to upload should not be null");
        }
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("composite should not be null");
        }
        final AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, null, false), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true);
        String query = adobeNetworkHttpRequestRequestFor.getUrl().getQuery();
        if (query != null) {
            str2 = query + "&invocation_mode=sync,async";
        } else {
            str2 = "invocation_mode=sync,async";
        }
        String str3 = adobeNetworkHttpRequestRequestFor.getUrl().toString().split("\\?")[0] + "?" + str2;
        URL url2 = adobeNetworkHttpRequestRequestFor.getUrl();
        try {
            url = new URL(str3);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            url = url2;
        }
        adobeNetworkHttpRequestRequestFor.setUrl(url);
        if (adobeDCXComposite.getCollaborationType() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            Map<String, String> queryParams = adobeNetworkHttpRequestRequestFor.getQueryParams();
            if (adobeNetworkHttpRequestRequestFor.getQueryParams() == null) {
                queryParams = new HashMap<>();
            }
            queryParams.put(INTERMEDIATES, "false");
            adobeNetworkHttpRequestRequestFor.setQueryParams(queryParams);
        }
        adobeNetworkHttpRequestRequestFor.setRequestProperty(HttpHeaders.LINK, String.format("<%s>;rel=source", str));
        final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.56
            /* JADX WARN: Removed duplicated region for block: B:31:0x00a4  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00de  */
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onSuccess(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r10) {
                /*
                    Method dump skipped, instruction units count: 310
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.AnonymousClass56.onSuccess(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse):void");
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }
        };
        final C1internalClassForPreviousRequest c1internalClassForPreviousRequest = new C1internalClassForPreviousRequest();
        c1internalClassForPreviousRequest._prevRequest = new C1doCopy(adobeNetworkHttpRequestRequestFor, handler, this).perform(!z, null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.57
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 404 || statusCode == 409 || statusCode == 412) {
                    AdobeStorageSession.this.new C1doCopy(adobeNetworkHttpRequestRequestFor, handler, this).perform(z, c1internalClassForPreviousRequest._prevRequest, iAdobeNetworkCompletionHandler);
                } else {
                    iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
            }
        });
        return c1internalClassForPreviousRequest._prevRequest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$1internalClassForPreviousRequest, reason: invalid class name */
    class C1internalClassForPreviousRequest {
        AdobeNetworkHttpTaskHandle _prevRequest;

        C1internalClassForPreviousRequest() {
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$1doCopy, reason: invalid class name */
    class C1doCopy implements IPerformServerToServerCopyAction {
        final /* synthetic */ Handler val$callBackRequiredForHandler;
        final /* synthetic */ AdobeNetworkHttpRequest val$request;
        final /* synthetic */ AdobeStorageSession val$self;

        C1doCopy(AdobeNetworkHttpRequest adobeNetworkHttpRequest, Handler handler, AdobeStorageSession adobeStorageSession) {
            this.val$request = adobeNetworkHttpRequest;
            this.val$callBackRequiredForHandler = handler;
            this.val$self = adobeStorageSession;
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IPerformServerToServerCopyAction
        public AdobeNetworkHttpTaskHandle perform(boolean z, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler) {
            if (z) {
                this.val$request.setRequestProperty("If-Match", "*");
            }
            final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler2 = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.1doCopy.1
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse);
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                }
            };
            AdobeNetworkHttpService serviceForSchemaId = AdobeStorageSession.this.getServiceForSchemaId("assets");
            if (serviceForSchemaId == null) {
                if (iAdobeNetworkCompletionHandler == null) {
                    AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "Adobe cloud not specified.");
                } else {
                    final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
                    if (this.val$callBackRequiredForHandler != null) {
                        this.val$callBackRequiredForHandler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.1doCopy.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                            }
                        });
                    } else {
                        iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                    }
                }
                return null;
            }
            C1internalClassForPreviousRequest c1internalClassForPreviousRequest = AdobeStorageSession.this.new C1internalClassForPreviousRequest();
            c1internalClassForPreviousRequest._prevRequest = serviceForSchemaId.getResponseForDataRequest(this.val$request, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.1doCopy.3
                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    if (adobeNetworkHttpResponse.getStatusCode() == 202) {
                        new AdobeStorageAsyncResponseHandler(10L, C1doCopy.this.val$self, new IAdobeStorageAsyncResponseHandlerCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.1doCopy.3.1
                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                iAdobeNetworkCompletionHandler2.onSuccess(AdobeStorageSession.this.parseAsyncResponse(adobeNetworkHttpResponse2, C1doCopy.this.val$request));
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onError(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                                iAdobeNetworkCompletionHandler2.onSuccess(AdobeStorageSession.this.parseAsyncResponse(adobeNetworkHttpResponse2, C1doCopy.this.val$request));
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageAsyncResponseHandlerCallback
                            public void onError(AdobeNetworkException adobeNetworkException2) {
                                iAdobeNetworkCompletionHandler2.onError(adobeNetworkException2);
                            }
                        }).startMonitoringServiceEndPoint(adobeNetworkHttpResponse);
                    } else {
                        iAdobeNetworkCompletionHandler2.onSuccess(adobeNetworkHttpResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException2) {
                    iAdobeNetworkCompletionHandler2.onError(adobeNetworkException2);
                }
            }, this.val$callBackRequiredForHandler);
            return c1internalClassForPreviousRequest._prevRequest;
        }
    }

    public AdobeDCXComponent uploadServerAssetWithHref(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C9EnclosingClassForOutput c9EnclosingClassForOutput = new C9EnclosingClassForOutput();
        uploadServerAssetWithHref(str, adobeDCXComponent, adobeDCXComposite, z, null, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.58
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
            public void onCompletion(AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c9EnclosingClassForOutput.componentUploadError = adobeCSDKException;
                    c9EnclosingClassForOutput.uploadedComponent = adobeDCXComponent2;
                    c9EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        while (!c9EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c9EnclosingClassForOutput.componentUploadError != null) {
            throw c9EnclosingClassForOutput.componentUploadError;
        }
        return c9EnclosingClassForOutput.uploadedComponent;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$9EnclosingClassForOutput, reason: invalid class name */
    class C9EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXComponent uploadedComponent = null;
        AdobeCSDKException componentUploadError = null;

        C9EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle downloadComponent(final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceForComponent = AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, str, true);
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceItemResourceForComponent, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("Accept-Encoding", "");
        return getResponseFor(adobeNetworkHttpRequestRequestFor, adobeStorageResourceItemResourceForComponent.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.59
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist) {
                    iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, adobeNetworkException.getDescription()));
                    return;
                }
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCSDKException assetErrorFromResponse = null;
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                    String str2 = (headers == null || !headers.containsKey("etag")) ? null : headers.get("etag").get(0);
                    int bytesReceived = adobeNetworkHttpResponse.getBytesReceived();
                    if (str2 == null) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing header field Etag");
                    } else if (adobeDCXComponent.getLength() == 0 && bytesReceived != adobeDCXComponent.getLength()) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, String.format("Downloaded components has a length of %d. Expected: %d", Integer.valueOf(bytesReceived), Long.valueOf(adobeDCXComponent.getLength())));
                    }
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    AdobeAssetException adobeAssetException = (AdobeAssetException) assetErrorFromResponse;
                    if (adobeNetworkHttpResponse.hasFileError()) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, adobeAssetException.getDescription());
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, assetErrorFromResponse);
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle downloadFromHref(String str, final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str2, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(str);
        adobeStorageResourceItemResourceFromHref.setPath(str2);
        return getResponseFor(requestFor(adobeStorageResourceItemResourceFromHref, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false), adobeStorageResourceItemResourceFromHref.getPath(), null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.60
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCSDKException assetErrorFromResponse;
                AdobeDCXMutableComponent adobeDCXMutableComponent = null;
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    long bytesReceived = adobeNetworkHttpResponse.getBytesReceived();
                    AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
                    mutableCopy.setLength(bytesReceived);
                    assetErrorFromResponse = null;
                    adobeDCXMutableComponent = mutableCopy;
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    if (((AdobeAssetException) assetErrorFromResponse).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorFileWriteFailure) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, "write failure");
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXMutableComponent, assetErrorFromResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    public boolean downloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C10EnclosingClassForOutput c10EnclosingClassForOutput = new C10EnclosingClassForOutput();
        downloadComponent(adobeDCXComponent, adobeDCXComposite, str, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.61
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
            public void onCompletion(AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c10EnclosingClassForOutput.componentDownloadError = adobeCSDKException;
                    c10EnclosingClassForOutput.downloadedComponent = adobeDCXComponent2;
                    c10EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c10EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c10EnclosingClassForOutput.componentDownloadError != null) {
            throw c10EnclosingClassForOutput.componentDownloadError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$10EnclosingClassForOutput, reason: invalid class name */
    class C10EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXComponent downloadedComponent = null;
        AdobeCSDKException componentDownloadError = null;

        C10EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle deleteComponent(final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, null, false), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, null, false);
        adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.62
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        return;
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode != 200 && statusCode != 204 && statusCode != 404) {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, assetErrorFromResponse);
            }
        }, handler);
    }

    public boolean deleteComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C11EnclosingClassForOutput c11EnclosingClassForOutput = new C11EnclosingClassForOutput();
        deleteComponent(adobeDCXComponent, adobeDCXComposite, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.63
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
            public void onCompletion(AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c11EnclosingClassForOutput.componentDeleteError = adobeCSDKException;
                    c11EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c11EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c11EnclosingClassForOutput.componentDeleteError != null) {
            throw c11EnclosingClassForOutput.componentDeleteError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$11EnclosingClassForOutput, reason: invalid class name */
    class C11EnclosingClassForOutput {
        boolean done = false;
        AdobeCSDKException componentDeleteError = null;

        C11EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getCollectionOfSyncGroups() {
        return AdobeStorageResourceCollection.collectionFromHref(URI.create("assets/"));
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getCollectionForSyncGroup(String str) {
        return AdobeStorageResourceCollection.collectionFromHref(URI.create(getHrefForSyncGroup(str)));
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public String getHrefForSyncGroup(String str) {
        if (str == null) {
            return null;
        }
        return "assets/" + str + URIUtil.SLASH;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeNetworkHttpTaskHandle getSyncGroups(AdobeStorageResourceCollection adobeStorageResourceCollection, final AdobeStoragePagingMode adobeStoragePagingMode, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        final AdobeStorageResourceCollection collectionOfSyncGroups = adobeStorageResourceCollection == null ? getCollectionOfSyncGroups() : adobeStorageResourceCollection;
        if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage) {
            collectionOfSyncGroups.resetPageIndex();
        } else {
            if (!$assertionsDisabled && adobeStoragePagingMode != AdobeStoragePagingMode.AdobeStorageNextPageAppend && adobeStoragePagingMode != AdobeStoragePagingMode.AdobeStorageNextPageReplace) {
                throw new AssertionError("Unexpected paging mode");
            }
            if (!$assertionsDisabled && collectionOfSyncGroups.isComplete()) {
                throw new AssertionError("Specified paging mode should only be used with an incomplete collection that was populated by a previous request.");
            }
            collectionOfSyncGroups.setStartIndex(collectionOfSyncGroups.getNextStartIndex());
        }
        return getResponseFor(requestFor(collectionOfSyncGroups, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, collectionOfSyncGroups.etag != null && collectionOfSyncGroups.getChildren() != null && adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage ? "If-None-Match" : null, false, null), null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.64
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r7) {
                /*
                    r6 = this;
                    r4 = 304(0x130, float:4.26E-43)
                    r2 = 0
                    r1 = 0
                    int r0 = r7.getStatusCode()
                    r3 = 200(0xc8, float:2.8E-43)
                    if (r0 == r3) goto Le
                    if (r0 != r4) goto L65
                Le:
                    if (r0 == r4) goto L70
                    com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection r3 = r3     // Catch: com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException -> L58
                    java.lang.String r4 = r7.getDataString()     // Catch: com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException -> L58
                    com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode r0 = r4     // Catch: com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException -> L58
                    com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode r5 = com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode.AdobeStorageNextPageAppend     // Catch: com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException -> L58
                    if (r0 != r5) goto L56
                    r0 = 1
                L1d:
                    r3.updateFromData(r4, r0)     // Catch: com.adobe.creativesdk.foundation.internal.storage.model.util.ParsingDataException -> L58
                L20:
                    java.util.Map r0 = r7.getHeaders()
                    if (r0 == 0) goto L70
                    java.util.Map r0 = r7.getHeaders()
                    java.lang.String r3 = "x-children-next-start"
                    boolean r0 = r0.containsKey(r3)
                    if (r0 == 0) goto L70
                    com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection r3 = r3
                    java.util.Map r0 = r7.getHeaders()
                    java.lang.String r4 = "x-children-next-start"
                    java.lang.Object r0 = r0.get(r4)
                    java.util.List r0 = (java.util.List) r0
                    java.lang.Object r0 = r0.get(r2)
                    java.lang.String r0 = (java.lang.String) r0
                    r3.setNextStartIndex(r0)
                    r0 = r1
                L4c:
                    if (r0 != 0) goto L6a
                    com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler r0 = r2
                    com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection r1 = r3
                    r0.onComplete(r1)
                L55:
                    return
                L56:
                    r0 = r2
                    goto L1d
                L58:
                    r0 = move-exception
                    com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR
                    java.lang.String r4 = ""
                    java.lang.String r5 = ""
                    com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r5, r0)
                    goto L20
                L65:
                    com.adobe.creativesdk.foundation.storage.AdobeAssetException r0 = com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.getAssetErrorFromResponse(r7)
                    goto L4c
                L6a:
                    com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler r1 = r2
                    r1.onError(r0)
                    goto L55
                L70:
                    r0 = r1
                    goto L4c
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.AnonymousClass64.onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse):void");
            }
        }, handler);
    }

    public AdobeStorageResourceCollection getSyncGroups(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C12EnclosingClassForOutput c12EnclosingClassForOutput = new C12EnclosingClassForOutput();
        getSyncGroups(adobeStorageResourceCollection, adobeStoragePagingMode, new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.65
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                try {
                    c12EnclosingClassForOutput.exception = adobeAssetException;
                    c12EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection2) {
                reentrantLock.lock();
                try {
                    c12EnclosingClassForOutput.groups = adobeStorageResourceCollection2;
                    c12EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c12EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c12EnclosingClassForOutput.exception != null) {
            throw c12EnclosingClassForOutput.exception;
        }
        return c12EnclosingClassForOutput.groups;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$12EnclosingClassForOutput, reason: invalid class name */
    class C12EnclosingClassForOutput {
        boolean done = false;
        AdobeStorageResourceCollection groups = null;
        AdobeCSDKException exception = null;

        C12EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeNetworkHttpTaskHandle getAssetsInSyncGroup(final AdobeStorageResourceCollection adobeStorageResourceCollection, final AdobeStoragePagingMode adobeStoragePagingMode, final IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        if (adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage) {
            adobeStorageResourceCollection.resetPageIndex();
        } else {
            if (!$assertionsDisabled && adobeStoragePagingMode != AdobeStoragePagingMode.AdobeStorageNextPageReplace && adobeStoragePagingMode != AdobeStoragePagingMode.AdobeStorageNextPageAppend) {
                throw new AssertionError("Unexpected paging mode");
            }
            if (!$assertionsDisabled && adobeStorageResourceCollection.isComplete()) {
                throw new AssertionError("Specified paging mode should only be used with an incomplete collection that was populated by a previous request.");
            }
            adobeStorageResourceCollection.setStartIndex(adobeStorageResourceCollection.getNextStartIndex());
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = requestFor(adobeStorageResourceCollection, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, adobeStorageResourceCollection.etag != null && adobeStorageResourceCollection.getChildren() != null && adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageFirstPage ? "If-None-Match" : null, false, null);
        if (adobeNetworkHttpRequestRequestFor == null) {
            iAdobeStorageCollectionRequestCompletionHandler.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorServiceDisconnected));
            return null;
        }
        return getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.66
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeStorageCollectionRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException assetErrorFromResponse;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode != 304) {
                        try {
                            adobeStorageResourceCollection.updateFromData(adobeNetworkHttpResponse.getDataString(), adobeStoragePagingMode == AdobeStoragePagingMode.AdobeStorageNextPageAppend);
                        } catch (ParsingDataException e2) {
                            AdobeLogger.log(Level.ERROR, "", "", e2);
                        }
                        if (adobeNetworkHttpResponse.getHeaders() != null && adobeNetworkHttpResponse.getHeaders().containsKey(AdobeStorageSession.X_CHILDREN_NEXT_START)) {
                            adobeStorageResourceCollection.setNextStartIndex(adobeNetworkHttpResponse.getHeaders().get(AdobeStorageSession.X_CHILDREN_NEXT_START).get(0));
                        } else {
                            adobeStorageResourceCollection.setNextStartIndex(null);
                        }
                        assetErrorFromResponse = null;
                    } else {
                        assetErrorFromResponse = null;
                    }
                } else {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                if (assetErrorFromResponse == null) {
                    iAdobeStorageCollectionRequestCompletionHandler.onComplete(adobeStorageResourceCollection);
                } else {
                    iAdobeStorageCollectionRequestCompletionHandler.onError(assetErrorFromResponse);
                }
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getAssetsInSyncGroup(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C13EnclosingClassForOutput c13EnclosingClassForOutput = new C13EnclosingClassForOutput();
        getAssetsInSyncGroup(adobeStorageResourceCollection, adobeStoragePagingMode, new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.67
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                reentrantLock.lock();
                try {
                    c13EnclosingClassForOutput.exception = adobeAssetException;
                    c13EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection2) {
                reentrantLock.lock();
                try {
                    c13EnclosingClassForOutput.groups = adobeStorageResourceCollection2;
                    c13EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c13EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c13EnclosingClassForOutput.exception != null) {
            throw c13EnclosingClassForOutput.exception;
        }
        return c13EnclosingClassForOutput.groups;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$13EnclosingClassForOutput, reason: invalid class name */
    class C13EnclosingClassForOutput {
        boolean done = false;
        AdobeStorageResourceCollection groups = null;
        AdobeCSDKException exception = null;

        C13EnclosingClassForOutput() {
        }
    }

    public boolean updateOrdinalsOfAssets(List<AdobeStorageResourceItem> list) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C14EnclosingClassForOutput c14EnclosingClassForOutput = new C14EnclosingClassForOutput();
        updateOrdinalsOfAssets(list, new IAdobeDCXMultiAssetCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.68
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXMultiAssetCompletionHandler
            public void onCompletion(List<AdobeStorageResourceItem> list2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c14EnclosingClassForOutput.exception = adobeCSDKException;
                c14EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!c14EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c14EnclosingClassForOutput.exception != null) {
            throw c14EnclosingClassForOutput.exception;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$14EnclosingClassForOutput, reason: invalid class name */
    class C14EnclosingClassForOutput {
        boolean done = false;
        AdobeCSDKException exception = null;

        C14EnclosingClassForOutput() {
        }
    }

    public AdobeNetworkHttpTaskHandle updateOrdinalsOfAssets(List<AdobeStorageResourceItem> list, final IAdobeDCXMultiAssetCompletionHandler iAdobeDCXMultiAssetCompletionHandler, Handler handler) {
        final AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle = new AdobeNetworkCompositeHttpTaskHandle();
        adobeNetworkCompositeHttpTaskHandle.setTotalUnitCount(list.size());
        adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(0L);
        final ArrayList arrayList = new ArrayList();
        final C1Output c1Output = new C1Output();
        for (AdobeStorageResourceItem adobeStorageResourceItem : list) {
            synchronized (adobeNetworkCompositeHttpTaskHandle) {
                adobeNetworkCompositeHttpTaskHandle.addComponentRequest(updateOrdinalOfAsset(adobeStorageResourceItem, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.69
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
                    public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem2, AdobeCSDKException adobeCSDKException) {
                        synchronized (adobeNetworkCompositeHttpTaskHandle) {
                            adobeNetworkCompositeHttpTaskHandle.setCompletedUnitCount(adobeNetworkCompositeHttpTaskHandle.getCompletedUnitCount() + 1 < adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount() ? adobeNetworkCompositeHttpTaskHandle.getCompletedUnitCount() + 1 : adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount());
                            if (!adobeNetworkCompositeHttpTaskHandle.isCancelled()) {
                                if (adobeCSDKException != null) {
                                    adobeNetworkCompositeHttpTaskHandle.cancel();
                                    c1Output.respondedToCancelOrError = "1";
                                    iAdobeDCXMultiAssetCompletionHandler.onCompletion(null, adobeCSDKException);
                                } else {
                                    arrayList.add(adobeStorageResourceItem2);
                                    if (adobeNetworkCompositeHttpTaskHandle.getTotalUnitCount() == adobeNetworkCompositeHttpTaskHandle.getCompletedUnitCount()) {
                                        iAdobeDCXMultiAssetCompletionHandler.onCompletion(arrayList, null);
                                    }
                                }
                            } else if ("0".equals(c1Output.respondedToCancelOrError)) {
                                c1Output.respondedToCancelOrError = "1";
                                iAdobeDCXMultiAssetCompletionHandler.onCompletion(null, AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorCancelled, null));
                            }
                        }
                    }
                }, handler), 0L);
            }
        }
        adobeNetworkCompositeHttpTaskHandle.allComponentsHaveBeenAdded();
        return adobeNetworkCompositeHttpTaskHandle;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$1Output, reason: invalid class name */
    class C1Output {
        String respondedToCancelOrError = "0";

        C1Output() {
        }
    }

    public boolean updateOrdinalOfAsset(AdobeStorageResourceItem adobeStorageResourceItem) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C15EnclosingClassForOutput c15EnclosingClassForOutput = new C15EnclosingClassForOutput();
        updateOrdinalOfAsset(adobeStorageResourceItem, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.70
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c15EnclosingClassForOutput.exception = adobeCSDKException;
                c15EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, null);
        reentrantLock.lock();
        while (!c15EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "", "", e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c15EnclosingClassForOutput.exception != null) {
            throw c15EnclosingClassForOutput.exception;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession$15EnclosingClassForOutput, reason: invalid class name */
    class C15EnclosingClassForOutput {
        boolean done = false;
        AdobeCSDKException exception = null;

        C15EnclosingClassForOutput() {
        }
    }

    public AdobeNetworkHttpTaskHandle updateOrdinalOfAsset(final AdobeStorageResourceItem adobeStorageResourceItem, final IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, Handler handler) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(X_ORDINAL);
        return getResponseFor(requestFor(adobeStorageResourceItem, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, false, arrayList), null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.71
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDCXResourceRequestCompletionHandler.onCompletion(null, AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException assetErrorFromResponse = null;
                if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                    assetErrorFromResponse = AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXResourceRequestCompletionHandler.onCompletion(adobeStorageResourceItem, assetErrorFromResponse);
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public IAdobeDCXComponentManagerProtocol getComponentManager() {
        return this.componentManager;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public void setComponentManager(IAdobeDCXComponentManagerProtocol iAdobeDCXComponentManagerProtocol) {
        this.componentManager = iAdobeDCXComponentManagerProtocol;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public void setComponentManagerHandler(Handler handler) {
        this.componentManagerHandler = handler;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public Handler getComponentManagerHandler() {
        return this.componentManagerHandler;
    }

    public AdobeNetworkHttpTaskHandle resolveResourceById(String str, final IAdobeGenericCompletionCallback<AdobeAssetFile> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        Handler handler;
        AdobeNetworkHttpService serviceForURI = getServiceForURI(URIUtil.SLASH);
        if (serviceForURI == null) {
            return null;
        }
        try {
            handler = new Handler();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            handler = null;
        }
        try {
            URI uri = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo("resolve?id=" + str, serviceForURI.baseURL().toString()));
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(uri.toURL());
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD);
            return getResponseFor(adobeNetworkHttpRequest, null, null, new IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.72
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericErrorCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    String str2;
                    String str3;
                    try {
                        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                        AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(new URI(URIUtil.SLASH));
                        if (headers != null && headers.get("content-type") != null) {
                            str2 = headers.get("content-type").get(0);
                        } else {
                            str2 = null;
                        }
                        if (headers != null && str2 != null && !"application/vnd.adobe.directory+json".equals(str2) && (str3 = headers.get("content-location").get(0)) != null) {
                            AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(str3);
                            if (headers.containsKey(AdobeStorageSession.CONTENT_LENGTH)) {
                                adobeStorageResourceItemResourceFromHref.setLength(Integer.valueOf(Integer.parseInt(headers.get(AdobeStorageSession.CONTENT_LENGTH).get(0))));
                            }
                            if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                                adobeStorageResourceItemResourceFromHref.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                            }
                            if (headers.containsKey("etag")) {
                                adobeStorageResourceItemResourceFromHref.etag = headers.get("etag").get(0);
                            }
                            adobeStorageResourceItemResourceFromHref.type = str2;
                            AdobeAssetFileInternal adobeAssetFileInternal = new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeStorageResourceCollectionCollectionFromHref);
                            if (headers.containsKey("date")) {
                                adobeAssetFileInternal.setModifiedDate(new Date(headers.get("date").get(0)));
                                adobeAssetFileInternal.setCreationDate(new Date(headers.get("date").get(0)));
                            }
                            iAdobeGenericCompletionCallback.onCompletion(adobeAssetFileInternal);
                            return;
                        }
                    } catch (URISyntaxException e3) {
                        AdobeLogger.log(Level.DEBUG, AdobeStorageSession.class.getSimpleName(), "Resolve failed due to syntax exception.", e3);
                    }
                    iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure));
                }
            }, handler);
        } catch (MalformedURLException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeStorageSession.class.getSimpleName(), "Resolve failed due to uri construction-MalformedURL.", e3);
            return null;
        } catch (URISyntaxException e4) {
            AdobeLogger.log(Level.DEBUG, AdobeStorageSession.class.getSimpleName(), "Resolve failed due to uri construction failed.", e4);
            return null;
        }
    }

    private String constructMetaDataLink(URI uri) {
        return String.format("%s/:metadata", uri);
    }

    private String constructRenditionLink(URI uri, AdobeRequestParameters adobeRequestParameters) {
        return uri + "/:rendition" + adobeRequestParameters.constructParameterString();
    }
}
