package com.adobe.creativesdk.foundation.internal.collaboration;

import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeChangeCollaborationRoleCallback;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationAcceptOrRejectInviteCallBack;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationContactsCallback;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationCreateInvitesDelegate;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationGetCollaborationCallback;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationGetInvitesCallBack;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationInviteUserCallBack;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboration;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRoleChangeResult;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorContact;
import com.adobe.creativesdk.foundation.internal.comments.IAdobeAddCommentCallback;
import com.adobe.creativesdk.foundation.internal.comments.IAdobeDeleteCommentCallback;
import com.adobe.creativesdk.foundation.internal.comments.IAdobeGetCommentsCallback;
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
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.regex.Pattern;
import org.apache.commons.io.Charsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationSession {
    public static final String ADOBE_LIBRARIES = "/adobe-libraries/";
    public static final String APPLICATION_JSON = "application/json";
    public static final String APPLICATION_VND_ADOBE_LIBRARY_DCX = "application/vnd.adobe.library+dcx";
    public static final String APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON = "application/x-sharedcloud-collection+json";
    public static final String HTTPS_CC_API_STORAGE_ADOBE_IO = "https://cc-api-storage.adobe.io";
    public static final String HTTPS_CC_API_STORAGE_STAGE_ADOBE_IO = "https://cc-api-storage-stage.adobe.io";
    public static final String INVALID_EMAIL_ADDRESS = "Invalid Email Address";
    public static final String INVALID_FOLDER = "Invalid Folder";
    public static final String INVITES = "invites";
    public static final String RESOURCE_TYPE = "resourceType";
    public static final String STATUS_CODE = "statusCode";
    public static final String STATUS_TEXT = "statusText";
    public static final String VND_ADOBE_ELEMENT = "vnd.adobe.element";
    public static final String VND_ADOBE_LIBRARY = "vnd.adobe.library";
    private static AdobeAuthIMSEnvironment imsEnvironment;
    private static Map<AdobeNetworkHttpRequest, AdobeNetworkHttpTaskHandle> requestMap;
    private AdobeNetworkHttpService service;
    private static AdobeCollaborationSession sharedSession = null;
    private static LoginNotificationObserver observer = null;
    private static String storageUrl = null;

    interface IAdobeCollaborationResponseCallback {
        void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse);

        void onError(AdobeNetworkException adobeNetworkException);
    }

    private AdobeCollaborationSession() {
        synchronized (AdobeCollaborationSession.class) {
            if (observer == null) {
                observer = new LoginNotificationObserver();
            }
        }
    }

    public static AdobeCollaborationSession getSharedSession() {
        AdobeCollaborationSession adobeCollaborationSession;
        synchronized (AdobeCollaborationSession.class) {
            if (sharedSession == null) {
                sharedSession = new AdobeCollaborationSession();
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
                        str = "https://cc-collab.adobe.io";
                        map.put("x-api-key", sharedInstance.getClientID());
                        break;
                    default:
                        AdobeLogger.log(Level.ERROR, "Collaboration Session", "An undefined authentication endpoint has been specified for the collaboration session");
                        break;
                }
                populateStorageUrl();
                requestMap = new HashMap();
                AdobeNetworkHttpService adobeNetworkHttpService = new AdobeNetworkHttpService(str, sharedInstance.getClientID(), map);
                adobeNetworkHttpService.setAccessToken(accessToken);
                sharedSession.initWithHTTPService(adobeNetworkHttpService);
                adobeNetworkHttpService.setHttpServiceDelegate(AdobeCollaborationSessionModel.getSharedModel());
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, observer);
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, observer);
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, observer);
            }
            adobeCollaborationSession = sharedSession;
        }
        return adobeCollaborationSession;
    }

    private static void populateStorageUrl() {
        AdobeCloudManager sharedCloudManager = AdobeCloudManager.getSharedCloudManager();
        if (sharedCloudManager != null && sharedCloudManager.getDefaultCloud() != null) {
            AdobeStorageSession adobeStorageSession = (AdobeStorageSession) sharedCloudManager.getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
            if (adobeStorageSession != null) {
                storageUrl = adobeStorageSession.getService().getBaseURL().toString();
                return;
            } else {
                populateStorageUrlUsingEnvironment();
                return;
            }
        }
        populateStorageUrlUsingEnvironment();
    }

    private static void populateStorageUrlUsingEnvironment() {
        switch (imsEnvironment) {
            case AdobeAuthIMSEnvironmentStageUS:
                storageUrl = HTTPS_CC_API_STORAGE_STAGE_ADOBE_IO;
                break;
            case AdobeAuthIMSEnvironmentProductionUS:
                storageUrl = HTTPS_CC_API_STORAGE_ADOBE_IO;
                break;
            case AdobeAuthIdentityManagementServiceUndefined:
            default:
                AdobeLogger.log(Level.ERROR, AdobeStorageSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                break;
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                storageUrl = "https://cc-api-storage-labs.adobe.io";
                break;
        }
    }

    public AdobeCollaborationSession initWithHTTPService(AdobeNetworkHttpService adobeNetworkHttpService) {
        this.service = adobeNetworkHttpService;
        return this;
    }

    public AdobeNetworkHttpService service() {
        return this.service;
    }

    public AdobeNetworkHttpRequest getCollaboration(String str, final IAdobeCollaborationGetCollaborationCallback iAdobeCollaborationGetCollaborationCallback) {
        if (str == null) {
            iAdobeCollaborationGetCollaborationCallback.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_FOLDER, null, INVALID_FOLDER));
            return null;
        }
        return getResponseForString(String.format("collaboration%s?fields=ownerId", Uri.encode(str).replace("%2F", URIUtil.SLASH)), new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.1
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationGetCollaborationCallback.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationGetCollaborationCallback.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationGetCollaborationCallback.onComplete(AdobeCollaboration.collaborationWithDictionary(AdobeCollaborationSession.jsonObjectFromResponse(adobeNetworkHttpResponse.getDataString())));
                }
            }
        });
    }

    public AdobeNetworkHttpRequest removeCollaborator(String str, String str2, final IAdobeCollaborationRemoveCollaboratorCallback iAdobeCollaborationRemoveCollaboratorCallback) {
        if (str == null) {
            iAdobeCollaborationRemoveCollaboratorCallback.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_FOLDER, null, INVALID_FOLDER));
            return null;
        }
        if (str2 == null || str2.length() == 0) {
            iAdobeCollaborationRemoveCollaboratorCallback.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_USER_ID, null, "Invalid User ID"));
            return null;
        }
        return getResponseForString(String.format("collaborators%s?user=%s", Uri.encode(str).replace("%2F", URIUtil.SLASH), str2), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.2
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationRemoveCollaboratorCallback.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationRemoveCollaboratorCallback.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationRemoveCollaboratorCallback.onComplete();
                }
            }
        });
    }

    @Deprecated
    public AdobeNetworkHttpRequest createInvite(String str, String str2, final IAdobeCollaborationInviteUserCallBack iAdobeCollaborationInviteUserCallBack) {
        if (str == null) {
            iAdobeCollaborationInviteUserCallBack.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_FOLDER, null, INVALID_FOLDER));
            return null;
        }
        if (str2 == null || str2.length() == 0) {
            iAdobeCollaborationInviteUserCallBack.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_EMAIL, null, INVALID_EMAIL_ADDRESS));
            return null;
        }
        String str3 = APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON;
        if (str.contains(ADOBE_LIBRARIES)) {
            str = str.substring(6);
            str3 = "application/vnd.adobe.library+dcx";
        }
        String strTrim = str2.trim();
        if (!Pattern.compile("^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}").matcher(strTrim).find()) {
            iAdobeCollaborationInviteUserCallBack.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_EMAIL, null, INVALID_EMAIL_ADDRESS));
            return null;
        }
        return getResponseForString("invites", AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, String.format("{\"resourceUrl\": \"%s%s\",\"recipientEmail\": \"%s\",\"recipientRole\":\"%s\",\"resourceName\": \"%s\",\"resourceType\":\"%s\"}", storageUrl, str, strTrim, AdobeCollaborationRole.ADOBE_COLLABORATION_TYPE_EDITOR.toString(), getResourceComponent(str), str3), "application/json", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.3
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationInviteUserCallBack.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationInviteUserCallBack.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationInviteUserCallBack.onComplete(AdobeCollaborationInvite.inviteWithDictionary(AdobeCollaborationSession.jsonObjectFromResponse(adobeNetworkHttpResponse.getDataString())));
                }
            }
        });
    }

    public AdobeNetworkHttpRequest createInvite(String str, List<String> list, AdobeCollaborationRole adobeCollaborationRole, String str2, final IAdobeCollaborationCreateInvitesDelegate iAdobeCollaborationCreateInvitesDelegate) {
        AdobeCollaborationRole adobeCollaborationRole2 = adobeCollaborationRole == null ? AdobeCollaborationRole.ADOBE_COLLABORATION_TYPE_EDITOR : adobeCollaborationRole;
        if (str == null) {
            iAdobeCollaborationCreateInvitesDelegate.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_FOLDER, null, INVALID_FOLDER));
            return null;
        }
        if (list == null || list.isEmpty()) {
            iAdobeCollaborationCreateInvitesDelegate.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_EMAIL, null, INVALID_EMAIL_ADDRESS));
            return null;
        }
        String str3 = APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON;
        if (str.contains(ADOBE_LIBRARIES)) {
            str3 = "application/vnd.adobe.library+dcx";
        }
        return getResponseForString("invites", AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, createPostDataForInvite(storageUrl + str, list, adobeCollaborationRole2, getResourceComponent(str), str3, str2), "application/json", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.4
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationCreateInvitesDelegate.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationCreateInvitesDelegate.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationCreateInvitesDelegate.onComplete(AdobeCollaborationInvite.inviteWithDictionary(AdobeCollaborationSession.jsonArrayFromResponse(adobeNetworkHttpResponse.getDataString())));
                }
            }
        });
    }

    public AdobeNetworkHttpRequest getInvites(final IAdobeCollaborationGetInvitesCallBack iAdobeCollaborationGetInvitesCallBack) {
        return getResponseForString("invites", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.5
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationGetInvitesCallBack.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationGetInvitesCallBack.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                    return;
                }
                try {
                    JSONArray jSONArrayJsonArrayFromResponse = AdobeCollaborationSession.jsonArrayFromResponse(adobeNetworkHttpResponse.getDataString());
                    ArrayList arrayList = new ArrayList();
                    if (jSONArrayJsonArrayFromResponse != null) {
                        AdobeCollaborationSession.this.populateInvites(jSONArrayJsonArrayFromResponse, arrayList);
                    }
                    iAdobeCollaborationGetInvitesCallBack.onComplete(arrayList);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void populateInvites(JSONArray jSONArray, ArrayList<AdobeCollaborationInvite> arrayList) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            AdobeCollaborationInvite adobeCollaborationInviteInviteWithDictionary = AdobeCollaborationInvite.inviteWithDictionary(jSONArray.getJSONObject(i));
            if (adobeCollaborationInviteInviteWithDictionary != null) {
                arrayList.add(adobeCollaborationInviteInviteWithDictionary);
            }
        }
    }

    public AdobeNetworkHttpRequest acceptInvite(String str, final IAdobeCollaborationAcceptOrRejectInviteCallBack iAdobeCollaborationAcceptOrRejectInviteCallBack) {
        if (str == null || str.length() == 0) {
            iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_INVITE_ID, null, "Invalid Invitation ID"));
            return null;
        }
        return getResponseForString(String.format("invites/%s", str), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.6
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationAcceptOrRejectInviteCallBack.onComplete();
                }
            }
        });
    }

    public AdobeNetworkHttpRequest rejectInvite(String str, final IAdobeCollaborationAcceptOrRejectInviteCallBack iAdobeCollaborationAcceptOrRejectInviteCallBack) {
        if (str == null || str.length() == 0) {
            iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_INVALID_INVITE_ID, null, "Invalid Invitation ID"));
            return null;
        }
        return getResponseForString(String.format("invites/%s", str), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.7
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationAcceptOrRejectInviteCallBack.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationAcceptOrRejectInviteCallBack.onComplete();
                }
            }
        });
    }

    public AdobeNetworkHttpRequest getContacts(final IAdobeCollaborationContactsCallback iAdobeCollaborationContactsCallback) {
        return getResponseForString("contacts", AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.8
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeCollaborationContactsCallback.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode < 200 || statusCode > 299) {
                    iAdobeCollaborationContactsCallback.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(adobeNetworkHttpResponse));
                } else {
                    iAdobeCollaborationContactsCallback.onComplete(AdobeCollaboratorContact.getContactsFromResponse(AdobeCollaborationSession.jsonArrayFromResponse(adobeNetworkHttpResponse.getDataString())));
                }
            }
        });
    }

    public AdobeNetworkHttpRequest changeCollaboratorRole(@NonNull String str, @NonNull String str2, @NonNull AdobeCollaborationRole adobeCollaborationRole, final IAdobeChangeCollaborationRoleCallback iAdobeChangeCollaborationRoleCallback) {
        if (str.startsWith(URIUtil.SLASH)) {
            str = str.substring(1);
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("userId", str2);
            jSONObject.put(AppsGroupsService.APPS_PROP_GROUP_ROLE, adobeCollaborationRole.toString());
            jSONArray.put(jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return getResponseForString(String.format("collaborators/%s", str), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, jSONArray.toString(), "application/json", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.9
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeCollaborationException adobeCollaborationException;
                AdobeNetworkHttpResponse responseFromError = AdobeCollaborationSession.this.getResponseFromError(adobeNetworkException);
                if (responseFromError != null) {
                    adobeCollaborationException = AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponse(responseFromError);
                } else {
                    adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkException.getData(), null);
                }
                iAdobeChangeCollaborationRoleCallback.onError(adobeCollaborationException);
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                try {
                    JSONObject jSONObject2 = (JSONObject) new JSONArray(adobeNetworkHttpResponse.getDataString()).get(0);
                    int i = Integer.parseInt(jSONObject2.getString(AdobeCollaborationSession.STATUS_CODE));
                    if (i < 200 || i > 299) {
                        iAdobeChangeCollaborationRoleCallback.onError(AdobeCollaborationSession.this.getCollaborationExceptionFromNetworkResponseData(jSONObject2));
                    } else {
                        AdobeCollaborationRoleChangeResult adobeCollaborationRoleChangeResult = new AdobeCollaborationRoleChangeResult();
                        adobeCollaborationRoleChangeResult.setStatusCode(jSONObject2.getInt(AdobeCollaborationSession.STATUS_CODE));
                        adobeCollaborationRoleChangeResult.setStatusText(jSONObject2.getString(AdobeCollaborationSession.STATUS_TEXT));
                        adobeCollaborationRoleChangeResult.setUserId(jSONObject2.getString("userId"));
                        iAdobeChangeCollaborationRoleCallback.onComplete(adobeCollaborationRoleChangeResult);
                    }
                } catch (JSONException e3) {
                    iAdobeChangeCollaborationRoleCallback.onError(null);
                    e3.printStackTrace();
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest retrieveLink(java.lang.String r8, java.lang.String r9, final com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack r10) {
        /*
            r7 = this;
            r6 = 400(0x190, float:5.6E-43)
            r5 = 1
            r4 = 0
            r3 = 0
            if (r8 != 0) goto Lb
            r10.onError(r6)
        La:
            return r3
        Lb:
            java.lang.String r0 = "application/vnd.adobe"
            boolean r0 = r9.contains(r0)
            if (r0 != 0) goto L25
            java.lang.String r0 = "links%s"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            r1[r4] = r8
            java.lang.String r1 = java.lang.String.format(r0, r1)
        L1f:
            if (r1 != 0) goto L73
            r10.onError(r6)
            goto La
        L25:
            java.lang.String r0 = "vnd.adobe.directory"
            boolean r0 = r9.contains(r0)
            if (r0 == 0) goto L3a
            java.lang.String r0 = "links%s"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            r1[r4] = r8
            java.lang.String r1 = java.lang.String.format(r0, r1)
            goto L1f
        L3a:
            java.lang.String r0 = "vnd.adobe.library"
            boolean r0 = r9.contains(r0)
            if (r0 != 0) goto L4c
            java.lang.String r0 = "vnd.adobe.element"
            boolean r0 = r9.contains(r0)
            if (r0 == 0) goto L81
        L4c:
            int[] r0 = com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.AnonymousClass17.$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment
            com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment r1 = com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.imsEnvironment
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 2: goto L6b;
                case 3: goto L6f;
                default: goto L59;
            }
        L59:
            r0 = r3
        L5a:
            if (r0 == 0) goto L81
            java.lang.String r1 = "links/%s/assets/adobe-libraries/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r4] = r0
            r2[r5] = r8
            java.lang.String r1 = java.lang.String.format(r1, r2)
            goto L1f
        L6b:
            java.lang.String r0 = "https://cc-api-storage-stage.adobe.io"
            goto L5a
        L6f:
            java.lang.String r0 = "https://cc-api-storage.adobe.io"
            goto L5a
        L73:
            com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession$10 r5 = new com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession$10
            r5.<init>()
            com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod r2 = com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET
            r0 = r7
            r4 = r3
            com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest r3 = r0.getResponseForLink(r1, r2, r3, r4, r5)
            goto La
        L81:
            r1 = r3
            goto L1f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.retrieveLink(java.lang.String, java.lang.String, com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationPublicLinkCallBack):com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest");
    }

    public AdobeNetworkHttpRequest retrievePublicLink(String str, final IAdobeCollaborationPublicLinkCallBack iAdobeCollaborationPublicLinkCallBack) {
        String str2;
        if (str == null) {
            iAdobeCollaborationPublicLinkCallBack.onError(400);
            return null;
        }
        switch (imsEnvironment) {
            case AdobeAuthIMSEnvironmentTestUS2:
                str2 = "https://cc-collab-dev.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
                str2 = "https://cc-collab-stage.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentProductionUS:
                str2 = "https://cc-collab.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.ERROR, "Collaboration Session", "An undefined authentication endpoint has been specified for the collaboration session");
                str2 = null;
                break;
        }
        String str3 = str2 != null ? String.format("publinks/:bookmark/%s", str) : null;
        if (str3 == null) {
            iAdobeCollaborationPublicLinkCallBack.onError(400);
            return null;
        }
        return getResponseForLink(str3, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, null, new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.11
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeCollaborationPublicLinkCallBack.onError(adobeNetworkException.getStatusCode().intValue());
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                try {
                    iAdobeCollaborationPublicLinkCallBack.onComplete((String) new JSONObject(adobeNetworkHttpResponse.getDataString()).get("publicURL"));
                } catch (JSONException e2) {
                    iAdobeCollaborationPublicLinkCallBack.onError(400);
                }
            }
        });
    }

    public AdobeNetworkHttpRequest createNewLink(String str, String str2, String str3, boolean z, boolean z2, final IAdobeCollaborationPublicLinkCallBack iAdobeCollaborationPublicLinkCallBack) {
        String str4;
        if (str == null) {
            iAdobeCollaborationPublicLinkCallBack.onError(400);
            return null;
        }
        IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback = new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.12
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeCollaborationPublicLinkCallBack.onError(adobeNetworkException.getStatusCode().intValue());
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                String[] strArrSplit = adobeNetworkHttpResponse.getHeaders().get("location").get(0).split(URIUtil.SLASH);
                String str5 = "https://assets.adobe.com";
                if (AdobeCollaborationSession.imsEnvironment.equals(AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS)) {
                    str5 = "https://assets-stage.adobecc.com";
                }
                iAdobeCollaborationPublicLinkCallBack.onComplete(String.format("%s/link/%s", str5, strArrSplit[strArrSplit.length - 1]));
            }
        };
        if (!str2.contains("application/vnd.adobe")) {
            str2 = "application/vnd.adobe.asset";
        } else if (str2.contains("vnd.adobe.directory")) {
            str2 = APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON;
        } else if (str2.contains(VND_ADOBE_LIBRARY) || str2.contains(VND_ADOBE_ELEMENT)) {
            switch (imsEnvironment) {
                case AdobeAuthIMSEnvironmentStageUS:
                    str4 = HTTPS_CC_API_STORAGE_STAGE_ADOBE_IO;
                    break;
                case AdobeAuthIMSEnvironmentProductionUS:
                    str4 = HTTPS_CC_API_STORAGE_ADOBE_IO;
                    break;
                default:
                    str4 = null;
                    break;
            }
            String str5 = str4 != null ? String.format("%s/assets/adobe-libraries/%s", str4, str) : null;
            if (str2.contains(VND_ADOBE_LIBRARY)) {
                str2 = "application/vnd.adobe.library+dcx";
                str = str5;
            } else {
                str = str5;
            }
        } else {
            str2 = null;
            str = null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("download", z);
            jSONObject.put("comment", z2);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("resource", str);
            jSONObject2.put("name", str3);
            jSONObject2.put("resourceType", str2);
            jSONObject2.put("permissions", jSONObject);
            String string = jSONObject2.toString();
            if (string != null) {
                return getResponseForLink(AdobePhotoSession.LINKS, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, string, "application/json", iAdobeCollaborationResponseCallback);
            }
            return null;
        } catch (JSONException e2) {
            iAdobeCollaborationPublicLinkCallBack.onError(400);
            return null;
        }
    }

    private AdobeNetworkHttpRequest getResponseForString(String str, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        return getResponseForString(str, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, null, iAdobeCollaborationResponseCallback);
    }

    private AdobeNetworkHttpRequest getResponseForString(String str, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
        return getResponseForString(str, adobeNetworkHttpRequestMethod, null, null, iAdobeCollaborationResponseCallback);
    }

    private AdobeNetworkHttpRequest getResponseForLink(String str, AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, String str2, String str3, IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback) {
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
            adobeNetworkHttpRequest.setRequestProperty("X-Feature-Override", "publish_link_backward");
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
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.13
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeCollaborationSession.requestMap.remove(adobeNetworkHttpRequest);
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
        return getResponseForString(String.format("comments%s", Uri.encode(adobeAsset.getHref().toString()).replace("%2F", URIUtil.SLASH)), new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.14
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                try {
                    iAdobeGetCommentsCallback.onSuccess(AdobeAssetCommentsDataSource.commentsFromJSONData(new JSONArray(adobeNetworkHttpResponse.getDataString()), adobeAsset));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
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
            return getResponseForString("comments", AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, jSONObject.toString(), "application/json", new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.15
                @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    iAdobeAddCommentCallback.onSuccess(AdobeCollaborationSession.this.getCommentURL(adobeNetworkHttpResponse));
                }

                @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
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
        IAdobeCollaborationResponseCallback iAdobeCollaborationResponseCallback = new IAdobeCollaborationResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.16
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
            public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                iAdobeDeleteCommentCallback.onSuccess();
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession.IAdobeCollaborationResponseCallback
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

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject jsonObjectFromResponse(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONArray jsonArrayFromResponse(String str) {
        try {
            return new JSONArray(str);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    class LoginNotificationObserver implements Observer {
        private LoginNotificationObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginNotification || adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginExternalNotification) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                AdobeNetworkHttpService adobeNetworkHttpServiceService = AdobeCollaborationSession.this.service();
                adobeNetworkHttpServiceService.setAccessToken(sharedInstance.getAccessToken());
                adobeNetworkHttpServiceService.setSuspended(false);
                AdobeCollaborationSessionModel.getSharedModel().login();
                return;
            }
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification) {
                AdobeNetworkHttpService adobeNetworkHttpServiceService2 = AdobeCollaborationSession.this.service();
                adobeNetworkHttpServiceService2.clearQueuedRequests();
                adobeNetworkHttpServiceService2.reconnect();
                adobeNetworkHttpServiceService2.setAccessToken(null);
                AdobeCollaborationSessionModel.getSharedModel().logout();
            }
        }
    }

    private String createPostDataForInvite(String str, List<String> list, AdobeCollaborationRole adobeCollaborationRole, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AdobePushNotificationDataModel.RESOURCE_URL, str);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < list.size(); i++) {
                jSONArray.put(list.get(i));
            }
            jSONObject.put("recipientEmails", jSONArray);
            jSONObject.put("recipientRole", adobeCollaborationRole.toString());
            jSONObject.put(AdobePushNotificationDataModel.RESOURCE_NAME, str2);
            jSONObject.put("resourceType", str3);
            if (str4 != null) {
                jSONObject.put("message", str4);
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            return null;
        }
    }

    private String getResourceComponent(String str) {
        if (str.endsWith(URIUtil.SLASH)) {
            str = str.substring(0, str.length() - 1);
        }
        String strSubstring = str.substring(str.lastIndexOf(URIUtil.SLASH) + 1);
        return str.contains(ADOBE_LIBRARIES) ? AdobeAssetViewUtils.getLibraryNameForGuid(strSubstring) : decodeString(strSubstring);
    }

    private String decodeString(String str) {
        if (str != null) {
            return Uri.decode(str).replaceAll("%20", " ");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeCollaborationException getCollaborationExceptionFromNetworkResponseData(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            int i = Integer.parseInt(jSONObject.getString(STATUS_CODE));
            AdobeCollaborationException adobeCollaborationExceptionCreateCollaborationError = i == 401 ? AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNAUTHORIZED, null, jSONObject.getString(STATUS_TEXT), i, null) : null;
            if (adobeCollaborationExceptionCreateCollaborationError == null) {
                return AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, null, jSONObject.getString(STATUS_TEXT), i, null);
            }
            return adobeCollaborationExceptionCreateCollaborationError;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeCollaborationException getCollaborationExceptionFromNetworkResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        if (adobeNetworkHttpResponse == null) {
            return null;
        }
        AdobeCollaborationException adobeCollaborationExceptionCreateCollaborationError = adobeNetworkHttpResponse.getStatusCode() == 401 ? AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNAUTHORIZED, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders()) : null;
        if (adobeCollaborationExceptionCreateCollaborationError == null) {
            return AdobeCollaborationErrUtils.createCollaborationError(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        return adobeCollaborationExceptionCreateCollaborationError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdobeNetworkHttpResponse getResponseFromError(AdobeNetworkException adobeNetworkException) {
        if (adobeNetworkException.getData() == null || !adobeNetworkException.getData().containsKey("Response")) {
            return null;
        }
        return (AdobeNetworkHttpResponse) adobeNetworkException.getData().get("Response");
    }

    public boolean isOnline() {
        return AdobeCollaborationSessionModel.getSharedModel().isOnline();
    }
}
