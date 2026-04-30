package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePushNotificationDataModel {
    public static final String ACCEPT_REQUEST = "acceptRequest";
    public static final String ASSET_COUNT = "ASSET_COUNT";
    public static final String ASSET_NAME = "assetName";
    public static final String ASSET_URL = "assetUrl";
    public static final String COLLABORATOR_ROLE_CHANGE_AVATAR = "avatar";
    public static final String COLLABORATOR_ROLE_CHANGE_PREVIOUS_ROLE = "originalRole";
    public static final String COLLABORATOR_ROLE_CHANGE_SENDER_FIRST_NAME = "firstName";
    public static final String COLLABORATOR_ROLE_CHANGE_SENDER_LAST_NAME = "lastName";
    public static final String COLLABORATOR_ROLE_CHANGE_UPDATED_ROLE = "updatedRole";
    public static final String COMMENT_MSG = "comment";
    public static final String CREATED_TIMESTAMP = "created-timestamp";
    public static final String FOLDER_NAME = "folderName";
    public static final String FOLDER_URL = "folderUrl";
    public static final String IS_ACTION_KEY = "IS_ACTION";
    public static final String LIBRARY_NAME = "libraryName";
    public static final String LIBRARY_URL = "libraryUrl";
    public static final String NOTIFICATION_ID = "notificationId";
    public static final String NOTIFICATION_TYPE = "type";
    public static final String REGION = "region";
    public static final String REMOVED_USER_ID = "removedUserId";
    public static final String RESOURCE_NAME = "resourceName";
    public static final String RESOURCE_URL = "resourceUrl";
    public static final String SELF = "self";
    public static final String SENDER_NAME = "senderName";
    public static final String STATE = "state";
    public static final String STATE_EXPIRED = "EXPIRED";
    public static final String STATE_NEW = "NEW";
    public static final String SUBTYPE = "subType";
    public static final String TIMESTAMP = "timestamp";
    public static final String UNREAD_COUNT = "unreadCount";
    public static final String UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_KEY = "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION";
    public static final String UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID_KEY = "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID";
    public static final String USER_ID = "user-Id";
    public static final String USER_NAME = "UserName";
    private static AdobePushNotificationDataModel _dataModel;
    SharedPreferences sharedCollaboratorDeletePref;
    SharedPreferences sharedCollaboratorUpdatePref;
    SharedPreferences sharedCommentPref;
    SharedPreferences sharedInviteAcceptPref;
    SharedPreferences sharedInvitePref;
    String preferenceFileCollaboratorRoleChangeKey = "com.adobe.creativecloud.NotificationsCollaboratorRoleChangeDatabase";
    String preferenceFileInviteKey = "com.adobe.creativecloud.NotificationsInviteDatabase";
    String preferenceFileInviteAcceptKey = "com.adobe.creativecloud.NotificationsInviteAcceptDatabase";
    String preferenceFileCommentKey = "com.adobe.creativecloud.NotificationsCommentDatabase";
    String preferenceFileCollaboratorDeleteKey = "com.adobe.creativecloud.NotificationCollaboratorDelete";

    private AdobePushNotificationDataModel() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        this.sharedInvitePref = applicationContext.getSharedPreferences(this.preferenceFileInviteKey, 0);
        this.sharedInviteAcceptPref = applicationContext.getSharedPreferences(this.preferenceFileInviteAcceptKey, 0);
        this.sharedCommentPref = applicationContext.getSharedPreferences(this.preferenceFileCommentKey, 0);
        this.sharedCollaboratorUpdatePref = applicationContext.getSharedPreferences(this.preferenceFileCollaboratorRoleChangeKey, 0);
        this.sharedCollaboratorDeletePref = applicationContext.getSharedPreferences(this.preferenceFileCollaboratorDeleteKey, 0);
    }

    public static synchronized AdobePushNotificationDataModel getSharedNotificationDataModel() {
        if (_dataModel == null) {
            _dataModel = new AdobePushNotificationDataModel();
        }
        return _dataModel;
    }

    private String getURLFromPayload(String str, AdobePushNotificationSubType adobePushNotificationSubType) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            switch (adobePushNotificationSubType) {
                case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
                case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                    return jSONObject.getString(RESOURCE_URL);
                default:
                    return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
        e2.printStackTrace();
        return null;
    }

    public boolean insertInvite(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.sharedInvitePref.edit();
        if (this.sharedInvitePref.contains(str)) {
            return false;
        }
        editorEdit.putString(str, str2);
        editorEdit.apply();
        return true;
    }

    public boolean deleteInvite(String str) {
        SharedPreferences.Editor editorEdit = this.sharedInvitePref.edit();
        if (!this.sharedInvitePref.contains(str)) {
            return false;
        }
        editorEdit.remove(str);
        editorEdit.apply();
        return true;
    }

    public boolean contains(String str, AdobePushNotificationSubType adobePushNotificationSubType) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                return this.sharedInviteAcceptPref != null && this.sharedInviteAcceptPref.contains(str);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                return this.sharedCollaboratorUpdatePref != null && this.sharedCollaboratorUpdatePref.contains(str);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
            default:
                return false;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                return this.sharedCommentPref != null && this.sharedCommentPref.contains(str);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                return this.sharedInvitePref != null && this.sharedInvitePref.contains(str);
        }
    }

    public boolean insertActivities(String str, String str2, AdobePushNotificationSubType adobePushNotificationSubType, AdobePushNotificationType adobePushNotificationType) {
        SharedPreferences sharedPreferences;
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                sharedPreferences = this.sharedInviteAcceptPref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                sharedPreferences = this.sharedCollaboratorUpdatePref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                sharedPreferences = this.sharedCollaboratorDeletePref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                sharedPreferences = this.sharedCommentPref;
                break;
            default:
                sharedPreferences = null;
                break;
        }
        if (sharedPreferences == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (sharedPreferences.contains(str)) {
            return false;
        }
        int i = sharedPreferences.getInt(ASSET_COUNT, 0);
        String uRLFromPayload = getURLFromPayload(str2, adobePushNotificationSubType);
        String string = sharedPreferences.getString(ASSET_URL, null);
        if (i == 0) {
            editorEdit.clear();
            editorEdit.putString(ASSET_URL, uRLFromPayload);
        } else if (i >= 1 && (string == null || !string.equals(uRLFromPayload))) {
            editorEdit.putString(ASSET_URL, null);
        }
        editorEdit.putInt(ASSET_COUNT, i + 1);
        editorEdit.putString(str, str2);
        editorEdit.apply();
        return true;
    }

    public boolean deleteActivities(String str, AdobePushNotificationSubType adobePushNotificationSubType) {
        SharedPreferences sharedPreferences = null;
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                sharedPreferences = this.sharedInviteAcceptPref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                sharedPreferences = this.sharedCollaboratorUpdatePref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                sharedPreferences = this.sharedCollaboratorDeletePref;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                sharedPreferences = this.sharedCommentPref;
                break;
        }
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (sharedPreferences.contains(str)) {
                int i = sharedPreferences.getInt(ASSET_COUNT, 0);
                if (i <= 1) {
                    editorEdit.clear();
                } else {
                    editorEdit.putInt(ASSET_COUNT, i - 1);
                    editorEdit.remove(str);
                }
                editorEdit.apply();
                return true;
            }
        }
        return false;
    }

    private int getCount(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt(ASSET_COUNT, 0);
    }

    private String getAssetURLForInvite() {
        Map<String, ?> all = this.sharedInvitePref.getAll();
        String key = null;
        if (all.size() == 1) {
            Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
            while (it.hasNext()) {
                key = it.next().getKey();
            }
        }
        return key;
    }

    private String getAssetURLForInviteAcceptOrComment(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(ASSET_URL, null);
    }

    private String getAssetURLForCollaboratorRoleChange(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(ASSET_URL, null);
    }

    private String getAssetURLForCollaboratorDelete(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(ASSET_URL, null);
    }

    private Map<String, String> getAllNotificationForCommentOrInviteAccept(SharedPreferences sharedPreferences) {
        Map all = sharedPreferences.getAll();
        all.remove(ASSET_COUNT);
        all.remove(ASSET_URL);
        return all;
    }

    private Map<String, String> getAllNotificationForCollaboratorRoleChange(SharedPreferences sharedPreferences) {
        Map all = sharedPreferences.getAll();
        all.remove(ASSET_COUNT);
        all.remove(ASSET_URL);
        return all;
    }

    public int getNotificationCount(AdobePushNotificationSubType adobePushNotificationSubType) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                return getCount(this.sharedInviteAcceptPref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                return getCount(this.sharedCollaboratorUpdatePref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                return getCount(this.sharedCollaboratorDeletePref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                return getCount(this.sharedCommentPref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                return this.sharedInvitePref.getAll().size();
            default:
                return 0;
        }
    }

    public String getAssetURL(AdobePushNotificationSubType adobePushNotificationSubType) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                return getAssetURLForInviteAcceptOrComment(this.sharedInviteAcceptPref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                return getAssetURLForCollaboratorRoleChange(this.sharedCollaboratorUpdatePref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                return getAssetURLForCollaboratorDelete(this.sharedCollaboratorDeletePref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                return getAssetURLForInviteAcceptOrComment(this.sharedCommentPref);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                return getAssetURLForInvite();
            default:
                return null;
        }
    }

    public Map<String, String> getAllNotification(AdobePushNotificationSubType adobePushNotificationSubType) {
        if (getAssetURL(adobePushNotificationSubType) == null) {
            return null;
        }
        switch (adobePushNotificationSubType) {
        }
        return null;
    }

    public String getNotificationPayload(String str, AdobePushNotificationSubType adobePushNotificationSubType) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                return this.sharedInviteAcceptPref.getString(str, null);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                return this.sharedCollaboratorUpdatePref.getString(str, null);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                return this.sharedCollaboratorDeletePref.getString(str, null);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                return this.sharedCommentPref.getString(str, null);
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                return this.sharedInvitePref.getString(str, null);
            default:
                return null;
        }
    }

    public void clearSharedPreferences() {
        SharedPreferences.Editor editorEdit = this.sharedCommentPref.edit();
        editorEdit.clear();
        editorEdit.apply();
        SharedPreferences.Editor editorEdit2 = this.sharedInviteAcceptPref.edit();
        editorEdit2.clear();
        editorEdit2.apply();
        SharedPreferences.Editor editorEdit3 = this.sharedInvitePref.edit();
        editorEdit3.clear();
        editorEdit3.apply();
        SharedPreferences.Editor editorEdit4 = this.sharedCollaboratorUpdatePref.edit();
        editorEdit4.clear();
        editorEdit4.apply();
    }

    public void insertActivity(String str, String str2, AdobePushNotificationSubType adobePushNotificationSubType, AdobePushNotificationType adobePushNotificationType) {
        switch (adobePushNotificationSubType) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                insertActivities(str, str2, adobePushNotificationSubType, adobePushNotificationType);
                break;
        }
    }
}
