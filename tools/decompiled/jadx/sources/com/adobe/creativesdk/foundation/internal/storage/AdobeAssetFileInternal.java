package com.adobe.creativesdk.foundation.internal.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageAssetFileInfo;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetFileInternal extends AdobeAssetFile {
    public int _videDuration;
    public String hlsHref;

    public AdobeAssetFileInternal() {
    }

    public AdobeAssetFileInternal(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        super(adobeStorageResourceItem, adobeStorageResourceCollection);
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getHlsHref() {
        return this.hlsHref;
    }

    public int getVideoDuration() {
        return this._videDuration;
    }

    public boolean canStreamVideo() {
        if (this.hlsHref == null) {
            return false;
        }
        try {
            new URL(this.hlsHref);
            return true;
        } catch (MalformedURLException e2) {
            return false;
        }
    }

    public static AdobeAssetFile AdobeAssetFileFromInfo(AdobeStorageAssetFileInfo adobeStorageAssetFileInfo) {
        return AdobeAssetFile.AdobeAssetFileFromInfo(adobeStorageAssetFileInfo);
    }

    public static void createFromURL(String str, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeAssetException> iAdobeGenericRequestCallback, Handler handler, AdobeCloud adobeCloud) {
        final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(str);
        final AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(str.substring(str.lastIndexOf(URIUtil.SLASH)));
        if (adobeCloud != null) {
            ((AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).getAssetMetadata(adobeStorageResourceItemResourceFromHref, new IAdobeStorageDataRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal.1
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageDataRequestCompletionHandler
                public void onComplete(byte[] bArr) {
                    try {
                        try {
                            adobeStorageResourceItemResourceFromHref.updateFromCollectionDictionary(AdobeStorageUtils.JSONObjectWithData(new String(bArr, "UTF-8")));
                            iAdobeGenericRequestCallback.onCompletion(new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeStorageResourceCollectionCollectionFromHref));
                        } catch (Exception e2) {
                            iAdobeGenericRequestCallback.onCompletion(null);
                        }
                    } catch (UnsupportedEncodingException e3) {
                        iAdobeGenericRequestCallback.onCompletion(null);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    iAdobeGenericRequestCallback.onError(adobeAssetException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            }, handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tmpFileupdateFunction(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, String str2, String str3, final AdobeStorageSession adobeStorageSession, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeAssetException> iAdobeGenericRequestCallback) {
        URI uri;
        URI uri2;
        try {
            uri = new URI("temp/");
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            uri = null;
        }
        final AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(uri);
        try {
            uri2 = new URI(adobeStorageResourceCollectionCollectionFromHref.href + str2);
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            uri2 = null;
        }
        if (uri2 == null) {
            iAdobeGenericRequestCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorBadRequest));
            return;
        }
        final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri2);
        adobeStorageResourceItemResourceFromHref.type = str3;
        adobeStorageSession.getResponseFor(adobeNetworkHttpRequest, str, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode == 201 || statusCode == 200 || statusCode == 204) {
                    try {
                        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                        if (headers != null) {
                            if (headers.containsKey("etag")) {
                                adobeStorageResourceItemResourceFromHref.etag = headers.get("etag").get(0);
                            }
                            if (headers.containsKey("x-latest-version")) {
                                adobeStorageResourceItemResourceFromHref.setVersion(headers.get("x-latest-version").get(0));
                            }
                            if (headers.containsKey("content-md5")) {
                                adobeStorageResourceItemResourceFromHref.setMd5(headers.get("content-md5").get(0));
                            }
                            if (headers.containsKey(AdobeStorageSession.X_RESOURCE_ID)) {
                                adobeStorageResourceItemResourceFromHref.internalID = headers.get(AdobeStorageSession.X_RESOURCE_ID).get(0);
                            }
                            if (headers.containsKey("date")) {
                                adobeStorageResourceItemResourceFromHref.modified = headers.get("date").get(0);
                            }
                        }
                        if (adobeNetworkHttpResponse.getDataString() != null) {
                            JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                            if (jSONObjectJSONObjectWithData != null) {
                                adobeStorageResourceItemResourceFromHref.internalID = jSONObjectJSONObjectWithData.getString("id");
                                adobeStorageResourceItemResourceFromHref.setLength(Integer.valueOf(jSONObjectJSONObjectWithData.getInt(AdobeCommunityConstants.AdobeCommunityResourceSizeKey)));
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
                                adobeStorageResourceItemResourceFromHref.setOptionalMetadata(jSONObject);
                            }
                        } else if (adobeNetworkHttpResponse.getBytesSent() != 0) {
                            adobeStorageResourceItemResourceFromHref.setLength(Integer.valueOf(adobeNetworkHttpResponse.getBytesSent()));
                        }
                    } catch (JSONException e4) {
                    }
                    iAdobeGenericRequestCallback.onCompletion(new AdobeAssetFileInternal(adobeStorageResourceItemResourceFromHref, adobeStorageResourceCollectionCollectionFromHref));
                    return;
                }
                AdobeStorageSession adobeStorageSession2 = adobeStorageSession;
                iAdobeGenericRequestCallback.onError(AdobeStorageSession.getAssetErrorFromResponse(adobeNetworkHttpResponse));
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeStorageSession adobeStorageSession2 = adobeStorageSession;
                iAdobeGenericRequestCallback.onError(AdobeStorageSession.getStorageError(adobeNetworkException));
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }
        });
    }

    public static void createTmpFile(String str, final String str2, final String str3, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeAssetException> iAdobeGenericRequestCallback, Handler handler) {
        URI uri;
        URI uri2;
        final String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
        if (validatedAssetName == null || str.equals("")) {
            HashMap map = new HashMap();
            map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Illegal Characters in name");
            map.put("AdobeNetworkHTTPStatus", 400);
            final AdobeAssetException adobeAssetException = new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, map);
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal.3
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericRequestCallback.onError(adobeAssetException);
                    }
                });
                return;
            } else {
                iAdobeGenericRequestCallback.onError(adobeAssetException);
                return;
            }
        }
        try {
            uri = new URI("temp/");
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            uri = null;
        }
        try {
            uri2 = new URI(AdobeStorageResourceCollection.collectionFromHref(uri).href + validatedAssetName);
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            uri2 = null;
        }
        if (uri2 == null) {
            iAdobeGenericRequestCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorBadRequest));
            return;
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(uri2);
        adobeStorageResourceItemResourceFromHref.type = str3;
        final AdobeStorageSession adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        final AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = adobeStorageSession.requestFor(adobeStorageResourceItemResourceFromHref, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, null, true);
        adobeStorageSession.getHeaderInfoForFile(adobeStorageResourceItemResourceFromHref, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal.4
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                adobeNetworkHttpRequestRequestFor.setRequestProperty("If-Match", "*");
                AdobeAssetFileInternal.tmpFileupdateFunction(adobeNetworkHttpRequestRequestFor, str2, validatedAssetName, str3, adobeStorageSession, iAdobeGenericRequestCallback);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException2) {
                if (adobeAssetException2.getHttpStatusCode().intValue() == 404) {
                    AdobeAssetFileInternal.tmpFileupdateFunction(adobeNetworkHttpRequestRequestFor, str2, validatedAssetName, str3, adobeStorageSession, iAdobeGenericRequestCallback);
                } else {
                    iAdobeGenericRequestCallback.onError(adobeAssetException2);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    public static AdobeAssetFile internalCreate(String str, AdobeAssetFolder adobeAssetFolder, AdobeCloud adobeCloud, URL url, String str2, IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        return AdobeAssetFile.create(str, adobeAssetFolder, adobeCloud, url, str2, iAdobeGenericRequestCallback, handler);
    }

    public static AdobeAssetFile internalCreateFromStream(String str, AdobeAssetFolder adobeAssetFolder, AdobeCloud adobeCloud, InputStream inputStream, String str2, IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        return AdobeAssetFile.createFromStream(str, adobeAssetFolder, adobeCloud, inputStream, str2, iAdobeGenericRequestCallback, handler);
    }

    public AdobeAssetFolder getParentAssetFolder() {
        return getParentFolder();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetFileInternal) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setModifiedDate(Date date) {
        this.modificationDate = date;
    }

    public AdobeStorageResourceItem getStorageResourceItem() {
        return this.asrItem;
    }
}
