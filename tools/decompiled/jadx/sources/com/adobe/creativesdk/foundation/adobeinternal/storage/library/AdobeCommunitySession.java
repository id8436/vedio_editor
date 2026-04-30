package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.os.Handler;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.cloudupload.IAdobeCSDKCloudUploadService;
import com.adobe.creativesdk.foundation.adobeinternal.storage.cloudupload.UploadComponentResponse;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeCommunityException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeCommunityPublicationRecord;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeCommunitySessionProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublicationRecordCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublicationRecordDataCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishHrefCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobePublicationRecordProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityPublicationRecordConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityRequestParams;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.utils.AdobeCommunityUtils;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeCommunityAssetImageDimension;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.Charsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunitySession extends AdobeCloudServiceSession implements IAdobeCommunitySessionProtocol {
    static final String SERVICE_ID = "community-platform";
    static final String SERVICE_NAME = "community";
    private static String TAG = AdobeCommunitySession.class.getSimpleName();
    private static Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap = new HashMap();
    private int directUploadLimitInBytes;
    private IAdobeCSDKCloudUploadService uploadService;

    protected static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        AdobeCloudEndpoint adobeCloudEndpoint;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://cc-api-cp.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
                str = "https://cc-api-cp-stage.adobe.io ";
                break;
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://cc-api-cp-labs.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, TAG, "An undefined authentication endpoint has been specified.");
                return null;
        }
        try {
            adobeCloudEndpoint = new AdobeCloudEndpoint(SERVICE_ID, str != null ? new URL(str) : null, AdobeCloudServiceType.AdobeCloudServiceTypeCommunity);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "error in constructing url endpoint", e2);
            adobeCloudEndpoint = null;
        }
        return adobeCloudEndpoint;
    }

    public void cancelRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        if (requestMap.containsKey(adobeNetworkHttpRequest)) {
            requestMap.get(adobeNetworkHttpRequest).cancel();
            requestMap.remove(adobeNetworkHttpRequest);
        }
    }

    public AdobeCommunitySession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        this.directUploadLimitInBytes = -1;
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobeCommunityServiceDisconnectionNotification);
        setupOngoingConnectionTimer(15L, false);
    }

    AdobeCommunitySession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
        this.directUploadLimitInBytes = -1;
    }

    public static AdobeCommunitySession initWithHTTPService(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        return new AdobeCommunitySession(adobeNetworkHttpService, str);
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobeCommunitySession(adobeCloudEndpoint);
    }

    public Future<?> getStatus(final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<String> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        try {
            adobeNetworkHttpRequest.setUrl(new URL(getService().getBaseURL() + AdobeCommunityConstants.AdobeCommunityRequestV2Href));
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.DEBUG, TAG, e2.toString());
        }
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        return getService().getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                iAdobeGenericCompletionCallback.onCompletion(adobeNetworkHttpResponse.getDataString());
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get(AdobeNetworkException.getKeyForResponse());
                iAdobeGenericErrorCallback.onError(adobeNetworkHttpResponse != null ? adobeNetworkHttpResponse.getDataString() : "");
            }
        }, new Handler()).getFuture();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueError(final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback, final AdobeCommunityErrorCode adobeCommunityErrorCode) {
        new Handler().post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.2
            @Override // java.lang.Runnable
            public void run() {
                iAdobeGenericErrorCallback.onError(adobeCommunityErrorCode);
            }
        });
    }

    public AdobeNetworkHttpTaskHandle unpublishAsset(String str, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        if (str == null) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
            return null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        try {
            adobeNetworkHttpRequest.setUrl(new URL(str));
        } catch (MalformedURLException e2) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
        }
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE);
        return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.3
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                    AdobeCommunitySession.this.queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                } else {
                    iAdobeGenericCompletionCallback.onCompletion(Boolean.TRUE);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCommunitySession.this.queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, new Handler());
    }

    public AdobeNetworkHttpTaskHandle updateMetadataForAsset(String str, JSONObject jSONObject, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        byte[] bytes;
        if (str == null) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
            return null;
        }
        if (jSONObject == null) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorMissingJSONData);
            return null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        try {
            adobeNetworkHttpRequest.setUrl(new URL(str));
        } catch (MalformedURLException e2) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
        }
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
        try {
            bytes = jSONObject.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
            bytes = null;
        }
        return getResponseFor(adobeNetworkHttpRequest, null, bytes, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.4
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() != 200) {
                    AdobeCommunitySession.this.queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                } else {
                    iAdobeGenericCompletionCallback.onCompletion(Boolean.TRUE);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCommunitySession.this.queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, new Handler());
    }

    public AdobeNetworkHttpTaskHandle getAssetsForCommunityID(String str, String str2, int i, String str3, Set<AdobeCommunityAssetFilterOptions> set, AdobeCommunityAssetSortType adobeCommunityAssetSortType, List<String> list, List<AdobeCommunityCategory> list2, List<AdobeCommunityCategory> list3, final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCommunityErrorCode> iAdobeGenericErrorCallback) {
        StringBuilder sb;
        if (str == null) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorMissingCommunityID);
            return null;
        }
        if (str2 != null && !str2.isEmpty()) {
            sb = new StringBuilder(str2);
        } else {
            StringBuilder sb2 = new StringBuilder(AdobeCommunityConstants.AdobeCommunityRequestV2Href);
            sb2.append(str).append(URIUtil.SLASH).append("assets");
            sb2.append("?");
            if (i <= 50) {
                if (i == 0) {
                    i = 25;
                }
                sb2.append("size=").append(Integer.toString(i));
                if (str3 != null) {
                    if (str3.length() <= 128) {
                        try {
                            sb2.append("&query=").append(URLEncoder.encode(str3, "UTF-8"));
                        } catch (UnsupportedEncodingException e2) {
                            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
                            return null;
                        }
                    } else {
                        queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryExceedsAllowedValue);
                        return null;
                    }
                }
                switch (adobeCommunityAssetSortType) {
                    case AdobeCommunityAssetSortTypeFeatured:
                        sb2.append("&sort=featured");
                        break;
                    case AdobeCommunityAssetSortTypeDate:
                        sb2.append("&sort=date");
                        break;
                    case AdobeCommunityAssetSortTypeDateAscending:
                        sb2.append("&sort=date_asc");
                        break;
                    case AdobeCommunityAssetSortTypeDateDescending:
                        sb2.append("&sort=date_desc");
                        break;
                    case AdobeCommunityAssetSortTypePopular:
                        sb2.append("&sort=popular");
                        break;
                    case AdobeCommunityAssetSortTypeAlphabetical:
                        sb2.append("&sort=alphabetical");
                        break;
                    case AdobeCommunityAssetSortTypeAlphabeticalAscending:
                        sb2.append("&sort=alphabetical_asc");
                        break;
                    case AdobeCommunityAssetSortTypeAlphabeticalDescending:
                        sb2.append("&sort=alphabetical_desc");
                        break;
                    case AdobeCommunityAssetSortTypeRelevance:
                        sb2.append("&sort=date_desc");
                        break;
                    case AdobeCommunityAssetSortTypeViews:
                        sb2.append("&sort=views");
                        break;
                    case AdobeCommunityAssetSortTypeLikes:
                        sb2.append("&sort=likes");
                        break;
                }
                if (set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionCreator) || set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionDefaults)) {
                    sb2.append("&field=creator");
                }
                if (set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionTags) || set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionDefaults)) {
                    sb2.append("&field=tags");
                }
                if (set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionTitle) || set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionDefaults)) {
                    sb2.append("&field=title");
                }
                if (set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionDescription)) {
                    sb2.append("&field=description");
                }
                if (set.contains(AdobeCommunityAssetFilterOptions.AdobeCommunityAssetFilterOptionOwner)) {
                    sb2.append("&field=owner");
                }
                if (list != null) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 < list.size()) {
                            sb2.append("&type=").append(list.get(i3));
                            i2 = i3 + 1;
                        }
                    }
                }
                if (list2 != null) {
                    int i4 = 0;
                    while (true) {
                        int i5 = i4;
                        if (i5 < list2.size()) {
                            sb2.append("&category_id=").append(list2.get(i5)._category_id);
                            i4 = i5 + 1;
                        }
                    }
                }
                if (list3 != null) {
                    int i6 = 0;
                    while (true) {
                        int i7 = i6;
                        if (i7 < list3.size()) {
                            sb2.append("&subcategory_id=").append(list3.get(i7)._category_id);
                            i6 = i7 + 1;
                        }
                    }
                }
                sb = sb2;
            } else {
                queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorSizeExceedsAllowedValue);
                return null;
            }
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        try {
            adobeNetworkHttpRequest.setUrl(new URL(getService().getBaseURL() + sb.toString()));
        } catch (MalformedURLException e3) {
            queueError(iAdobeGenericErrorCallback, AdobeCommunityErrorCode.AdobeCommunityErrorQueryURLEncodingFails);
        }
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.5
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() != null) {
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse != null) {
                        onComplete(adobeNetworkHttpResponse);
                        return;
                    } else {
                        iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                        return;
                    }
                }
                iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    iAdobeGenericCompletionCallback.onCompletion(AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()));
                } else {
                    iAdobeGenericErrorCallback.onError(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, new Handler());
    }

    public AdobeNetworkHttpTaskHandle getManifest(AdobeDCXManifest adobeDCXManifest, String str, final AdobeDCXComposite adobeDCXComposite, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, Handler handler) {
        URL url;
        String manifestLinkInfo = getManifestLinkInfo(adobeDCXComposite);
        if (manifestLinkInfo == null) {
            manifestLinkInfo = AdobeCommunityUtils.getRelativePathTo(constructManifestHref(adobeDCXComposite, str), getService().getBaseURL().toString());
        }
        try {
            url = new URL(manifestLinkInfo);
        } catch (MalformedURLException e2) {
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        String etag = adobeDCXManifest != null ? adobeDCXManifest.getEtag() : null;
        if (etag != null) {
            adobeNetworkHttpRequest.setRequestProperty("If-None-Match", etag);
        }
        adobeNetworkHttpRequest.setRequestProperty("Accept", "application/vnd.adobe.dcx-manifest+json");
        return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.6
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
                AdobeCSDKException assetErrorFromResponse;
                AdobeDCXManifest adobeDCXManifest2;
                AdobeCSDKException adobeCSDKExceptionCreateStorageError;
                AdobeDCXManifest adobeDCXManifest3 = null;
                adobeDCXManifest3 = null;
                str = null;
                String str2 = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode == 200) {
                        try {
                            adobeDCXManifest2 = new AdobeDCXManifest(AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()));
                            e = null;
                        } catch (AdobeDCXException e3) {
                            e = e3;
                            adobeDCXManifest2 = null;
                        }
                        if (adobeDCXManifest2 != null) {
                            Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                            if (headers != null && headers.containsKey("etag")) {
                                str2 = headers.get("etag").get(0);
                            }
                            if (str2 != null) {
                                adobeDCXManifest2.setEtag(str2);
                                adobeDCXManifest2.setCompositeHref(adobeDCXComposite.getHref());
                                adobeCSDKExceptionCreateStorageError = e;
                            } else {
                                adobeCSDKExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing header field ETAG");
                            }
                        } else {
                            adobeCSDKExceptionCreateStorageError = e;
                        }
                        assetErrorFromResponse = adobeCSDKExceptionCreateStorageError;
                        adobeDCXManifest3 = adobeDCXManifest2;
                    } else {
                        assetErrorFromResponse = null;
                    }
                } else {
                    assetErrorFromResponse = AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXManifestRequestCompletionHandler.onCompletion(adobeDCXManifest3, assetErrorFromResponse);
            }
        }, handler);
    }

    AdobeAssetException getAssetErrorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        return getAssetErrorFromResponse(adobeNetworkHttpResponse, null);
    }

    public static AdobeAssetException getAssetErrorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, String str) {
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
        } else if (adobeNetworkHttpResponse.getStatusCode() == 404) {
            if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null && !AdobeNetworkReachabilityUtil.isOnline()) {
                adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorOffline, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
            }
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

    public AdobeNetworkHttpTaskHandle getResponseFor(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, byte[] bArr, final AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback, Handler handler) {
        AdobeNetworkHttpTaskHandle responseForUploadRequest;
        if (adobeNetworkHttpRequest == null) {
            iStorageResponseCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            return null;
        }
        AdobeNetworkHttpService serviceForURI = getServiceForURI();
        if (serviceForURI == null) {
            if (iStorageResponseCallback != null) {
                final AdobeNetworkException adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoCloudSpecified);
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.7
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
                    handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.8
                        @Override // java.lang.Runnable
                        public void run() {
                            iStorageResponseCallback.onError(adobeNetworkExceptionCheckEntitlements);
                        }
                    });
                } else {
                    iStorageResponseCallback.onError(adobeNetworkExceptionCheckEntitlements);
                }
            }
            return null;
        }
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.9
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCommunitySession.requestMap.remove(adobeNetworkHttpRequest);
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
        responseForUploadRequest.registerListener(new IAdobeNetworkHttpTaskHandleListener() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.10
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
            public void onProgressNotification(double d2) {
                iStorageResponseCallback.onProgress(d2);
            }
        });
        return responseForUploadRequest;
    }

    protected AdobeNetworkHttpService getServiceForURI() {
        return getServiceForSchemaId(null);
    }

    private AdobeNetworkException checkEntitlements() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public String getSyncGroupNameForComposite(AdobeDCXComposite adobeDCXComposite) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean createComposite(AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1EnclosingClassForOutput c1EnclosingClassForOutput = new C1EnclosingClassForOutput();
        createComposite(adobeDCXComposite, z, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.11
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onError(AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c1EnclosingClassForOutput.compositeCreateError = adobeCSDKException;
                c1EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
            public void onCompletion(AdobeDCXComposite adobeDCXComposite2) {
                reentrantLock.lock();
                try {
                    c1EnclosingClassForOutput.createdComposite = adobeDCXComposite2;
                    c1EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
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
        if (c1EnclosingClassForOutput.compositeCreateError != null) {
            throw c1EnclosingClassForOutput.compositeCreateError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$1EnclosingClassForOutput, reason: invalid class name */
    class C1EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXComposite createdComposite = null;
        AdobeCSDKException compositeCreateError = null;

        C1EnclosingClassForOutput() {
        }
    }

    private void createComposite(final AdobeDCXComposite adobeDCXComposite, boolean z, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, final Handler handler) {
        URL url;
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComposite != null, "composite must not be null");
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobeDCXComposite.getHref() + AdobeCommunityConstants.AdobeCommunityRequestCreateCompositeHref, getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        getResponseFor(new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.12
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCSDKException assetErrorFromResponse = null;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (adobeNetworkHttpResponse.getNetworkException() != null || statusCode != 201) {
                    if (statusCode == 409) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorCompositeAlreadyExists, null);
                    } else {
                        assetErrorFromResponse = AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    }
                }
                AdobeCommunitySession.this.callCompositeCompletionCompletionHandler(iAdobeDCXCompositeRequestCompletionHandler, handler, adobeDCXComposite, assetErrorFromResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCommunitySession.this.callCompositeCompletionCompletionHandler(iAdobeDCXCompositeRequestCompletionHandler, handler, adobeDCXComposite, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle deleteComposite(AdobeDCXComposite adobeDCXComposite, IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, Handler handler) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean deleteComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean archiveDCXComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeStorageResourceItem resourceForManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle updateManifest(final AdobeDCXManifest adobeDCXManifest, final AdobeDCXComposite adobeDCXComposite, boolean z, final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, final Handler handler) {
        URL url;
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifest != null, "manifest must not be null");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComposite != null, "composite must not be null");
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(constructManifestHref(adobeDCXComposite, adobeDCXManifest.getVersion()), getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/vnd.adobe.dcx-manifest+json");
        String str = z ? "*" : null;
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty("If-Match", str);
        }
        return getResponseFor(adobeNetworkHttpRequest, null, adobeDCXManifest.getRemoteData().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.13
            /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r7) {
                /*
                    r6 = this;
                    r1 = 0
                    int r0 = r7.getStatusCode()
                    java.lang.Exception r2 = r7.getNetworkException()
                    if (r2 != 0) goto L98
                    r2 = 200(0xc8, float:2.8E-43)
                    if (r0 == r2) goto L17
                    r2 = 201(0xc9, float:2.82E-43)
                    if (r0 == r2) goto L17
                    r2 = 204(0xcc, float:2.86E-43)
                    if (r0 != r2) goto L98
                L17:
                    java.lang.String r0 = r7.getDataString()
                    if (r0 == 0) goto L49
                    org.json.JSONObject r0 = new org.json.JSONObject     // Catch: org.json.JSONException -> L45
                    java.lang.String r2 = r7.getDataString()     // Catch: org.json.JSONException -> L45
                    r0.<init>(r2)     // Catch: org.json.JSONException -> L45
                L26:
                    if (r0 == 0) goto L2e
                    java.lang.Exception r2 = r7.getNetworkException()
                    if (r2 == 0) goto L4b
                L2e:
                    com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode r0 = com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse
                    java.lang.String r2 = "Invalid or missing JSON in response body"
                    com.adobe.creativesdk.foundation.storage.AdobeAssetException r0 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createStorageError(r0, r2)
                    r2 = r0
                    r0 = r1
                L39:
                    com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession r3 = com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.this
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler r4 = r4
                    android.os.Handler r5 = r5
                    if (r2 != 0) goto Lb8
                L41:
                    com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.access$300(r3, r4, r5, r0, r2)
                    return
                L45:
                    r0 = move-exception
                    r0.printStackTrace()
                L49:
                    r0 = r1
                    goto L26
                L4b:
                    java.lang.String r2 = "etag"
                    java.lang.String r2 = r0.optString(r2)
                    java.lang.String r3 = "x-latest-version"
                    java.lang.String r3 = r0.optString(r3)
                    if (r2 != 0) goto L67
                    com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode r0 = com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse
                    java.lang.String r2 = "Missing response property 'etag'"
                    com.adobe.creativesdk.foundation.storage.AdobeAssetException r0 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createStorageError(r0, r2)
                    r2 = r0
                    r0 = r1
                    goto L39
                L67:
                    if (r3 != 0) goto L75
                    com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode r0 = com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse
                    java.lang.String r2 = "Missing response property 'x-latest-version'"
                    com.adobe.creativesdk.foundation.storage.AdobeAssetException r0 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createStorageError(r0, r2)
                    r2 = r0
                    r0 = r1
                    goto L39
                L75:
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r0 = r2     // Catch: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException -> L92
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r0 = r0.getCopy()     // Catch: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException -> L92
                L7b:
                    r0.setEtag(r2)
                    r0.setVersion(r3)
                    java.net.URI r2 = r0.getCompositeHref()
                    if (r2 != 0) goto L90
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r2 = r3
                    java.net.URI r2 = r2.getHref()
                    r0.setCompositeHref(r2)
                L90:
                    r2 = r1
                    goto L39
                L92:
                    r0 = move-exception
                    r0.printStackTrace()
                    r0 = r1
                    goto L7b
                L98:
                    r2 = 409(0x199, float:5.73E-43)
                    if (r0 != r2) goto La4
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode.AdobeDCXErrorCompositeAlreadyExists
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException r2 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createDCXError(r0, r1)
                    r0 = r1
                    goto L39
                La4:
                    r2 = 404(0x194, float:5.66E-43)
                    if (r0 != r2) goto Lb0
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode.AdobeDCXErrorUnknownComposite
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException r2 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils.createDCXError(r0, r1)
                    r0 = r1
                    goto L39
                Lb0:
                    com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.this
                    com.adobe.creativesdk.foundation.storage.AdobeAssetException r2 = r0.getAssetErrorFromResponse(r7)
                    r0 = r1
                    goto L39
                Lb8:
                    r0 = r1
                    goto L41
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.AnonymousClass13.onComplete(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse):void");
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() == null) {
                    AdobeCommunitySession.this.callManifestCompletionHandler(iAdobeDCXManifestRequestCompletionHandler, handler, null, adobeNetworkException);
                    return;
                }
                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                if (adobeNetworkHttpResponse == null) {
                    AdobeCommunitySession.this.callManifestCompletionHandler(iAdobeDCXManifestRequestCompletionHandler, handler, null, adobeNetworkException);
                } else {
                    onComplete(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest updateManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C2EnclosingClassForOutput c2EnclosingClassForOutput = new C2EnclosingClassForOutput();
        updateManifest(adobeDCXManifest, adobeDCXComposite, z, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.14
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                c2EnclosingClassForOutput.manifestUpdateError = adobeCSDKException;
                c2EnclosingClassForOutput.updatedManifest = adobeDCXManifest2;
                c2EnclosingClassForOutput.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
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
        if (c2EnclosingClassForOutput.manifestUpdateError != null) {
            throw c2EnclosingClassForOutput.manifestUpdateError;
        }
        return c2EnclosingClassForOutput.updatedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$2EnclosingClassForOutput, reason: invalid class name */
    class C2EnclosingClassForOutput {
        boolean done = false;
        AdobeDCXManifest updatedManifest = null;
        AdobeCSDKException manifestUpdateError = null;

        C2EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite, final IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, @Nullable Handler handler) {
        URL url;
        final AdobeStorageResourceItem adobeStorageResourceItemResourceForManifest = AdobeStorageDCXServiceMapping.resourceForManifest(adobeDCXComposite.getManifest(), adobeDCXComposite);
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(constructManifestHref(adobeDCXComposite, null), getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.DEBUG, "Community : ", e2.toString());
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/vnd.adobe.dcx-manifest+json");
        return getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.15
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
                    assetErrorFromResponse = AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                }
                iAdobeDCXResourceRequestCompletionHandler.onCompletion(adobeStorageResourceItemResourceForManifest, assetErrorFromResponse);
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeStorageResourceItem getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C3EnclosingClassForOutput c3EnclosingClassForOutput = new C3EnclosingClassForOutput();
        getHeaderInfoForManifestOfComposite(adobeDCXComposite, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.16
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c3EnclosingClassForOutput.manifestHeaderError = adobeCSDKException;
                    c3EnclosingClassForOutput.resource = adobeStorageResourceItem;
                    c3EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
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
        if (c3EnclosingClassForOutput.manifestHeaderError != null) {
            throw c3EnclosingClassForOutput.manifestHeaderError;
        }
        return c3EnclosingClassForOutput.resource;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$3EnclosingClassForOutput, reason: invalid class name */
    class C3EnclosingClassForOutput {
        boolean done = false;
        AdobeStorageResourceItem resource = null;
        AdobeCSDKException manifestHeaderError = null;

        C3EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C4EnclosingClassForOutput c4EnclosingClassForOutput = new C4EnclosingClassForOutput();
        getManifest(adobeDCXManifest, null, adobeDCXComposite, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.17
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c4EnclosingClassForOutput.manifestdownloadError = adobeCSDKException;
                    c4EnclosingClassForOutput.downloadedManifest = adobeDCXManifest2;
                    c4EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c4EnclosingClassForOutput.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.DEBUG, "Community : ", e2.toString());
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c4EnclosingClassForOutput.manifestdownloadError != null) {
            throw c4EnclosingClassForOutput.manifestdownloadError;
        }
        return c4EnclosingClassForOutput.downloadedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$4EnclosingClassForOutput, reason: invalid class name */
    class C4EnclosingClassForOutput {
        public boolean done = false;
        public AdobeDCXManifest downloadedManifest = null;
        public AdobeCSDKException manifestdownloadError = null;

        C4EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, String str, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C5EnclosingClassForOutput c5EnclosingClassForOutput = new C5EnclosingClassForOutput();
        if (adobeDCXComposite.getLinks() == null) {
            getCompositeInfo(adobeDCXComposite, new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.18
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                public void onCompletion(AdobeDCXComposite adobeDCXComposite2) {
                    reentrantLock.lock();
                    c5EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                    reentrantLock.unlock();
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                public void onError(AdobeCSDKException adobeCSDKException) {
                    reentrantLock.lock();
                    c5EnclosingClassForOutput.compositeInfoDownloadError = adobeCSDKException;
                    c5EnclosingClassForOutput.done = true;
                    conditionNewCondition.signal();
                    reentrantLock.unlock();
                }
            });
            reentrantLock.lock();
            while (!c5EnclosingClassForOutput.done) {
                try {
                    try {
                        conditionNewCondition.await();
                    } catch (InterruptedException e2) {
                        AdobeLogger.log(Level.DEBUG, "Community : ", e2.toString());
                    }
                } finally {
                }
            }
            reentrantLock.unlock();
            if (c5EnclosingClassForOutput.compositeInfoDownloadError != null) {
                throw c5EnclosingClassForOutput.compositeInfoDownloadError;
            }
        }
        final C5EnclosingClassForOutput c5EnclosingClassForOutput2 = new C5EnclosingClassForOutput();
        getManifest(adobeDCXManifest, str, adobeDCXComposite, new IAdobeDCXManifestRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.19
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXManifestRequestCompletionHandler
            public void onCompletion(AdobeDCXManifest adobeDCXManifest2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c5EnclosingClassForOutput2.manifestdownloadError = adobeCSDKException;
                    c5EnclosingClassForOutput2.downloadedManifest = adobeDCXManifest2;
                    c5EnclosingClassForOutput2.done = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, null);
        reentrantLock.lock();
        while (!c5EnclosingClassForOutput2.done) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e3) {
                    AdobeLogger.log(Level.DEBUG, "Community : ", e3.toString());
                }
            } finally {
            }
        }
        reentrantLock.unlock();
        if (c5EnclosingClassForOutput2.manifestdownloadError != null) {
            throw c5EnclosingClassForOutput2.manifestdownloadError;
        }
        return c5EnclosingClassForOutput2.downloadedManifest;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$5EnclosingClassForOutput, reason: invalid class name */
    class C5EnclosingClassForOutput {
        public boolean done = false;
        public AdobeDCXManifest downloadedManifest = null;
        public AdobeCSDKException manifestdownloadError = null;
        public AdobeCSDKException compositeInfoDownloadError = null;

        C5EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle uploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, final String str, boolean z, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, final Handler handler) {
        final AdobeDCXMutableComponent mutableCopy;
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComponent != null, "component msut not be null");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComposite != null, "composite must not be null");
        AdobeStorageErrorUtils.verifyArgument(str != null, "file path must not be null");
        synchronized (this) {
            if (this.directUploadLimitInBytes < 0) {
                checkUploadLimits(handler);
            }
        }
        final long length = new File(str).length();
        if (adobeDCXComponent.getLength() > 0) {
            mutableCopy = adobeDCXComponent;
        } else if (length > 0) {
            mutableCopy = adobeDCXComponent.getMutableCopy();
            mutableCopy.setLength(length);
        } else {
            callComponentCompletionHandler(iAdobeDCXComponentRequestCompletionHandler, handler, null, AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, "could n't get file length"));
            return null;
        }
        if (mutableCopy.getLength() > this.directUploadLimitInBytes) {
            this.uploadService.uploadToCloud(getService(), mutableCopy, adobeDCXComposite, str, z, iAdobeDCXComponentRequestCompletionHandler, handler);
            return null;
        }
        URL url = null;
        String componentLinkInfo = getComponentLinkInfo(adobeDCXComposite, mutableCopy);
        if (componentLinkInfo == null) {
            componentLinkInfo = AdobeCommunityUtils.getRelativePathTo(constructComponentHref(mutableCopy, adobeDCXComposite, false), getService().baseURL().toString());
        }
        try {
            url = new URI(componentLinkInfo).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", mutableCopy.getType());
        if (!z) {
            adobeNetworkHttpRequest.setRequestProperty("If-Match", "*");
        }
        return getResponseFor(adobeNetworkHttpRequest, str, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.20
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCSDKException adobeCSDKExceptionCreateDCXError;
                AdobeDCXMutableComponent adobeDCXMutableComponent;
                AdobeAssetException adobeAssetExceptionCreateStorageError;
                JSONObject jSONObject;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (adobeNetworkHttpResponse.getNetworkException() == null && (statusCode == 200 || statusCode == 201 || statusCode == 204)) {
                    try {
                        jSONObject = new JSONObject(adobeNetworkHttpResponse.getDataString());
                        adobeAssetExceptionCreateStorageError = null;
                    } catch (JSONException e4) {
                        adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetMissingJSONData, e4.getMessage());
                        e4.printStackTrace();
                        jSONObject = null;
                    }
                    UploadComponentResponse uploadComponentResponseUpdateComponentWithUploadResponse = AdobeCommunitySession.this.updateComponentWithUploadResponse(adobeNetworkHttpResponse, mutableCopy, length, jSONObject, adobeAssetExceptionCreateStorageError);
                    adobeDCXMutableComponent = uploadComponentResponseUpdateComponentWithUploadResponse.component;
                    adobeCSDKExceptionCreateDCXError = uploadComponentResponseUpdateComponentWithUploadResponse.error;
                    if (adobeCSDKExceptionCreateDCXError == null && adobeDCXMutableComponent.getMd5() == null) {
                        adobeCSDKExceptionCreateDCXError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing header 'Content-MD5");
                    }
                } else {
                    AdobeAssetException assetErrorFromResponse = AdobeCommunitySession.getAssetErrorFromResponse(adobeNetworkHttpResponse, str);
                    if (assetErrorFromResponse.getErrorCode().equals(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist)) {
                        adobeCSDKExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, null);
                        adobeDCXMutableComponent = null;
                    } else {
                        adobeCSDKExceptionCreateDCXError = assetErrorFromResponse;
                        adobeDCXMutableComponent = null;
                    }
                }
                AdobeCommunitySession adobeCommunitySession = AdobeCommunitySession.this;
                IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler2 = iAdobeDCXComponentRequestCompletionHandler;
                Handler handler2 = handler;
                if (adobeCSDKExceptionCreateDCXError != null) {
                    adobeDCXMutableComponent = null;
                }
                adobeCommunitySession.callComponentCompletionHandler(iAdobeDCXComponentRequestCompletionHandler2, handler2, adobeDCXMutableComponent, adobeCSDKExceptionCreateDCXError);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCommunitySession.this.callComponentCompletionHandler(iAdobeDCXComponentRequestCompletionHandler, handler, null, adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    private void checkUploadLimits(Handler handler) {
        URL url;
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeCommunityConstants.AdobeCommunityRequestLimitsHref, getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        getResponseFor(new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.21
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                JSONObject jSONObject;
                int iOptInt;
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    try {
                        jSONObject = new JSONObject(adobeNetworkHttpResponse.getDataString());
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                        jSONObject = null;
                    }
                    if (jSONObject != null && adobeNetworkHttpResponse.getNetworkException() == null && (iOptInt = jSONObject.optInt(AdobeCommunityConstants.AdobeCommunityResponseKeySmallFileUploadLimit)) >= 0) {
                        AdobeCommunitySession.this.directUploadLimitInBytes = iOptInt;
                    }
                }
                reentrantLock.lock();
                atomicBoolean.set(true);
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                reentrantLock.lock();
                atomicBoolean.set(true);
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
        reentrantLock.lock();
        while (!atomicBoolean.get()) {
            try {
                conditionNewCondition.await();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
        reentrantLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UploadComponentResponse updateComponentWithUploadResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeDCXComponent adobeDCXComponent, long j, JSONObject jSONObject, Exception exc) {
        AdobeAssetException adobeAssetExceptionCreateStorageError;
        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
        String str = headers.containsKey("content-md5") ? headers.get("content-md5").get(0) : null;
        String strOptString = jSONObject.optString("etag");
        String strOptString2 = jSONObject.optString(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
        if (strOptString == null) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing property 'etag'");
        } else if (strOptString2 == null) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing property 'version'");
        } else if (j < 0) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "could not read file length");
        } else {
            AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
            mutableCopy.setVersion(strOptString2);
            mutableCopy.setEtag(strOptString);
            mutableCopy.setMd5(str);
            if (mutableCopy.getLength() < 0) {
                mutableCopy.setLength(j);
            }
            return new UploadComponentResponse(mutableCopy, null);
        }
        if (adobeAssetExceptionCreateStorageError != null && exc == null) {
            return new UploadComponentResponse(null, adobeAssetExceptionCreateStorageError);
        }
        return new UploadComponentResponse(null, adobeAssetExceptionCreateStorageError);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle downloadComponent(final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        URL url;
        String componentLinkInfo = getComponentLinkInfo(adobeDCXComposite, adobeDCXComponent);
        if (componentLinkInfo == null) {
            componentLinkInfo = AdobeCommunityUtils.getRelativePathTo(constructComponentHref(adobeDCXComponent, adobeDCXComposite, true), getService().baseURL().toString());
        }
        try {
            url = new URI(componentLinkInfo).toURL();
        } catch (Exception e2) {
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        return getResponseFor(adobeNetworkHttpRequest, str, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.22
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
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
                    assetErrorFromResponse = AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse);
                    AdobeAssetException adobeAssetException = (AdobeAssetException) assetErrorFromResponse;
                    if (adobeNetworkHttpResponse.hasFileError()) {
                        assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentWriteFailure, adobeAssetException.getDescription());
                    }
                }
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, assetErrorFromResponse);
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
        }, handler);
    }

    public boolean downloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str) throws AdobeCSDKException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C6EnclosingClassForOutput c6EnclosingClassForOutput = new C6EnclosingClassForOutput();
        downloadComponent(adobeDCXComponent, adobeDCXComposite, str, new IAdobeDCXComponentRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.23
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler
            public void onCompletion(AdobeDCXComponent adobeDCXComponent2, AdobeCSDKException adobeCSDKException) {
                reentrantLock.lock();
                try {
                    c6EnclosingClassForOutput.componentDownloadError = adobeCSDKException;
                    c6EnclosingClassForOutput.downloadedComponent = adobeDCXComponent2;
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
                    AdobeLogger.log(Level.DEBUG, "Community : ", e2.toString());
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (c6EnclosingClassForOutput.componentDownloadError != null) {
            throw c6EnclosingClassForOutput.componentDownloadError;
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$6EnclosingClassForOutput, reason: invalid class name */
    class C6EnclosingClassForOutput {
        public boolean done = false;
        public AdobeDCXComponent downloadedComponent = null;
        public AdobeCSDKException componentDownloadError = null;

        C6EnclosingClassForOutput() {
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle deleteComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public boolean leaveSharedComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public void setComponentManager(IAdobeDCXComponentManagerProtocol iAdobeDCXComponentManagerProtocol) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public IAdobeDCXComponentManagerProtocol getComponentManager() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public void setComponentManagerHandler(Handler handler) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public Handler getComponentManagerHandler() {
        return null;
    }

    private String baseURL() {
        return getService().baseURL().toString();
    }

    private String assetIdFromCPAssetHref(String str) {
        Matcher matcher = Pattern.compile("^.*?\\/api\\/v2\\/assets\\/([^\\/]*).*$").matcher(str);
        if (matcher.matches() && matcher.find()) {
            return str.substring(matcher.start(), matcher.end());
        }
        return null;
    }

    private String resourceIdFromCPResourceHref(String str) {
        Matcher matcher = Pattern.compile("^.*?\\/api\\/v2\\/resources\\/([^\\/]*).*$").matcher(str);
        if (matcher.matches() && matcher.find()) {
            return str.substring(matcher.start(), matcher.end());
        }
        return null;
    }

    public void pollForAsyncResponseFrom(final String str, int i, final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback) {
        AdobeStorageErrorUtils.verifyArgument(adobeNetworkHttpRequest != null, "null previous request");
        URL url = null;
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(str, getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
        }
        final AdobeNetworkHttpRequest adobeNetworkHttpRequest2 = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyNoSooner, new Date(new Date().getTime() + ((long) i)));
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyReuseRequest, adobeNetworkHttpRequest);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        getResponseFor(adobeNetworkHttpRequest2, null, jSONObject.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.24
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                Exception excCreateStorageError;
                Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 202) {
                    String str2 = headers.containsKey(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter) ? headers.get(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter).get(0) : null;
                    int iIntValue = 10;
                    if (str2 != null) {
                        iIntValue = Integer.valueOf(str2).intValue();
                    }
                    AdobeCommunitySession.this.pollForAsyncResponseFrom(str, iIntValue, adobeNetworkHttpRequest, iStorageResponseCallback);
                    return;
                }
                if (statusCode == 200) {
                    GenericNetworkResponse asyncResponse = AdobeCommunitySession.this.parseAsyncResponse(adobeNetworkHttpResponse, adobeNetworkHttpRequest2);
                    excCreateStorageError = asyncResponse.error;
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = asyncResponse.response;
                    if (adobeNetworkHttpResponse2 != null) {
                        iStorageResponseCallback.onComplete(adobeNetworkHttpResponse2);
                        return;
                    }
                } else {
                    if (adobeNetworkHttpResponse.getNetworkException() != null) {
                        iStorageResponseCallback.onComplete(adobeNetworkHttpResponse);
                        return;
                    }
                    excCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, null);
                }
                AdobeNetworkHttpResponse adobeNetworkHttpResponse3 = new AdobeNetworkHttpResponse();
                adobeNetworkHttpResponse3.setNetworkException(excCreateStorageError);
                adobeNetworkHttpResponse3.setHeaders(headers);
                adobeNetworkHttpResponse3.setData(ByteBuffer.wrap(adobeNetworkHttpResponse.getDataBytes()));
                adobeNetworkHttpResponse3.setURL(adobeNetworkHttpResponse.getUrl());
                adobeNetworkHttpResponse3.setStatusCode(statusCode);
                iStorageResponseCallback.onComplete(adobeNetworkHttpResponse3);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iStorageResponseCallback.onError(adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GenericNetworkResponse parseAsyncResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        String strSubstring;
        AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = new AdobeNetworkHttpResponse();
        adobeNetworkHttpResponse2.setURL(adobeNetworkHttpRequest.getUrl());
        String dataString = adobeNetworkHttpResponse.getDataString();
        int iIndexOf = dataString.indexOf("\r\n\r\n");
        int length = "\r\n\r\n".length() + iIndexOf;
        if (iIndexOf == -1) {
            try {
                new JSONObject(dataString);
                strSubstring = null;
            } catch (JSONException e2) {
                e2.printStackTrace();
                strSubstring = null;
            }
        } else {
            if (length < dataString.length()) {
                adobeNetworkHttpResponse2.setData(ByteBuffer.wrap(dataString.substring(length).getBytes()));
            }
            strSubstring = dataString.substring(0, length);
            try {
                new JSONObject(strSubstring);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        int iIndexOf2 = strSubstring.indexOf("\r\n");
        int length2 = iIndexOf2 + "\r\n".length();
        if (iIndexOf2 == -1) {
            return new GenericNetworkResponse(null, 0 == 0 ? AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing status line separator in 202 response body") : null);
        }
        String[] strArrSplit = strSubstring.substring(0, iIndexOf2).split(" ");
        if (strArrSplit.length < 2) {
            return new GenericNetworkResponse(null, 0 == 0 ? AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Invalid status line in 202 response body") : null);
        }
        adobeNetworkHttpResponse2.setStatusCode(Integer.valueOf(strArrSplit[1]).intValue());
        int iIndexOf3 = strSubstring.indexOf("\r\n\r\n");
        if (iIndexOf3 == -1) {
            iIndexOf3 = strSubstring.length();
        }
        if (iIndexOf3 > length2) {
            adobeNetworkHttpResponse2.setHeaders(AdobeNetworkUtils.parseAndDecodeHTTPHeadersFromString(strSubstring.substring(length2, iIndexOf3)));
        }
        return new GenericNetworkResponse(adobeNetworkHttpResponse2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handle202Response(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeNetworkHttpRequest adobeNetworkHttpRequest, int i, AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback) {
        AdobeAssetException adobeAssetExceptionCreateStorageError;
        String str;
        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
        if (adobeNetworkHttpResponse.getDataString() != null) {
            try {
                new JSONObject(adobeNetworkHttpResponse.getDataString());
                adobeAssetExceptionCreateStorageError = null;
            } catch (JSONException e2) {
                adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetMissingJSONData, null);
                e2.printStackTrace();
            }
        } else {
            adobeAssetExceptionCreateStorageError = null;
        }
        if (adobeAssetExceptionCreateStorageError == null) {
            str = headers.containsKey("location") ? headers.get("location").get(0) : null;
        } else {
            str = null;
        }
        AdobeAssetException adobeAssetExceptionCreateStorageError2 = str == null ? AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "response 202 is missing href in response body") : adobeAssetExceptionCreateStorageError;
        if (adobeAssetExceptionCreateStorageError2 != null) {
            AdobeNetworkHttpResponse adobeNetworkHttpResponse2 = new AdobeNetworkHttpResponse();
            adobeNetworkHttpResponse2.setNetworkException(adobeAssetExceptionCreateStorageError2);
            adobeNetworkHttpResponse2.setURL(adobeNetworkHttpResponse.getUrl());
            adobeNetworkHttpResponse2.setData(ByteBuffer.wrap(adobeNetworkHttpResponse.getDataBytes()));
            adobeNetworkHttpResponse2.setStatusCode(adobeNetworkHttpResponse.getStatusCode());
            adobeNetworkHttpResponse2.setHeaders(headers);
            iStorageResponseCallback.onComplete(adobeNetworkHttpResponse2);
            return;
        }
        String str2 = headers.containsKey(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter) ? headers.get(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter).get(0) : null;
        if (str2 != null) {
            i = Integer.valueOf(str2).intValue();
        }
        pollForAsyncResponseFrom(str, i, adobeNetworkHttpRequest, iStorageResponseCallback);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public AdobeNetworkHttpTaskHandle getPublishHrefOfComposite(AdobeDCXComposite adobeDCXComposite, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, AdobeDCXComposite adobeDCXComposite2, final Handler handler, final IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler) {
        if (adobeDCXComposite2 != null) {
            if (iAdobePublicationRecordProtocol != null && (iAdobePublicationRecordProtocol instanceof AdobeCommunityPublicationRecord)) {
                AdobeCommunityPublicationRecord adobeCommunityPublicationRecord = (AdobeCommunityPublicationRecord) iAdobePublicationRecordProtocol;
                URI href = adobeDCXComposite2.getHref();
                String strAssetIdFromCPAssetHref = assetIdFromCPAssetHref(href != null ? href.toString() : "");
                if (adobeCommunityPublicationRecord.getResourcePath() != null && adobeCommunityPublicationRecord.getAssetId().equals(strAssetIdFromCPAssetHref)) {
                    callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, AdobeCommunityConstants.AdobeCommunityRequestGetPublishHref + adobeCommunityPublicationRecord.getResourcePath(), null);
                    return null;
                }
            }
            return getPublicationRecordOfComposite(adobeDCXComposite2, new IAdobeDCXPublicationRecordCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.25
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublicationRecordCompletionHandler
                public void onComplete(AdobeCommunityPublicationRecord adobeCommunityPublicationRecord2, AdobeCSDKException adobeCSDKException) {
                    AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, adobeCommunityPublicationRecord2 != null ? AdobeCommunityConstants.AdobeCommunityRequestGetPublishHref + adobeCommunityPublicationRecord2.getResourcePath() : null, null);
                }
            });
        }
        iAdobeDCXPublishHrefCompletionHandler.onComplete(AdobeCommunityConstants.AdobeCommunityRequestGetPublishHref + AdobeCommunityUtils.generateUuid(), null);
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public AdobeNetworkHttpTaskHandle publishCompositeUploadedTo(String str, String str2, JSONObject jSONObject, final Handler handler, final IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler) {
        URL url;
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(AdobeCommunityConstants.AdobeCommunityRequestV2Href + jSONObject.optString(AdobeCommunityConstants.AdobeCommunityResourceCommunityIDkey) + "/assets", getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("resource_path", AdobeStorageLastPathComponentUtil.getLastPathComponent(str));
            jSONObject2.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceType, str2);
            jSONObject2.put("metadata", jSONObject.optJSONObject("metadata"));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return getResponseFor(adobeNetworkHttpRequest, null, jSONObject2.toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.26
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException adobeAssetExceptionCreateStorageError;
                String str3;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                if (adobeNetworkHttpResponse.getNetworkException() == null && statusCode == 201) {
                    String str4 = headers.containsKey("location") ? headers.get("location").get(0) : null;
                    if (str4 == null) {
                        str3 = str4;
                        adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Missing respise header 'location'");
                    } else {
                        str3 = str4;
                        adobeAssetExceptionCreateStorageError = null;
                    }
                } else {
                    adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, null);
                    str3 = null;
                }
                String str5 = (str3 == null || !str3.endsWith(URIUtil.SLASH)) ? str3 + URIUtil.SLASH + "original" : str3 + "original";
                AdobeCommunitySession adobeCommunitySession = AdobeCommunitySession.this;
                IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler2 = iAdobeDCXPublishHrefCompletionHandler;
                Handler handler2 = handler;
                if (adobeAssetExceptionCreateStorageError != null) {
                    str5 = null;
                }
                adobeCommunitySession.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler2, handler2, str5, adobeAssetExceptionCreateStorageError);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() == null) {
                    AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, null, adobeNetworkException);
                    return;
                }
                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                if (adobeNetworkHttpResponse == null || adobeNetworkHttpResponse.getNetworkException() != null) {
                    AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, null, adobeNetworkException);
                } else {
                    onComplete(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public AdobeNetworkHttpTaskHandle updateCompositePublishedAt(String str, JSONObject jSONObject, final Handler handler, final IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler) {
        URL url;
        if (AdobeStorageLastPathComponentUtil.getLastPathComponent(str).toLowerCase().equals("original")) {
            str = AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(str);
        }
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(str, getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
        final String str2 = str + "original";
        return getResponseFor(adobeNetworkHttpRequest, null, jSONObject.optJSONObject("metadata").toString().getBytes(Charsets.UTF_8), new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.27
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeAssetException adobeAssetExceptionCreateStorageError;
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (adobeNetworkHttpResponse.getNetworkException() == null && (statusCode == 200 || statusCode == 201)) {
                    adobeAssetExceptionCreateStorageError = null;
                } else {
                    adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, adobeNetworkHttpResponse.getNetworkException() != null ? adobeNetworkHttpResponse.getNetworkException().getMessage() : "Network Error");
                }
                AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, adobeAssetExceptionCreateStorageError == null ? str2 : null, adobeAssetExceptionCreateStorageError);
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getData() == null) {
                    AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, null, adobeNetworkException);
                    return;
                }
                AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                if (adobeNetworkHttpResponse == null) {
                    AdobeCommunitySession.this.callPublishHrefCompletionHandler(iAdobeDCXPublishHrefCompletionHandler, handler, null, adobeNetworkException);
                } else {
                    onComplete(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, handler);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public AdobeNetworkHttpTaskHandle updatePublicationRecordData(JSONObject jSONObject, AdobeDCXCompositeBranch adobeDCXCompositeBranch, final Handler handler, final IAdobeDCXPublicationRecordDataCompletionHandler iAdobeDCXPublicationRecordDataCompletionHandler) {
        URL url;
        final JSONObject[] jSONObjectArr = new JSONObject[1];
        final JSONObject[] jSONObjectArr2 = new JSONObject[1];
        if (jSONObject != null) {
            jSONObjectArr[0] = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject);
        } else {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("metadata", new JSONObject("{}"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            jSONObjectArr[0] = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject2);
        }
        jSONObjectArr2[0] = jSONObjectArr[0].optJSONObject("metadata");
        String version = adobeDCXCompositeBranch.getManifest().getVersion();
        if (version == null) {
            callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, null, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse, "No manifest verison"));
            return null;
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("resource_path", "manifest");
            jSONObject3.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceVersion, version);
            jSONObjectArr2[0].put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyMainResource, jSONObject3);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        final String strOptString = jSONObject != null ? jSONObject.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworFilekKey) : null;
        if (!TextUtils.isEmpty(strOptString)) {
            final String str = AdobeCommunityConstants.AdobeCommunityRequestGetPublishHref + AdobeCommunityUtils.generateUuid();
            try {
                url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(str, getService().baseURL().toString())).toURL();
            } catch (MalformedURLException e4) {
                e4.printStackTrace();
                url = null;
            } catch (URISyntaxException e5) {
                e5.printStackTrace();
                url = null;
            }
            String strOptString2 = jSONObject.optString(AdobeCommunityPublicationRecordConstants.AdobeCommuityPublicationNewArtworkTypeKey);
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null);
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", strOptString2);
            return getResponseFor(adobeNetworkHttpRequest, strOptString, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.28
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeCSDKException assetErrorFromResponse = null;
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    String str2 = adobeNetworkHttpResponse.getHeaders().get("x-latest-version").get(0);
                    if (adobeNetworkHttpResponse.getNetworkException() == null && statusCode == 201 && str2 != null) {
                        JSONObject jSONObject4 = new JSONObject();
                        try {
                            jSONObject4.put("resource_path", AdobeStorageLastPathComponentUtil.getLastPathComponent(str));
                            jSONObject4.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceVersion, str2);
                            jSONObjectArr2[0].put(AdobeCommunityConstants.AdobeCommunityJSONArtworkKey, jSONObject4);
                        } catch (JSONException e6) {
                            e6.printStackTrace();
                        }
                    } else {
                        assetErrorFromResponse = AdobeCommunitySession.getAssetErrorFromResponse(adobeNetworkHttpResponse, strOptString);
                        if ((assetErrorFromResponse instanceof AdobeNetworkException) && ((AdobeNetworkException) assetErrorFromResponse).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist) {
                            assetErrorFromResponse = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorComponentReadFailure, assetErrorFromResponse.getDescription());
                        }
                    }
                    AdobeCommunitySession.this.callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, jSONObjectArr[0], assetErrorFromResponse);
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    if (adobeNetworkException.getData() == null) {
                        AdobeCommunitySession.this.callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, null, adobeNetworkException);
                        return;
                    }
                    AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
                    if (adobeNetworkHttpResponse == null) {
                        AdobeCommunitySession.this.callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, null, adobeNetworkException);
                    } else {
                        onComplete(adobeNetworkHttpResponse);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            }, handler);
        }
        String strOptString3 = jSONObject != null ? jSONObject.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey) : null;
        if (!TextUtils.isEmpty(strOptString3)) {
            AdobeDCXComponent componentWithId = adobeDCXCompositeBranch.getComponentWithId(strOptString3);
            if (componentWithId == null || componentWithId.getVersion() == null) {
                callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, null, new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorUnknownId, "could not find artwork component"));
                return null;
            }
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("resource_path", resourceIdFromCPResourceHref(adobeDCXCompositeBranch.getManifest().getVersion()) + componentWithId.getAbsolutePath().substring(1));
                jSONObject4.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceVersion, componentWithId.getVersion());
                jSONObjectArr2[0].put(AdobeCommunityConstants.AdobeCommunityJSONArtworkKey, jSONObject4);
            } catch (JSONException e6) {
                e6.printStackTrace();
            }
        }
        callPublicationRecordDataCompletionHandler(iAdobeDCXPublicationRecordDataCompletionHandler, handler, jSONObjectArr[0], null);
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle uploadServerAssetWithHref(String str, final AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, final boolean z, final Handler handler, final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler) {
        URL url;
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComponent != null, "component must not be null");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXComposite != null, "composite must not be null");
        AdobeStorageErrorUtils.verifyArgument(str != null, "assethref must not be null");
        String componentLinkInfo = getComponentLinkInfo(adobeDCXComposite, adobeDCXComponent);
        if (componentLinkInfo == null) {
            componentLinkInfo = AdobeCommunityUtils.getRelativePathTo(constructComponentHref(adobeDCXComponent, adobeDCXComposite, false), getService().getBaseURL().toString());
        }
        try {
            url = new URI(componentLinkInfo + AdobeCommunityConstants.AdobeCommunityCopyHref).toURL();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            url = null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            url = null;
        }
        final AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("source", str);
            jSONObject3.put(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination, adobeDCXComponent.getAbsolutePath().substring(1));
            jSONObject3.put(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyContentType, adobeDCXComponent.getType());
            jSONObject2.put("files", jSONObject3);
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyCopy, jSONObject2);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        adobeNetworkHttpRequest.setBody(jSONObject.toString().getBytes(Charsets.UTF_8));
        return doCopy(!z, adobeNetworkHttpRequest, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.29
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getNetworkException() != null || (adobeNetworkHttpResponse.getStatusCode() != 404 && adobeNetworkHttpResponse.getStatusCode() != 409 && adobeNetworkHttpResponse.getStatusCode() != 412)) {
                    AdobeCommunitySession.this.doCopyResponseHandler(adobeNetworkHttpResponse, adobeDCXComponent, iAdobeDCXComponentRequestCompletionHandler, handler);
                } else {
                    AdobeCommunitySession.this.doCopy(z, adobeNetworkHttpRequest, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.29.1
                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                        public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse2) {
                            AdobeCommunitySession.this.doCopyResponseHandler(adobeNetworkHttpResponse2, adobeDCXComponent, iAdobeDCXComponentRequestCompletionHandler, handler);
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                        public void onError(AdobeNetworkException adobeNetworkException) {
                            iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    });
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDCXComponentRequestCompletionHandler.onCompletion(null, adobeNetworkException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeNetworkHttpTaskHandle doCopy(boolean z, final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final AdobeStorageSession.IStorageResponseCallback iStorageResponseCallback) {
        if (z) {
            adobeNetworkHttpRequest.setRequestProperty("If-Match", "*");
        } else {
            adobeNetworkHttpRequest.setRequestProperty("If-Match", null);
        }
        return getService().getResponseForDataRequest(adobeNetworkHttpRequest, null, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.30
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getNetworkException() == null && (adobeNetworkHttpResponse.getStatusCode() == 202 || adobeNetworkHttpResponse.getStatusCode() == 201)) {
                    AdobeCommunitySession.this.handle202Response(adobeNetworkHttpResponse, adobeNetworkHttpRequest, 10, iStorageResponseCallback);
                } else {
                    iStorageResponseCallback.onComplete(adobeNetworkHttpResponse);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iStorageResponseCallback.onError(adobeNetworkException);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doCopyResponseHandler(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse r12, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r13, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler r14, android.os.Handler r15) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.doCopyResponseHandler(com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentRequestCompletionHandler, android.os.Handler):void");
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public String getPublishedAssetIdFromAssetHref(String str) {
        return assetIdFromCPAssetHref(str);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPublishSessionProtocol
    public void setUploadService(IAdobeCSDKCloudUploadService iAdobeCSDKCloudUploadService) {
        this.uploadService = iAdobeCSDKCloudUploadService;
    }

    public String hrefForUploadedComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite) {
        return AdobeCommunityUtils.urlForComponent(adobeDCXComponent, adobeDCXComposite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callPublishHrefCompletionHandler(final IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler, Handler handler, final String str, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.31
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPublishHrefCompletionHandler.onComplete(str, adobeCSDKException);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.32
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPublishHrefCompletionHandler.onComplete(str, adobeCSDKException);
                }
            }).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callCompositeCompletionCompletionHandler(final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, Handler handler, final AdobeDCXComposite adobeDCXComposite, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.33
                @Override // java.lang.Runnable
                public void run() {
                    if (adobeCSDKException == null && adobeDCXComposite != null) {
                        iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeCSDKException);
                    }
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.34
                @Override // java.lang.Runnable
                public void run() {
                    if (adobeCSDKException == null && adobeDCXComposite != null) {
                        iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                    } else {
                        iAdobeDCXCompositeRequestCompletionHandler.onError(adobeCSDKException);
                    }
                }
            }).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callComponentCompletionHandler(final IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler, final AdobeDCXComponent adobeDCXComponent, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.35
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, adobeCSDKException);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.36
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXComponentRequestCompletionHandler.onCompletion(adobeDCXComponent, adobeCSDKException);
                }
            }).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callManifestCompletionHandler(final IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, Handler handler, final AdobeDCXManifest adobeDCXManifest, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.37
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXManifestRequestCompletionHandler.onCompletion(adobeDCXManifest, adobeCSDKException);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.38
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXManifestRequestCompletionHandler.onCompletion(adobeDCXManifest, adobeCSDKException);
                }
            }).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callPublicationRecordDataCompletionHandler(final IAdobeDCXPublicationRecordDataCompletionHandler iAdobeDCXPublicationRecordDataCompletionHandler, Handler handler, final JSONObject jSONObject, final AdobeCSDKException adobeCSDKException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.39
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPublicationRecordDataCompletionHandler.onComplete(jSONObject, adobeCSDKException);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.40
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXPublicationRecordDataCompletionHandler.onComplete(jSONObject, adobeCSDKException);
                }
            }).run();
        }
    }

    private void getCompositeInfo(final AdobeDCXComposite adobeDCXComposite, final IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler) {
        URL url;
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1CompositeCacheResult c1CompositeCacheResult = new C1CompositeCacheResult();
        if (AdobeCommunityUtils.getFromCache(getCompositeLinksCacheKey(adobeDCXComposite), AdobeCommunityConstants.AdobeCommunityCacheLinksDataKey, new IAdobeGenericCompletionCallback<Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.41
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Object obj) {
                reentrantLock.lock();
                try {
                    c1CompositeCacheResult.links = new JSONObject((String) obj);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                c1CompositeCacheResult.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        }, new IAdobeGenericErrorCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.42
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(String str) {
                reentrantLock.lock();
                c1CompositeCacheResult.error = str;
                c1CompositeCacheResult.done = true;
                conditionNewCondition.signal();
                reentrantLock.unlock();
            }
        })) {
            reentrantLock.lock();
            while (!c1CompositeCacheResult.done) {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            reentrantLock.unlock();
        }
        if (c1CompositeCacheResult.error == null && c1CompositeCacheResult.links != null) {
            adobeDCXComposite.setLinks(c1CompositeCacheResult.links);
            iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
            return;
        }
        try {
            url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobeDCXComposite.getHref().toString(), getService().baseURL().toString())).toURL();
        } catch (MalformedURLException e3) {
            e3.printStackTrace();
            url = null;
        } catch (URISyntaxException e4) {
            e4.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.43
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 200 || statusCode == 304) {
                    if (statusCode == 200) {
                        JSONObject linkInfo = AdobeCommunitySession.this.parseLinkInfo(AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()));
                        if (linkInfo != null) {
                            AdobeCommunityUtils.addToCache(AdobeCommunitySession.this.getCompositeLinksCacheKey(adobeDCXComposite), AdobeCommunityConstants.AdobeCommunityCacheLinksDataKey, linkInfo.toString());
                            adobeDCXComposite.setLinks(linkInfo);
                        }
                        iAdobeDCXCompositeRequestCompletionHandler.onCompletion(adobeDCXComposite);
                        return;
                    }
                    return;
                }
                iAdobeDCXCompositeRequestCompletionHandler.onError(AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse));
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
                iAdobeDCXCompositeRequestCompletionHandler.onError(adobeNetworkException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, null);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession$1CompositeCacheResult, reason: invalid class name */
    class C1CompositeCacheResult {
        public boolean done = false;
        public String error;
        public JSONObject links;

        C1CompositeCacheResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCompositeLinksCacheKey(AdobeDCXComposite adobeDCXComposite) {
        String string;
        String compositeId = adobeDCXComposite.getCompositeId();
        if (compositeId == null && (string = adobeDCXComposite.getHref().toString()) != null && string.contains(URIUtil.SLASH)) {
            return string.substring(string.lastIndexOf(URIUtil.SLASH) + 1);
        }
        return compositeId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject parseLinkInfo(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
        }
        return null;
    }

    private String getManifestLinkInfo(AdobeDCXComposite adobeDCXComposite) {
        JSONObject links = adobeDCXComposite.getLinks();
        if (links == null) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = links.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceManifestLinkKey);
        return AdobeCommunityUtils.getFormattedLink(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("href") : null, new AdobeCommunityRequestParams());
    }

    private String getComponentLinkInfo(AdobeDCXComposite adobeDCXComposite, AdobeDCXComponent adobeDCXComponent) {
        JSONObject links = adobeDCXComposite.getLinks();
        if (links == null) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = links.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceComponentLinkKey);
        String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("href") : null;
        AdobeCommunityRequestParams adobeCommunityRequestParams = new AdobeCommunityRequestParams();
        adobeCommunityRequestParams.setVersion(adobeDCXComponent.getVersion());
        adobeCommunityRequestParams.setPath(adobeDCXComponent.getComponentId());
        return AdobeCommunityUtils.getFormattedLink(strOptString, adobeCommunityRequestParams);
    }

    private String constructComponentHref(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, Boolean bool) {
        String strUrlForComponent = AdobeCommunityUtils.urlForComponent(adobeDCXComponent, adobeDCXComposite);
        if (!bool.booleanValue()) {
            return strUrlForComponent;
        }
        String strEncode = null;
        String version = adobeDCXComponent.getVersion() != null ? adobeDCXComponent.getVersion() : "0";
        boolean z = false;
        try {
            strEncode = URLEncoder.encode(version, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            Log.e("CommunitySession", "EncodeComponentVersionError:" + e2.getMessage());
            z = true;
        }
        if (z) {
            return AdobeDCXUtils.stringByAppendingLastPathComponent(strUrlForComponent, "version/" + version);
        }
        return AdobeDCXUtils.stringByAppendingLastPathComponent(strUrlForComponent, "version/" + strEncode);
    }

    private String constructManifestHref(AdobeDCXComposite adobeDCXComposite, String str) {
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXComposite.getHref().toString(), "manifest");
        if (str != null) {
            return AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, String.format("version/%s", str));
        }
        return strStringByAppendingLastPathComponent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeCommunityPublicationRecord parsePublicationRecordData(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        String strOptString = jSONObject.optString("title");
        String strOptString2 = jSONObject.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey);
        String strOptString3 = jSONObject.optString("resource_path");
        if (strOptString2 == null || strOptString == null || strOptString3 == null) {
            return null;
        }
        String strOptString4 = jSONObject.optString("description");
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("tags");
        String strOptString5 = jSONObject.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationAliasKey);
        boolean z = !jSONObject.optBoolean(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationUndiscoverableKey);
        Object objOpt = jSONObject.opt(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationCustomKey);
        ArrayList<String> arrayList = new ArrayList<>();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationEmbeddedKey);
        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationCreatorKey)) != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 != null) {
                    arrayList.add(jSONObjectOptJSONObject2.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey));
                }
            }
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("category");
        String strOptString6 = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optString("id") : null;
        ArrayList<String> arrayList2 = new ArrayList<>();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationSubCategoryKey);
        if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray3.length(); i2++) {
                JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3.optJSONObject(i2);
                if (jSONObjectOptJSONObject4 != null) {
                    arrayList2.add(jSONObjectOptJSONObject4.optString(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey));
                }
            }
        }
        AdobeCommunityPublicationRecord adobeCommunityPublicationRecord = new AdobeCommunityPublicationRecord(strOptString);
        adobeCommunityPublicationRecord.setAssetId(strOptString2);
        adobeCommunityPublicationRecord.setAlias(strOptString5);
        adobeCommunityPublicationRecord.setCustom(objOpt);
        adobeCommunityPublicationRecord.setDescription(strOptString4);
        adobeCommunityPublicationRecord.setDiscoverable(z);
        adobeCommunityPublicationRecord.setCategoryId(strOptString6);
        adobeCommunityPublicationRecord.setSubCategoryIds(arrayList2);
        adobeCommunityPublicationRecord.setCreatorIds(arrayList);
        adobeCommunityPublicationRecord.setTags(jSONArrayOptJSONArray2);
        return adobeCommunityPublicationRecord;
    }

    private AdobeNetworkHttpTaskHandle getPublicationRecordOfComposite(AdobeDCXComposite adobeDCXComposite, final IAdobeDCXPublicationRecordCompletionHandler iAdobeDCXPublicationRecordCompletionHandler) {
        Handler handler;
        String string = adobeDCXComposite.getHref().toString();
        if (AdobeStorageLastPathComponentUtil.getLastPathComponent(string).toLowerCase().equals("original")) {
            string = AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(string);
        }
        try {
            URL url = new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(string, getService().baseURL().toString())).toURL();
            try {
                handler = new Handler();
            } catch (Exception e2) {
                e2.printStackTrace();
                handler = null;
            }
            return getResponseFor(new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null), null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.44
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    if (adobeNetworkHttpResponse.getStatusCode() == 200 && adobeNetworkHttpResponse.getNetworkException() == null) {
                        try {
                            AdobeCommunityPublicationRecord publicationRecordData = AdobeCommunitySession.this.parsePublicationRecordData(new JSONObject(adobeNetworkHttpResponse.getDataString()));
                            if (publicationRecordData == null) {
                                iAdobeDCXPublicationRecordCompletionHandler.onComplete(publicationRecordData, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorMissingJSONData));
                                return;
                            } else {
                                iAdobeDCXPublicationRecordCompletionHandler.onComplete(publicationRecordData, null);
                                return;
                            }
                        } catch (JSONException e3) {
                            AdobeCommunityException adobeCommunityException = new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorInvalidJSONRepresentation, e3.getMessage());
                            e3.printStackTrace();
                            iAdobeDCXPublicationRecordCompletionHandler.onComplete(null, adobeCommunityException);
                            return;
                        }
                    }
                    iAdobeDCXPublicationRecordCompletionHandler.onComplete(null, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorInvalidPublicationRecord));
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeDCXPublicationRecordCompletionHandler.onComplete(null, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse, adobeNetworkException.getDescription()));
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            }, handler);
        } catch (MalformedURLException e3) {
            iAdobeDCXPublicationRecordCompletionHandler.onComplete(null, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse, "Malformed URL"));
            e3.printStackTrace();
            return null;
        } catch (URISyntaxException e4) {
            iAdobeDCXPublicationRecordCompletionHandler.onComplete(null, new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorUnexpectedResponse, "Malformed URL"));
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXTransferSessionProtocol
    public AdobeNetworkHttpTaskHandle downloadFromHref(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str2, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getCollectionOfSyncGroups() {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getCollectionForSyncGroup(String str) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public String getHrefForSyncGroup(String str) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeNetworkHttpTaskHandle getSyncGroups(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeNetworkHttpTaskHandle getAssetsInSyncGroup(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode, IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler, Handler handler) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncSessionProtocol
    public AdobeStorageResourceCollection getAssetsInSyncGroup(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStoragePagingMode adobeStoragePagingMode) throws AdobeCSDKException {
        return null;
    }

    public AdobeNetworkHttpTaskHandle downloadComponentRendition(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, AdobeCommunityAssetImageDimension adobeCommunityAssetImageDimension, int i, String str2, final IAdobeStorageDataRequestCompletionHandler iAdobeStorageDataRequestCompletionHandler, Handler handler) {
        String str3;
        URL url;
        String str4;
        String strSubstring = adobeDCXComponent.getAbsolutePath().substring(1);
        String path = adobeDCXComposite.getHref().getPath();
        URI href = adobeDCXComposite.getHref();
        String str5 = null;
        if (path.substring(0, "/content/2/".length()).equals("/content/2/")) {
            String str6 = null;
            if (str2.equals("image/jpeg") || str2.equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG)) {
                str6 = "jpg";
            } else if (str2.equals("image/png")) {
                str6 = "png";
            }
            if (Pattern.compile("^\\/?content\\/2\\/[^\\/]+\\/[^\\/]+").matcher(path).matches()) {
                str4 = null;
            } else {
                str4 = href.toString().substring(0, href.toString().lastIndexOf(URIUtil.SLASH)) + "/rendition/" + strSubstring + "/version/" + adobeDCXComponent.getVersion().toString() + "/format/" + str6 + "/dimension/" + (adobeCommunityAssetImageDimension == AdobeCommunityAssetImageDimension.AdobeCommunityAssetImageDimensionHeight ? "height" : "width") + "/size/" + Integer.toString(i);
            }
            str3 = str4;
        } else {
            Matcher matcher = Pattern.compile("^\\\\/?api\\\\/v2\\\\/[^\\\\/]+\\\\/assets\\\\/[^\\\\/]+").matcher(path);
            if (matcher.matches()) {
                str3 = null;
            } else {
                try {
                    str5 = href.toString().substring(matcher.start()) + "/rendition/" + (adobeCommunityAssetImageDimension == AdobeCommunityAssetImageDimension.AdobeCommunityAssetImageDimensionHeight ? "height/" : "width/") + Integer.toString(i) + URIUtil.SLASH + strSubstring + "?version=" + adobeDCXComponent.getVersion();
                    str3 = str5;
                } catch (IllegalStateException e2) {
                    AdobeLogger.log(Level.ERROR, "Not able to form urlString", e2.getMessage());
                    str3 = str5;
                }
            }
        }
        if (str3 != null) {
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            try {
                url = new URL(str3);
            } catch (MalformedURLException e3) {
                AdobeLogger.log(Level.INFO, TAG, e3.toString());
                url = null;
            }
            if (url != null) {
                adobeNetworkHttpRequest.setUrl(url);
                adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            }
            return getResponseFor(adobeNetworkHttpRequest, str, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession.45
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    int statusCode = adobeNetworkHttpResponse.getStatusCode();
                    if (statusCode == 200 || statusCode == 304) {
                        iAdobeStorageDataRequestCompletionHandler.onComplete(adobeNetworkHttpResponse.getDataBytes());
                    } else {
                        iAdobeStorageDataRequestCompletionHandler.onError(AdobeCommunitySession.this.getAssetErrorFromResponse(adobeNetworkHttpResponse));
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeStorageDataRequestCompletionHandler.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    iAdobeStorageDataRequestCompletionHandler.onProgress(d2);
                }
            }, handler);
        }
        return null;
    }

    class GenericNetworkResponse {
        public AdobeCSDKException error;
        public AdobeNetworkHttpResponse response;

        GenericNetworkResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeCSDKException adobeCSDKException) {
            this.response = adobeNetworkHttpResponse;
            this.error = adobeCSDKException;
        }
    }
}
