package com.adobe.creativesdk.foundation.internal.comments;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSessionModel;
import com.adobe.creativesdk.foundation.internal.comments.models.AdobeAssetCommentsDataSource;
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
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.io.Charsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommentsSession {
    public static final String APPLICATION_JSON = "application/json";
    public static final String INVITES = "invites";
    public static final String RESOURCE_TYPE = "resourceType";
    private static AdobeAuthIMSEnvironment imsEnvironment;
    private static Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap;
    private AdobeNetworkHttpService service;
    private static final String T = AdobeCommentsSession.class.getSimpleName();
    private static AdobeCommentsSession sharedSession = null;
    private static LoginNotificationObserver observer = null;

    interface IAdobeCollaborationResponseCallback {
        void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

        void onError(AdobeNetworkException adobeNetworkException);
    }

    private AdobeCommentsSession() {
        synchronized (AdobeCommentsSession.class) {
            if (observer == null) {
                observer = new LoginNotificationObserver();
            }
        }
    }

    public static AdobeCommentsSession getSharedSession() {
        AdobeCommentsSession adobeCommentsSession;
        synchronized (AdobeCommentsSession.class) {
            if (sharedSession == null) {
                sharedSession = new AdobeCommentsSession();
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                String accessToken = sharedInstance.getAccessToken();
                imsEnvironment = sharedInstance.getEnvironment();
                String str = null;
                HashMap map = new HashMap();
                switch (imsEnvironment) {
                    case AdobeAuthIMSEnvironmentTestUS2:
                        str = "https://cc-collab-dev.adobe.io";
                        break;
                    case AdobeAuthIMSEnvironmentStageUS:
                        str = "https://cc-collab-stage.adobe.io";
                        map.put("x-api-key", sharedInstance.getClientID());
                        break;
                    case AdobeAuthIMSEnvironmentProductionUS:
                        Log.e(T, "first Endpoint");
                        str = "https://comments.adobe.io";
                        map.put("x-api-key", "redhawkclient2");
                        break;
                    default:
                        AdobeLogger.log(Level.ERROR, "Collaboration Session", "An undefined authentication endpoint has been specified for the collaboration session");
                        break;
                }
                requestMap = new HashMap();
                AdobeNetworkHttpService adobeNetworkHttpService = new AdobeNetworkHttpService(str, sharedInstance.getClientID(), map);
                adobeNetworkHttpService.setAccessToken(accessToken);
                sharedSession.initWithHTTPService(adobeNetworkHttpService);
                adobeNetworkHttpService.setHttpServiceDelegate(AdobeCollaborationSessionModel.getSharedModel());
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, observer);
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, observer);
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, observer);
            }
            adobeCommentsSession = sharedSession;
        }
        return adobeCommentsSession;
    }

    public AdobeCommentsSession initWithHTTPService(AdobeNetworkHttpService adobeNetworkHttpService) {
        this.service = adobeNetworkHttpService;
        return this;
    }

    public AdobeNetworkHttpService service() {
        return this.service;
    }

    private AdobeNetworkHttpRequest getResponseForString(String str, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        return getResponseForString(str, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, null, iAdobeCollaborationResponseCallback);
    }

    private AdobeNetworkHttpRequest getResponseForString(String str, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        return getResponseForString(str, adobeNetworkHttpRequestMethod, null, null, iAdobeCollaborationResponseCallback);
    }

    private AdobeNetworkHttpRequest getResponseForString(String str, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, String str2, String str3, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        if (isEmpty(str)) {
            return null;
        }
        if (!isEmpty(str2) && isEmpty(str3)) {
            return null;
        }
        try {
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(new URI(this.service.baseURL().toString() + URIUtil.SLASH + str).toURL());
            adobeNetworkHttpRequest.setRequestMethod(adobeNetworkHttpRequestMethod);
            if (str2 != null) {
                adobeNetworkHttpRequest.setRequestProperty("Accept", str3);
                adobeNetworkHttpRequest.setRequestProperty("Content-Type", str3);
            }
            if (str2 == null) {
                str2 = null;
            }
            return getResponseFor(adobeNetworkHttpRequest, null, str2, iAdobeCollaborationResponseCallback);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return null;
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private AdobeNetworkHttpRequest getResponseFor(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, String str2, final IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        Handler handler;
        AdobeNetworkHttpTaskHandle responseForUploadRequest;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCommentsSession.requestMap.remove(adobeNetworkHttpRequest);
                iAdobeCollaborationResponseCallback.onComplete(adobeNetworkHttpResponse);
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeCollaborationResponseCallback.onError(adobeNetworkException);
            }
        };
        if (str == null) {
            if (str2 != null) {
                adobeNetworkHttpRequest.setBody(str2.getBytes(Charsets.UTF_8));
            }
            responseForUploadRequest = this.service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET) {
            responseForUploadRequest = this.service.getResponseForDownloadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else if (adobeNetworkHttpRequest.getRequestMethod() == AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD) {
            responseForUploadRequest = this.service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } else {
            responseForUploadRequest = this.service.getResponseForUploadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        }
        requestMap.put(adobeNetworkHttpRequest, responseForUploadRequest);
        return adobeNetworkHttpRequest;
    }

    public AdobeNetworkHttpRequest getComments(final AdobeAsset adobeAsset, final IAdobeGetCommentsCallback iAdobeGetCommentsCallback) {
        if (adobeAsset == null) {
            AdobeLogger.log(Level.ERROR, "GetComments", "Resource Cannot be Null");
            iAdobeGetCommentsCallback.onError();
            return null;
        }
        return getResponseForString(String.format("comments%s", Uri.encode(adobeAsset.getHref().toString()).replace("%2F", URIUtil.SLASH)), new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.2
            @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                try {
                    iAdobeGetCommentsCallback.onSuccess(AdobeAssetCommentsDataSource.commentsFromJSONData(new JSONArray(adobeNetworkHttpResponse.getDataString()), adobeAsset));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGetCommentsCallback.onError();
            }
        });
    }

    public AdobeNetworkHttpRequest createComment(AdobeAsset adobeAsset, String str, String str2, String str3, final IAdobeAddCommentCallback iAdobeAddCommentCallback) {
        if (adobeAsset == null) {
            AdobeLogger.log(Level.ERROR, "createComment", "resource cannot be null.");
            iAdobeAddCommentCallback.onError();
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("resourceType", "application/vnd.adobe.asset");
            jSONObject.put("resource", adobeAsset.getHref());
            jSONObject.put(AppsForYourDomainQuery.USERNAME, str);
            jSONObject.put("email", str2);
            jSONObject.put("content", str3);
            jSONObject.put("attributes", new JSONObject());
            return getResponseForString("comments", AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, jSONObject.toString(), "application/json", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.3
                @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    iAdobeAddCommentCallback.onSuccess(AdobeCommentsSession.this.getCommentURL(adobeNetworkHttpResponse));
                }

                @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeAddCommentCallback.onError();
                }
            });
        } catch (JSONException e2) {
            iAdobeAddCommentCallback.onError();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCommentURL(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        try {
            return adobeNetworkHttpResponse.getHeaders().get("location").get(0);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public AdobeNetworkHttpRequest deleteComment(String str, final IAdobeDeleteCommentCallback iAdobeDeleteCommentCallback) {
        if (str == null) {
            AdobeLogger.log(Level.ERROR, "deleteComment", "url cannot be null");
            iAdobeDeleteCommentCallback.onError();
            return null;
        }
        String str2 = String.format("%s", str);
        IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback = new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.4
            @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                iAdobeDeleteCommentCallback.onSuccess();
            }

            @Override // com.adobe.creativesdk.foundation.internal.comments.AdobeCommentsSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDeleteCommentCallback.onError();
            }
        };
        try {
            URL url = new URL(str);
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE);
            return getResponseFor(adobeNetworkHttpRequest, null, null, iAdobeCollaborationResponseCallback);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return getResponseForString(str2, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, iAdobeCollaborationResponseCallback);
        }
    }

    private boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    class LoginNotificationObserver implements Observer {
        private LoginNotificationObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginNotification || adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginExternalNotification) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                AdobeNetworkHttpService adobeNetworkHttpServiceService = AdobeCommentsSession.this.service();
                adobeNetworkHttpServiceService.setAccessToken(sharedInstance.getAccessToken());
                adobeNetworkHttpServiceService.setSuspended(false);
                AdobeCollaborationSessionModel.getSharedModel().login();
                return;
            }
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification) {
                AdobeNetworkHttpService adobeNetworkHttpServiceService2 = AdobeCommentsSession.this.service();
                adobeNetworkHttpServiceService2.clearQueuedRequests();
                adobeNetworkHttpServiceService2.reconnect();
                adobeNetworkHttpServiceService2.setAccessToken(null);
                AdobeCollaborationSessionModel.getSharedModel().logout();
            }
        }
    }
}
