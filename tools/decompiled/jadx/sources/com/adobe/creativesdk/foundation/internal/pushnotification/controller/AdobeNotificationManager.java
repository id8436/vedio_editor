package com.adobe.creativesdk.foundation.internal.pushnotification.controller;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge;
import com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationQueryCallback;
import com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback;
import com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationException;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationContactsCallback;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationGetInvitesCallBack;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorContact;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceRegistrationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceUnregisterCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGetAssetHrefCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGoogleRegistrationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeNotificationGetActivitiesCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeNotificationGetInvitationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeNotificationHandler;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeNotificationInterface;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeNotificationOperationRequest;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeUpdateNotificationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationModel;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationState;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationSubType;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationType;
import com.adobe.creativesdk.foundation.internal.pushnotification.utils.AdobePushNotificationQueue;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerConfigurationFactory;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerController;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerControllerConfigurations;
import com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration.AdobeOneUpViewerFilesConfiguration;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNotificationManager {
    private static List<AdobeCollaboratorContact> contactsList;
    private static boolean currentCloudPublic;
    private static Map<String, AdobeCollaboratorContact> mContactsMap;
    private String adobeAppID;
    private String androidID;
    private Observer cloudSwitchingObserver;
    private String deviceID;
    private String deviceType;
    private String googleRegistrationID;
    private long lastTimeStampFetched;
    private Observer loginNotificationObserver;
    private Observer networkReachabilityObserver;
    private IAdobeNotificationHandler notificationHandler;
    private IAdobeNotificationInterface notificationInterface;
    private Observer notificationSwitchObserver;
    private String packageName;
    private static AdobeNotificationManager sharedManager = null;
    private static boolean notificationSwitchedOn = true;
    private static boolean registerProcessOngoing = false;
    private static AdobeNetworkHttpService service = null;
    int lastSentCount = 0;
    private int unreadCount = -1;
    private boolean currentlyFetchingActivities = false;
    private boolean currentlyFetchingInvitations = false;
    private boolean errorWhileFetchingActivities = false;
    private boolean errorWhileFetchingInvitations = false;
    private ArrayList<IAdobeNotificationGetActivitiesCallback> activitiesRequestQueue = new ArrayList<>();
    private ArrayList<IAdobeNotificationGetInvitationCallback> invitationsRequestQueue = new ArrayList<>();
    private AdobePushNotificationModel pushNotificationDataModel = new AdobePushNotificationModel();

    private AdobeNotificationManager() {
        mContactsMap = new HashMap();
        populateContactsList();
        registerLocalNotifications();
    }

    private void populateContactsList() {
        AdobeCollaborationSession.getSharedSession().getContacts(new IAdobeCollaborationContactsCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.1
            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationContactsCallback
            public void onComplete(List<AdobeCollaboratorContact> list) {
                synchronized (AdobeNotificationManager.class) {
                    List unused = AdobeNotificationManager.contactsList = list;
                    for (AdobeCollaboratorContact adobeCollaboratorContact : list) {
                        AdobeNotificationManager.mContactsMap.put(adobeCollaboratorContact.getEmailAddress(), adobeCollaboratorContact);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationErrorCallback
            public void onError(AdobeCollaborationException adobeCollaborationException) {
            }
        });
    }

    public static List<AdobeCollaboratorContact> getContactList() {
        List<AdobeCollaboratorContact> list;
        synchronized (AdobeNotificationManager.class) {
            list = contactsList;
        }
        return list;
    }

    public static Map<String, AdobeCollaboratorContact> getContactsMap() {
        Map<String, AdobeCollaboratorContact> map;
        synchronized (AdobeNotificationManager.class) {
            map = mContactsMap;
        }
        return map;
    }

    public static AdobeNotificationManager getNotificationManager() {
        return sharedManager;
    }

    public static AdobeNotificationManager startNotificationManager(IAdobeNotificationInterface iAdobeNotificationInterface) {
        synchronized (AdobeNotificationManager.class) {
            if (sharedManager == null) {
                sharedManager = new AdobeNotificationManager();
                sharedManager.notificationInterface = iAdobeNotificationInterface;
            }
        }
        if (isNotificationSwitchedOn()) {
            sharedManager.startInitialization();
        }
        return sharedManager;
    }

    public void setNotificationHandler(IAdobeNotificationHandler iAdobeNotificationHandler) {
        this.notificationHandler = iAdobeNotificationHandler;
    }

    public static void setNotificationSwitchStatus(boolean z) {
        notificationSwitchedOn = z;
    }

    public static boolean isNotificationSwitchedOn() {
        return notificationSwitchedOn;
    }

    public static boolean isCurrentCloudPublic() {
        return currentCloudPublic;
    }

    public static void setCurrentCloudStatus(boolean z) {
        currentCloudPublic = z;
    }

    public void unRegisterDevice(IAdobeDeviceUnregisterCallback iAdobeDeviceUnregisterCallback) {
        if (this.deviceID != null && this.deviceID.length() > 0) {
            AdobeANSSession adobeANSSessionSharedSession = AdobeANSSession.sharedSession();
            if (adobeANSSessionSharedSession != null) {
                adobeANSSessionSharedSession.unregisterDevice(this.adobeAppID, this.deviceID, iAdobeDeviceUnregisterCallback);
                return;
            }
            return;
        }
        iAdobeDeviceUnregisterCallback.onError();
    }

    public static void unRegisterDevice() {
        if (sharedManager != null) {
            sharedManager.unRegisterDevice(new IAdobeDeviceUnregisterCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.2
                @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceUnregisterCallback
                public void onSuccess() {
                    if (AdobeNotificationManager.sharedManager != null) {
                        AdobeNotificationManager.sharedManager.deviceID = null;
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceUnregisterCallback
                public void onError() {
                }
            });
        }
    }

    public static void processNotification(Bundle bundle, boolean z) {
        if (isCurrentCloudPublic() && isNotificationSwitchedOn()) {
            String string = bundle.getString(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_TARGET_ID);
            String adobeID = getAdobeID();
            if (string != null && adobeID != null && adobeID.equalsIgnoreCase(string) && sharedManager != null) {
                if (AdobePushNotificationState.getValue(bundle.getString("state")) == AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED) {
                    handleExpiredNotification(bundle, z);
                } else {
                    handleNewNotification(bundle, z);
                }
            }
        }
    }

    public static void handleNewNotification(Bundle bundle, boolean z) {
        AdobePushNotificationSubType value = AdobePushNotificationSubType.getValue(bundle.getString(AdobePushNotificationDataModel.SUBTYPE));
        setNewCountInAssetBrowser(bundle);
        switch (value) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                handleNewCommentNotification(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                handleNewInvitationNotification(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                handleNewInvitationAccept(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                handleNewCollaboratorRoleChange(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                handleNewCollaboratorRemove(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
                handleNewInvitationDecline(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                handleNewInvitationRevoke(bundle, z);
                break;
        }
    }

    public static void handleExpiredNotification(Bundle bundle, boolean z) {
        AdobePushNotificationSubType value = AdobePushNotificationSubType.getValue(bundle.getString(AdobePushNotificationDataModel.SUBTYPE));
        setNewCountInAssetBrowser(bundle);
        switch (value) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                handleExpiredCommentNotification(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                handleExpiredInvitation(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                handleExpiredInvitationAccept(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                handleExpiredCollaborationUpdate(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                handleExpiredCollaborationRemove(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
                handleExpiredInvitationDecline(bundle, z);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                handleExpiredInvitationRevoke(bundle, z);
                break;
        }
    }

    private static void handleExpiredInvitationRevoke(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
    }

    private static void handleExpiredNotificationCommon(Bundle bundle, boolean z) {
        if (sharedManager != null) {
            sharedManager.pushNotificationDataModel.markActivityAsRead(bundle, z);
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshActivity, null));
    }

    private static void handleExpiredInvitationDecline(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
    }

    private static void handleExpiredCollaborationRemove(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
    }

    private static void handleExpiredCollaborationUpdate(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
    }

    public static void handleNotificationOperation(Context context, AdobePushNotificationSubType adobePushNotificationSubType, AdobePushNotificationType adobePushNotificationType, String str, IAdobeNotificationOperationRequest iAdobeNotificationOperationRequest, AdobeCloud adobeCloud) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                handleCommentNotificationOperation(context, str, iAdobeNotificationOperationRequest, adobeCloud);
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
            default:
                handleDefaultNotification();
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                handleInvitationAcceptNotification(context, str, iAdobeNotificationOperationRequest, adobePushNotificationType);
                break;
        }
    }

    public void removeInvitations(List<String> list) {
        this.pushNotificationDataModel.removeInvitations(list);
    }

    public void markActivitiesAsRead(List<AdobePushNotification> list) {
        if (list != null && !list.isEmpty()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                AdobePushNotification adobePushNotification = list.get(i2);
                AdobePushNotificationQueue.getPushNotificationQueue().putNotificationInQueue(list);
                this.pushNotificationDataModel.markActivityAsReadInSharedPref(adobePushNotification.getNotificationID());
                i = i2 + 1;
            }
            this.unreadCount -= list.size();
            if (this.unreadCount < this.pushNotificationDataModel.getInvitationListSize()) {
                this.unreadCount = this.pushNotificationDataModel.getInvitationListSize();
            }
            sendNewCountToAssetBrowser(this.unreadCount);
            updateNotification(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED);
        }
    }

    public void putInvitationRequestInQueue(IAdobeNotificationGetInvitationCallback iAdobeNotificationGetInvitationCallback) {
        this.invitationsRequestQueue.add(iAdobeNotificationGetInvitationCallback);
    }

    public void putActivitiesRequestInQueue(IAdobeNotificationGetActivitiesCallback iAdobeNotificationGetActivitiesCallback) {
        this.activitiesRequestQueue.add(iAdobeNotificationGetActivitiesCallback);
    }

    public static int getAssetCommentCount(String str) {
        if (sharedManager == null || sharedManager.pushNotificationDataModel == null) {
            return 0;
        }
        return sharedManager.pushNotificationDataModel.getAssetCommentCount(str);
    }

    public void markNotificationsForAssetsAsRead(String str, boolean z) {
        this.unreadCount -= this.pushNotificationDataModel.markNotificationsForAssetsAsRead(str, z);
        this.unreadCount = this.unreadCount < this.pushNotificationDataModel.getInvitationListSize() ? this.pushNotificationDataModel.getInvitationListSize() : this.unreadCount;
        sendNewCountToAssetBrowser(this.unreadCount);
        updateNotification(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED);
    }

    public void getInvitations(IAdobeNotificationGetInvitationCallback iAdobeNotificationGetInvitationCallback, boolean z) {
        if (z) {
            putInvitationRequestInQueue(iAdobeNotificationGetInvitationCallback);
            queryInvitationFromCollaborator();
        } else if (getStatusOfCurrentlyFetchingInvitation()) {
            putInvitationRequestInQueue(iAdobeNotificationGetInvitationCallback);
        } else if (this.errorWhileFetchingInvitations) {
            getInvitations(iAdobeNotificationGetInvitationCallback, true);
        } else {
            iAdobeNotificationGetInvitationCallback.onSuccess(getInvitationList());
        }
    }

    public void getMoreActivities(IAdobeNotificationGetActivitiesCallback iAdobeNotificationGetActivitiesCallback) {
        if (!getStatusOfFetchingActivities()) {
            putActivitiesRequestInQueue(iAdobeNotificationGetActivitiesCallback);
            this.lastSentCount = 0;
            queryNotificationsByPage(0L, this.lastTimeStampFetched, 10);
        }
    }

    public void getActivities(IAdobeNotificationGetActivitiesCallback iAdobeNotificationGetActivitiesCallback, boolean z) {
        if (z) {
            if (!getStatusOfFetchingActivities()) {
                putActivitiesRequestInQueue(iAdobeNotificationGetActivitiesCallback);
                queryActivitiesFromANS();
                return;
            } else {
                iAdobeNotificationGetActivitiesCallback.onSuccess(getActivitiesList());
                return;
            }
        }
        if (getStatusOfFetchingActivities()) {
            handleActivitiesProgress(getActivitiesList().size());
            putActivitiesRequestInQueue(iAdobeNotificationGetActivitiesCallback);
        } else if (this.errorWhileFetchingActivities) {
            getActivities(iAdobeNotificationGetActivitiesCallback, true);
        } else {
            iAdobeNotificationGetActivitiesCallback.onSuccess(getActivitiesList());
        }
    }

    public int getUnreadCount() {
        if (this.unreadCount != -1) {
            return this.unreadCount;
        }
        return 0;
    }

    public static void getRenditionFromAssetFileURL(String str, AdobeAssetFileRenditionType adobeAssetFileRenditionType, AdobeAssetImageDimensions adobeAssetImageDimensions, int i, final IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback) {
        String str2;
        synchronized (AdobeNotificationManager.class) {
            if (service == null) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                String accessToken = sharedInstance.getAccessToken();
                HashMap map = new HashMap();
                map.put("x-api-key", sharedInstance.getClientID());
                service = new AdobeNetworkHttpService(AdobeCollaborationSession.HTTPS_CC_API_STORAGE_ADOBE_IO, sharedInstance.getClientID(), map);
                service.setAccessToken(accessToken);
            }
        }
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.3
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                iAdobeGenericRequestCallback.onCompletion(adobeNetworkHttpResponse.getDataBytes());
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                AdobeLogger.log(Level.ERROR, "AdobeNotificationManager.requestRendition", "Rendition error");
                iAdobeGenericRequestCallback.onError(null);
            }
        };
        try {
            URL url = new URI(AdobeCollaborationSession.HTTPS_CC_API_STORAGE_ADOBE_IO + String.format(Locale.ENGLISH, "%s/:rendition;page=%d%s", str, Integer.valueOf(i), ";size=" + (adobeAssetImageDimensions.width > adobeAssetImageDimensions.height ? (int) adobeAssetImageDimensions.width : (int) adobeAssetImageDimensions.height))).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            switch (adobeAssetFileRenditionType) {
                case ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:
                    str2 = "image/png";
                    break;
                case ADOBE_ASSET_FILE_RENDITION_TYPE_PDF:
                    str2 = "image/pdf";
                    break;
                default:
                    str2 = "image/jpeg";
                    break;
            }
            adobeNetworkHttpRequest.setRequestProperty("Accept", str2);
            service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, null);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "MalformedURLException");
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
            AdobeLogger.log(Level.INFO, "AssetStorage.requestRendition", "URISyntaxException");
        }
    }

    public static void refreshNotificationCount() {
        if (sharedManager != null) {
            sharedManager.queryUnreadNotificationsCount(new IAdobeNotificationUnreadCountCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.4
                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback
                public void onSuccess(int i) {
                    if (AdobeNotificationManager.sharedManager != null) {
                        AdobeNotificationManager.sharedManager.unreadCount = i;
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback
                public void onError() {
                }
            });
        }
    }

    public static void getAssetURLFromGUID(String str, final IAdobeGetAssetHrefCallback iAdobeGetAssetHrefCallback) {
        Handler handler;
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        String str2 = "";
        switch (sharedInstance.getEnvironment()) {
            case AdobeAuthIMSEnvironmentStageUS:
                str2 = "https://cc-api-storage-stage.adobe.io/";
                break;
            case AdobeAuthIMSEnvironmentProductionUS:
                str2 = "https://cc-api-storage.adobe.io/";
                break;
        }
        synchronized (AdobeNotificationManager.class) {
            if (service == null) {
                String accessToken = sharedInstance.getAccessToken();
                HashMap map = new HashMap();
                map.put("x-api-key", sharedInstance.getClientID());
                service = new AdobeNetworkHttpService(str2, sharedInstance.getClientID(), map);
                service.setAccessToken(accessToken);
            }
        }
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.5
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
                iAdobeGetAssetHrefCallback.onSuccess((headers == null || !headers.containsKey("content-location")) ? null : headers.get("content-location").get(0));
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGetAssetHrefCallback.onError(adobeNetworkException);
            }
        };
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        try {
            URL url = new URL(str2 + String.format("resolve?id=%s", str));
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodHEAD);
            service.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, handler);
        } catch (MalformedURLException e3) {
            e3.printStackTrace();
        }
    }

    private void startInitialization() {
        this.packageName = this.notificationInterface.getFullPackageName();
        this.adobeAppID = this.notificationInterface.getAdobeAppID();
        this.androidID = this.notificationInterface.getAndroidID();
        this.deviceType = this.notificationInterface.getDeviceType();
        this.notificationInterface.registerGCM(new IAdobeGoogleRegistrationCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.6
            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGoogleRegistrationCallback
            public void onSuccess(String str) {
                AdobeNotificationManager.this.googleRegistrationID = str;
                AdobeNotificationManager.this.registerDevice();
            }

            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGoogleRegistrationCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerDevice() {
        synchronized (AdobeNotificationManager.class) {
            if (checkGoogleRegistrationID() && checkDeviceID() && !registerProcessOngoing) {
                registerProcessOngoing = true;
                setStatusOfCurrentlyFetchingInvitation(true);
                setStatusOfFetchingActivities(true);
                AdobeANSSession adobeANSSessionSharedSession = AdobeANSSession.sharedSession();
                if (adobeANSSessionSharedSession != null) {
                    adobeANSSessionSharedSession.registerDevice(this.deviceType, this.adobeAppID, this.androidID, this.googleRegistrationID, this.packageName, new IAdobeDeviceRegistrationCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.7
                        @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceRegistrationCallback
                        public void onSuccess(JSONObject jSONObject) {
                            AdobeNotificationManager.this.deviceID = jSONObject.optString("device-id");
                            AdobeNotificationManager.this.startFetchingData();
                            boolean unused = AdobeNotificationManager.registerProcessOngoing = false;
                        }

                        @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceRegistrationCallback
                        public void onError() {
                            boolean unused = AdobeNotificationManager.registerProcessOngoing = false;
                        }
                    });
                }
            }
        }
    }

    private boolean checkDeviceID() {
        return this.deviceID == null || this.deviceID.length() == 0;
    }

    private boolean checkGoogleRegistrationID() {
        return this.googleRegistrationID != null && this.googleRegistrationID.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFetchingData() {
        queryUnreadNotificationsCount(new IAdobeNotificationUnreadCountCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.8
            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback
            public void onSuccess(int i) {
                AdobeNotificationManager.this.unreadCount = i;
                AdobeNotificationManager.sendNewCountToAssetBrowser(i);
                AdobeNotificationManager.this.queryInvitationFromCollaborator();
                AdobeNotificationManager.this.queryActivitiesFromANS();
            }

            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback
            public void onError() {
                AdobeNotificationManager.this.queryInvitationFromCollaborator();
                AdobeNotificationManager.this.queryActivitiesFromANS();
            }
        });
    }

    private void updateNotification(AdobePushNotificationState adobePushNotificationState) {
        ArrayList<AdobePushNotification> readNotificationsList = AdobePushNotificationQueue.getPushNotificationQueue().getReadNotificationsList();
        AdobeANSSession adobeANSSessionSharedSession = AdobeANSSession.sharedSession();
        IAdobeUpdateNotificationCallback iAdobeUpdateNotificationCallback = new IAdobeUpdateNotificationCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.9
            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeUpdateNotificationCallback
            public void onSuccess(JSONObject jSONObject) {
                AdobePushNotificationQueue.getPushNotificationQueue().handleNotificationResponse(jSONObject);
            }

            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeUpdateNotificationCallback
            public void onError() {
            }
        };
        if (adobeANSSessionSharedSession != null) {
            if (adobePushNotificationState == AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW) {
                adobeANSSessionSharedSession.updateNotifications(this.adobeAppID, readNotificationsList, AdobePushNotificationDataModel.STATE_NEW, iAdobeUpdateNotificationCallback);
            } else {
                adobeANSSessionSharedSession.updateNotifications(this.adobeAppID, readNotificationsList, AdobePushNotificationDataModel.STATE_EXPIRED, iAdobeUpdateNotificationCallback);
            }
        }
    }

    private static void handleExpiredInvitationAccept(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
    }

    private static void handleExpiredInvitation(Bundle bundle, boolean z) {
        if (sharedManager != null) {
            sharedManager.pushNotificationDataModel.removeInvitation(bundle, z);
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshInvitation, null));
    }

    private static void handleExpiredCommentNotification(Bundle bundle, boolean z) {
        handleExpiredNotificationCommon(bundle, z);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshCommentCount, new HashMap()));
    }

    private static String getAdobeID() {
        return AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
    }

    private static void setNewCountInAssetBrowser(Bundle bundle) {
        String string;
        if (bundle.getString(AdobePushNotificationDataModel.UNREAD_COUNT) != null && (string = bundle.getString(AdobePushNotificationDataModel.UNREAD_COUNT)) != null) {
            int i = Integer.parseInt(string);
            if (AdobePushNotificationState.getValue(bundle.getString("state")) == AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW) {
                checkAndSendNewCount(i);
            } else {
                checkAndSendExpiredCount(i);
            }
        }
    }

    private static void checkAndSendExpiredCount(int i) {
        if (sharedManager == null || i < sharedManager.unreadCount) {
            sendNewCountToAssetBrowser(i);
        }
    }

    private static void checkAndSendNewCount(int i) {
        if (sharedManager == null || i > sharedManager.unreadCount) {
            sendNewCountToAssetBrowser(i);
        }
    }

    private static void handleNewInvitationAccept(Bundle bundle, boolean z) {
        insertNewNotification(bundle, z);
    }

    private static void handleNewCollaboratorRoleChange(Bundle bundle, boolean z) {
        insertNewNotification(bundle, z);
        if (AdobePushNotificationType.getValue(bundle.getString("type")) == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
            ACLibraryManagerAppBridge.getInstance().getLibraryController().forceSync();
        }
    }

    private static void handleNewInvitationRevoke(Bundle bundle, boolean z) {
        insertNewNotification(bundle, z);
    }

    private static void handleNewInvitationDecline(Bundle bundle, boolean z) {
        insertNewNotification(bundle, z);
    }

    private static void handleNewCollaboratorRemove(Bundle bundle, boolean z) {
        insertNewNotification(bundle, z);
        if (AdobePushNotificationType.getValue(bundle.getString("type")) == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
            ACLibraryManagerAppBridge.getInstance().getLibraryController().forceSync();
        }
    }

    private static void insertNewNotification(Bundle bundle, boolean z) {
        if (sharedManager != null) {
            sharedManager.pushNotificationDataModel.insertNewActivity(bundle, z);
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshActivity, null));
    }

    private static void handleNewCommentNotification(Bundle bundle, boolean z) {
        if (sharedManager != null) {
            sharedManager.pushNotificationDataModel.insertNewActivity(bundle, z);
        }
        HashMap map = new HashMap();
        String string = bundle.getString(AdobePushNotificationDataModel.ASSET_URL);
        if (string != null) {
            map.put(DCXProjectKeys.kDCXKey_MediaRef_assetURL, bundle.getString("region") + URIUtil.SLASH + string.substring(string.lastIndexOf(47) + 1));
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshActivity, null));
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshComment, map));
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshCommentCount, map));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendNewCountToAssetBrowser(int i) {
        if (sharedManager != null) {
            sharedManager.unreadCount = i;
        }
        final HashMap map = new HashMap();
        map.put(AdobePushNotificationDataModel.UNREAD_COUNT, Integer.valueOf(i));
        new Handler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.10
            @Override // java.lang.Runnable
            public void run() {
                AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesRefreshNotificationCount, map));
            }
        }, 2000L);
    }

    private static void handleNewInvitationNotification(Bundle bundle, boolean z) {
        if (sharedManager != null) {
            sharedManager.pushNotificationDataModel.insertNewInvitation(bundle, z);
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(AdobeInternalNotificationID.AdobeCCFilesNotificationRefreshInvitation, null));
    }

    private static void handleDefaultNotification() {
    }

    private static void handleInvitationAcceptNotification(final Context context, String str, final IAdobeNotificationOperationRequest iAdobeNotificationOperationRequest, AdobePushNotificationType adobePushNotificationType) {
        if (adobePushNotificationType == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
            getAssetURLFromGUID(str, new IAdobeGetAssetHrefCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.11
                @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGetAssetHrefCallback
                public void onSuccess(String str2) {
                    if (AdobeNotificationManager.sharedManager != null) {
                        if (AdobeNotificationManager.sharedManager.notificationHandler != null) {
                            iAdobeNotificationOperationRequest.onSuccess();
                            AdobeNotificationManager.sharedManager.notificationHandler.launchHandler(context, null, str2, false);
                        } else {
                            iAdobeNotificationOperationRequest.onError();
                        }
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGetAssetHrefCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeNotificationOperationRequest.onError();
                }
            });
            return;
        }
        String guidFromHref = getGuidFromHref(str);
        if (AdobeLibraryManager.getSharedInstance().getLibraryWithId(guidFromHref) != null) {
            sharedManager.notificationHandler.launchHandler(context, guidFromHref, str, true);
            iAdobeNotificationOperationRequest.onSuccess();
        } else {
            iAdobeNotificationOperationRequest.onError();
        }
    }

    private static String getGuidFromHref(String str) {
        if (str == null) {
            return null;
        }
        if (str.endsWith(URIUtil.SLASH)) {
            str = str.substring(0, str.length() - 1);
        }
        return str.substring(str.lastIndexOf(URIUtil.SLASH) + 1);
    }

    private static void handleCommentNotificationOperation(final Context context, String str, final IAdobeNotificationOperationRequest iAdobeNotificationOperationRequest, final AdobeCloud adobeCloud) {
        final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<AdobeAssetFile, AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.12
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                iAdobeNotificationOperationRequest.onError();
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobeAssetFile adobeAssetFile) {
                int lokiConfigurationKey = AdobeOneUpViewerControllerConfigurations.getLokiConfigurationKey();
                ((AdobeOneUpViewerFilesConfiguration) AdobeOneUpViewerConfigurationFactory.getOneUpViewerController(lokiConfigurationKey).getConfiguration(AdobeOneUpViewerController.ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY)).setAssetFile(adobeAssetFile);
                Intent intent = new Intent();
                intent.setClass(context, AdobeUXAssetOneUpViewerActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("one_up_controller_code", lokiConfigurationKey);
                intent.putExtra("START_WITH_COMMENT_WINDOW", true);
                intent.putExtra("ADOBE_CLOUD", AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
                context.startActivity(intent);
                iAdobeNotificationOperationRequest.onSuccess();
            }
        };
        getAssetURLFromGUID(str, new IAdobeGetAssetHrefCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.13
            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGetAssetHrefCallback
            public void onSuccess(String str2) {
                AdobeAssetFileInternal.createFromURL(Uri.decode(str2), iAdobeGenericRequestCallback, AdobeUxUtilMainUIThreadHandler.getHandler(), adobeCloud);
            }

            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGetAssetHrefCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNotificationOperationRequest.onError();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryInvitationFromCollaborator() {
        if (isCurrentCloudPublic()) {
            setStatusOfCurrentlyFetchingInvitation(true);
            this.pushNotificationDataModel.clearInvitationList();
            AdobeCollaborationSession.getSharedSession().getInvites(new IAdobeCollaborationGetInvitesCallBack() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.14
                @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationGetInvitesCallBack
                public void onComplete(List<AdobeCollaborationInvite> list) {
                    AdobeNotificationManager.this.pushNotificationDataModel.setInvitations(list);
                    AdobeNotificationManager.this.handleInvitationRequests(true);
                }

                @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationErrorCallback
                public void onError(AdobeCollaborationException adobeCollaborationException) {
                    AdobeNotificationManager.this.handleInvitationRequests(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryActivitiesFromANS() {
        if (isCurrentCloudPublic()) {
            setStatusOfFetchingActivities(true);
            this.pushNotificationDataModel.clearActivitiesList();
            queryNotifications(0L, 0L, this.unreadCount > 30 ? this.unreadCount : 30);
        }
    }

    private void queryNotifications(long j, long j2, int i) {
        if (this.deviceID != null && this.deviceID.length() > 0) {
            this.lastSentCount = 0;
            queryNotificationsByPage(j, j2, i);
        } else {
            handleActivitiesRequests(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryNotificationsByPage(final long j, long j2, final int i) {
        int i2 = i <= 10 ? i : 10;
        AdobeANSSession adobeANSSessionSharedSession = AdobeANSSession.sharedSession();
        if (adobeANSSessionSharedSession != null) {
            adobeANSSessionSharedSession.queryNotifications(this.adobeAppID, this.deviceID, j, j2, i2, new IAdobeNotificationQueryCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.15
                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationQueryCallback
                public void onSuccess(JSONObject jSONObject) {
                    try {
                        JSONArray jSONArray = (JSONArray) ((JSONObject) jSONObject.get("notifications")).opt("notification");
                        if (jSONArray == null || jSONArray.length() == 0) {
                            AdobeNotificationManager.this.handleActivitiesRequests(true);
                        } else {
                            Pair<Long, Integer> pairPopulateActivitiesList = AdobeNotificationManager.this.pushNotificationDataModel.populateActivitiesList(jSONArray);
                            AdobeNotificationManager.this.lastTimeStampFetched = ((Long) pairPopulateActivitiesList.first).longValue();
                            int iIntValue = ((Integer) pairPopulateActivitiesList.second).intValue();
                            if (AdobeNotificationManager.this.lastTimeStampFetched != 0 && i - iIntValue != 0) {
                                AdobeNotificationManager.this.handleActivitiesProgress(iIntValue);
                                AdobeNotificationManager.this.queryNotificationsByPage(j, AdobeNotificationManager.this.lastTimeStampFetched - 1, i - iIntValue);
                            } else {
                                AdobeNotificationManager.this.handleActivitiesRequests(true);
                            }
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        onError();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationQueryCallback
                public void onError() {
                    AdobeNotificationManager.this.handleActivitiesRequests(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleActivitiesProgress(int i) {
        int i2 = 0;
        this.lastSentCount += i;
        if (this.lastSentCount >= 15) {
            this.lastSentCount = 0;
            ArrayList<AdobePushNotification> activitiesList = getActivitiesList();
            while (true) {
                int i3 = i2;
                if (i3 < this.activitiesRequestQueue.size()) {
                    this.activitiesRequestQueue.get(i3).onProgress(activitiesList);
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void queryUnreadNotificationsCount(IAdobeNotificationUnreadCountCallback iAdobeNotificationUnreadCountCallback) {
        if (this.deviceID != null && this.deviceID.length() > 0) {
            AdobeANSSession adobeANSSessionSharedSession = AdobeANSSession.sharedSession();
            if (adobeANSSessionSharedSession != null) {
                adobeANSSessionSharedSession.queryUnreadNotificationCount(this.adobeAppID, this.deviceID, iAdobeNotificationUnreadCountCallback);
                return;
            }
            return;
        }
        iAdobeNotificationUnreadCountCallback.onError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleActivitiesRequests(boolean z) {
        if (z) {
            ArrayList<AdobePushNotification> activitiesList = getActivitiesList();
            for (int i = 0; i < this.activitiesRequestQueue.size(); i++) {
                this.activitiesRequestQueue.get(i).onSuccess(activitiesList);
            }
            this.errorWhileFetchingActivities = false;
        } else {
            for (int i2 = 0; i2 < this.activitiesRequestQueue.size(); i2++) {
                this.activitiesRequestQueue.get(i2).onError();
            }
            this.errorWhileFetchingActivities = true;
        }
        this.activitiesRequestQueue.clear();
        handleSharedPreferences();
        setStatusOfFetchingActivities(false);
    }

    private void setStatusOfFetchingActivities(boolean z) {
        synchronized (AdobeNotificationManager.class) {
            this.currentlyFetchingActivities = z;
        }
    }

    private boolean getStatusOfFetchingActivities() {
        boolean z;
        synchronized (AdobeNotification.class) {
            z = this.currentlyFetchingActivities;
        }
        return z;
    }

    private void setStatusOfCurrentlyFetchingInvitation(boolean z) {
        synchronized (AdobeNotificationManager.class) {
            this.currentlyFetchingInvitations = z;
        }
    }

    private boolean getStatusOfCurrentlyFetchingInvitation() {
        boolean z;
        synchronized (AdobeNotificationManager.class) {
            z = this.currentlyFetchingInvitations;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSwitchToPublicCloud() {
        if (!isCurrentCloudPublic()) {
            setCurrentCloudStatus(true);
            startFetchingData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSwitchToPrivateCloud() {
        if (isCurrentCloudPublic()) {
            setCurrentCloudStatus(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInvitationRequests(boolean z) {
        setStatusOfCurrentlyFetchingInvitation(false);
        if (z) {
            ArrayList<AdobeCollaborationInvite> invitationList = getInvitationList();
            for (int i = 0; i < this.invitationsRequestQueue.size(); i++) {
                this.invitationsRequestQueue.get(i).onSuccess(invitationList);
            }
            this.errorWhileFetchingInvitations = false;
        } else {
            for (int i2 = 0; i2 < this.invitationsRequestQueue.size(); i2++) {
                this.invitationsRequestQueue.get(i2).onError();
            }
            this.errorWhileFetchingInvitations = true;
        }
        this.invitationsRequestQueue.clear();
        handleSharedPreferences();
    }

    private void handleSharedPreferences() {
        if (!getStatusOfFetchingActivities() && !getStatusOfCurrentlyFetchingInvitation()) {
            this.pushNotificationDataModel.populateSharedPref(this.unreadCount);
        }
    }

    private ArrayList<AdobeCollaborationInvite> getInvitationList() {
        return this.pushNotificationDataModel.getInvitationList();
    }

    private ArrayList<AdobePushNotification> getActivitiesList() {
        return this.pushNotificationDataModel.getActivitiesList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wentOnline() {
        synchronized (AdobeNotificationManager.class) {
            if (this.deviceID == null && isNotificationSwitchedOn()) {
                if (this.googleRegistrationID == null || "".equals(this.googleRegistrationID)) {
                    if (this.notificationInterface != null) {
                        this.notificationInterface.registerGCM(new IAdobeGoogleRegistrationCallback() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.16
                            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGoogleRegistrationCallback
                            public void onSuccess(String str) {
                                AdobeNotificationManager.this.googleRegistrationID = str;
                                AdobeNotificationManager.this.registerDevice();
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeGoogleRegistrationCallback
                            public void onError(AdobeNetworkException adobeNetworkException) {
                            }
                        });
                    }
                } else {
                    registerDevice();
                }
            } else if (this.deviceID != null && !isNotificationSwitchedOn()) {
                unRegisterDevice();
            }
        }
    }

    public static String getLibraryURL(String str) {
        return Uri.parse(Uri.parse(str).getQueryParameter("location")).getPath();
    }

    protected void registerLocalNotifications() {
        if (this.networkReachabilityObserver == null) {
            this.networkReachabilityObserver = new Observer() { // from class: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager.17
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    switch (AnonymousClass18.$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode.ordinal()]) {
                        case 1:
                        case 2:
                            AdobeNotificationManager.this.wentOnline();
                            break;
                    }
                }
            };
        }
        if (this.loginNotificationObserver == null) {
            this.loginNotificationObserver = new LoginNotificationObserver();
        }
        if (this.cloudSwitchingObserver == null) {
            this.cloudSwitchingObserver = new CloudChangeNotificationObserver();
        }
        if (this.notificationSwitchObserver == null) {
            this.notificationSwitchObserver = new NotificationSwitchChangeListener();
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this.loginNotificationObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this.loginNotificationObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this.loginNotificationObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationManagerNotificationSwitchChange, this.notificationSwitchObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationManagerSwitchedToPrivateCloudNotification, this.cloudSwitchingObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNotificationManagerSwitchedToPublicCloudNotification, this.cloudSwitchingObserver);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.networkReachabilityObserver);
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.pushnotification.controller.AdobeNotificationManager$18, reason: invalid class name */
    /* synthetic */ class AnonymousClass18 {
        static final /* synthetic */ int[] $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode = new int[AdobeNetworkReachability.AdobeNetworkStatusCode.values().length];

        static {
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode[AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment = new int[AdobeAuthIMSEnvironment.values().length];
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment[AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment[AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType = new int[AdobeAssetFileRenditionType.values().length];
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType[AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType[AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PDF.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType[AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType = new int[AdobePushNotificationSubType.values().length];
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF.ordinal()] = 4;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE.ordinal()] = 5;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE.ordinal()] = 6;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE.ordinal()] = 7;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType[AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE.ordinal()] = 8;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logout() {
        AdobeANSSession.resetSharedSession();
        service = null;
        if (sharedManager != null) {
            sharedManager.deviceID = null;
            if (sharedManager.pushNotificationDataModel != null) {
                sharedManager.pushNotificationDataModel.clearActivitiesList();
                sharedManager.pushNotificationDataModel.clearInvitationList();
            }
        }
    }

    class LoginNotificationObserver implements Observer {
        private LoginNotificationObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginNotification || adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginExternalNotification) {
                AdobePushNotificationModel.clearSharedPreference();
                AdobeNotificationManager.this.registerDevice();
            } else if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification) {
                AdobePushNotificationModel.clearSharedPreference();
                AdobeNotificationManager.logout();
            }
        }
    }

    class CloudChangeNotificationObserver implements Observer {
        private CloudChangeNotificationObserver() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            if (((AdobeNotification) obj).getId() == AdobeInternalNotificationID.AdobeNotificationManagerSwitchedToPrivateCloudNotification) {
                AdobeNotificationManager.this.handleSwitchToPrivateCloud();
            } else {
                AdobeNotificationManager.this.handleSwitchToPublicCloud();
            }
        }
    }

    class NotificationSwitchChangeListener implements Observer {
        private NotificationSwitchChangeListener() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            boolean zBooleanValue = ((Boolean) ((AdobeNotification) obj).getInfo().get("notification_state")).booleanValue();
            AdobeNotificationManager.setNotificationSwitchStatus(zBooleanValue);
            if (zBooleanValue) {
                if (AdobeNotificationManager.this.deviceID == null) {
                    AdobeNotificationManager.this.registerDevice();
                }
            } else if (AdobeNotificationManager.this.deviceID != null) {
                AdobeNotificationManager.unRegisterDevice();
            }
        }
    }
}
