package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInviteResourceType;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;
import com.adobe.creativesdk.foundation.internal.pushnotification.utils.AdobePushNotificationQueue;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobePushNotificationModel {
    private static String currentUserID = null;
    private boolean populateSharedPreferences = true;
    private Map<String, AdobePushNotification> activitiesList = new HashMap();
    private Map<String, AdobeCollaborationInvite> invitationList = new HashMap();
    private Map<String, ArrayList<AdobePushNotification>> assetCommentsCount = new HashMap();
    private AdobePushNotificationDataModel pushNotificationDataModel = AdobePushNotificationDataModel.getSharedNotificationDataModel();

    public AdobePushNotificationModel() {
        this.pushNotificationDataModel.clearSharedPreferences();
    }

    public int getInvitationListSize() {
        if (this.invitationList != null) {
            return this.invitationList.size();
        }
        return 0;
    }

    public int getAssetCommentCount(String str) {
        if (str != null && this.assetCommentsCount.containsKey(str)) {
            return this.assetCommentsCount.get(str).size();
        }
        return 0;
    }

    public void clearInvitationList() {
        if (this.invitationList != null) {
            this.invitationList.clear();
        }
    }

    public void clearActivitiesList() {
        if (this.activitiesList != null) {
            this.activitiesList.clear();
        }
    }

    public void removeInvitation(Bundle bundle, boolean z) {
        String string = bundle.getString(AdobePushNotificationDataModel.ACCEPT_REQUEST);
        if (string != null) {
            String strSubstring = string.substring(string.lastIndexOf(47) + 1);
            if (this.invitationList.containsKey(strSubstring)) {
                this.invitationList.remove(strSubstring);
            }
            if (z) {
                removeInvitationFromSharedPref(strSubstring);
            }
        }
    }

    public void markActivityAsRead(Bundle bundle, boolean z) {
        String string = bundle.getString(AdobePushNotificationDataModel.NOTIFICATION_ID);
        if (this.activitiesList.containsKey(string)) {
            AdobePushNotification adobePushNotification = this.activitiesList.get(string);
            adobePushNotification.setServerState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED);
            if (adobePushNotification instanceof AdobeCommentPushNotification) {
                String region = adobePushNotification.getRegion();
                String resourceURL = adobePushNotification.getResourceURL();
                ArrayList<AdobePushNotification> arrayList = this.assetCommentsCount.get(region + URIUtil.SLASH + resourceURL.substring(resourceURL.lastIndexOf(47) + 1));
                if (arrayList != null) {
                    arrayList.remove(adobePushNotification);
                }
            }
            if (z) {
                removeActivityFromSharedPref(string, adobePushNotification.getNotificationSubType());
            }
        }
    }

    public void markActivityAsReadInSharedPref(String str) {
        if (this.activitiesList.containsKey(str)) {
            AdobePushNotification adobePushNotification = this.activitiesList.get(str);
            if (adobePushNotification instanceof AdobeCommentPushNotification) {
                String region = adobePushNotification.getRegion();
                String resourceURL = adobePushNotification.getResourceURL();
                ArrayList<AdobePushNotification> arrayList = this.assetCommentsCount.get(region + URIUtil.SLASH + resourceURL.substring(resourceURL.lastIndexOf(47) + 1));
                if (arrayList != null) {
                    arrayList.remove(adobePushNotification);
                }
                removeActivityFromSharedPref(str, AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT);
                return;
            }
            removeActivityFromSharedPref(str, AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER);
        }
    }

    public void insertNewInvitation(Bundle bundle, boolean z) {
        AdobeCollaborationInvite inviteFromBundle = getInviteFromBundle(bundle);
        if (inviteFromBundle != null) {
            this.invitationList.put(inviteFromBundle.getInviteID(), inviteFromBundle);
        }
        if (z) {
            insertNewInviteIntoSharedPref(inviteFromBundle);
        }
    }

    public void insertNewActivity(Bundle bundle, boolean z) {
        if (this.activitiesList.get(bundle.getString(AdobePushNotificationDataModel.NOTIFICATION_ID)) == null) {
            AdobePushNotification notificationFromBundle = getNotificationFromBundle(bundle);
            if (notificationFromBundle.getNotificationSubType() == AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT) {
                String region = notificationFromBundle.getRegion();
                String resourceURL = notificationFromBundle.getResourceURL();
                String str = region + URIUtil.SLASH + resourceURL.substring(resourceURL.lastIndexOf(47) + 1);
                ArrayList<AdobePushNotification> arrayList = this.assetCommentsCount.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                if (isSelfComment(notificationFromBundle)) {
                    z = false;
                }
                arrayList.add(notificationFromBundle);
                this.assetCommentsCount.put(str, arrayList);
            } else if (notificationFromBundle.getNotificationSubType() == AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE && !((AdobeCollaboratorDeleteNotification) notificationFromBundle).isRemoved() && ((AdobeCollaboratorDeleteNotification) notificationFromBundle).isRemover()) {
                z = false;
            }
            this.activitiesList.put(notificationFromBundle.getNotificationID(), notificationFromBundle);
            if (z) {
                insertNewActivityIntoSharedPref(notificationFromBundle);
            }
        }
    }

    public int getActivitiesSize() {
        return this.activitiesList.size();
    }

    public void removeInvitations(List<String> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.invitationList.remove(list.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public static void clearSharedPreference() {
        AdobePushNotificationDataModel sharedNotificationDataModel = AdobePushNotificationDataModel.getSharedNotificationDataModel();
        if (sharedNotificationDataModel != null) {
            sharedNotificationDataModel.clearSharedPreferences();
        }
    }

    public int markNotificationsForAssetsAsRead(String str, boolean z) {
        int i = 0;
        if (!this.assetCommentsCount.containsKey(str)) {
            return 0;
        }
        ArrayList<AdobePushNotification> arrayList = this.assetCommentsCount.get(str);
        int size = arrayList.size();
        AdobePushNotificationQueue.getPushNotificationQueue().putNotificationInQueue(arrayList);
        this.assetCommentsCount.remove(str);
        if (z) {
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                removeActivityFromSharedPref(arrayList.get(i2).getNotificationID(), AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT);
                i = i2 + 1;
            }
        }
        return size;
    }

    public void setInvitations(List<AdobeCollaborationInvite> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.invitationList.put(list.get(i2).getInviteID(), list.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0054 A[Catch: JSONException -> 0x00d3, TRY_LEAVE, TryCatch #0 {JSONException -> 0x00d3, blocks: (B:5:0x000a, B:7:0x001d, B:9:0x0021, B:10:0x0041, B:11:0x0044, B:13:0x0054), top: B:30:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [int] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotification, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<java.lang.Long, java.lang.Integer> populateActivitiesList(org.json.JSONArray r13) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationModel.populateActivitiesList(org.json.JSONArray):android.util.Pair");
    }

    private AdobePushNotification getInviteRevokeNotification(JSONObject jSONObject, AdobePushNotificationSubType adobePushNotificationSubType) {
        AdobeInvitationRevokeNotification adobeInvitationRevokeNotification = new AdobeInvitationRevokeNotification();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("folder");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = jSONObject.optJSONObject("library");
        }
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("name");
            String strOptString2 = jSONObjectOptJSONObject.optString("url");
            String strOptString3 = jSONObjectOptJSONObject.optString("region");
            adobeInvitationRevokeNotification.setResourceURL(strOptString2);
            adobeInvitationRevokeNotification.setResourceName(getDecodedString(strOptString));
            adobeInvitationRevokeNotification.setRegion(strOptString3);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("user");
        if (jSONObjectOptJSONObject2 != null) {
            String strOptString4 = jSONObjectOptJSONObject2.optString("userId");
            String strOptString5 = jSONObjectOptJSONObject2.optString("avatar");
            String strOptString6 = jSONObjectOptJSONObject2.optString("displayName");
            adobeInvitationRevokeNotification.setUserId(strOptString4);
            adobeInvitationRevokeNotification.setAvatarUrl(strOptString5);
            adobeInvitationRevokeNotification.setDisplayName(getDecodedString(strOptString6));
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sender");
        if (jSONObjectOptJSONObject3 != null) {
            adobeInvitationRevokeNotification.setSender(isSelf(jSONObjectOptJSONObject3.optString("userId")));
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(AppsForYourDomainQuery.RECIPIENT);
        if (jSONObjectOptJSONObject4 != null) {
            String strOptString7 = jSONObjectOptJSONObject4.optString("userId");
            String strOptString8 = jSONObjectOptJSONObject4.optString("displayName");
            AdobeCollaborationRole collaborationTypeFromString = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObjectOptJSONObject4.optString(AppsGroupsService.APPS_PROP_GROUP_ROLE));
            adobeInvitationRevokeNotification.setRecipient(isSelf(strOptString7));
            adobeInvitationRevokeNotification.setRecipientDisplayName(getDecodedString(strOptString8));
            adobeInvitationRevokeNotification.setRecipientRole(collaborationTypeFromString);
        }
        adobeInvitationRevokeNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeInvitationRevokeNotification;
    }

    private AdobePushNotification getInviteDeclineNotification(JSONObject jSONObject, AdobePushNotificationSubType adobePushNotificationSubType) {
        AdobeInvitationDeclineNotification adobeInvitationDeclineNotification = new AdobeInvitationDeclineNotification();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("folder");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = jSONObject.optJSONObject("library");
        }
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("name");
            String strOptString2 = jSONObjectOptJSONObject.optString("url");
            String strOptString3 = jSONObjectOptJSONObject.optString("region");
            adobeInvitationDeclineNotification.setResourceURL(strOptString2);
            adobeInvitationDeclineNotification.setResourceName(getDecodedString(strOptString));
            adobeInvitationDeclineNotification.setRegion(strOptString3);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("user");
        if (jSONObjectOptJSONObject2 != null) {
            String strOptString4 = jSONObjectOptJSONObject2.optString("userId");
            String strOptString5 = jSONObjectOptJSONObject2.optString("avatar");
            String strOptString6 = jSONObjectOptJSONObject2.optString("displayName");
            adobeInvitationDeclineNotification.setUserId(strOptString4);
            adobeInvitationDeclineNotification.setAvatarUrl(strOptString5);
            adobeInvitationDeclineNotification.setDisplayName(getDecodedString(strOptString6));
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sender");
        if (jSONObjectOptJSONObject3 != null) {
            adobeInvitationDeclineNotification.setSender(isSelf(jSONObjectOptJSONObject3.optString("userId")));
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(AppsForYourDomainQuery.RECIPIENT);
        if (jSONObjectOptJSONObject4 != null) {
            String strOptString7 = jSONObjectOptJSONObject4.optString("userId");
            String strOptString8 = jSONObjectOptJSONObject4.optString("displayName");
            AdobeCollaborationRole collaborationTypeFromString = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObjectOptJSONObject4.optString(AppsGroupsService.APPS_PROP_GROUP_ROLE));
            adobeInvitationDeclineNotification.setRecipient(isSelf(strOptString7));
            adobeInvitationDeclineNotification.setRecipientDisplayName(getDecodedString(strOptString8));
            adobeInvitationDeclineNotification.setRecipientRole(collaborationTypeFromString);
        }
        adobeInvitationDeclineNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeInvitationDeclineNotification;
    }

    private AdobePushNotification getCollaboratorRemoveNotification(JSONObject jSONObject, AdobePushNotificationSubType adobePushNotificationSubType) {
        AdobeCollaboratorDeleteNotification adobeCollaboratorDeleteNotification = new AdobeCollaboratorDeleteNotification();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("folder");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = jSONObject.optJSONObject("library");
        }
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("name");
            String strOptString2 = jSONObjectOptJSONObject.optString("url");
            String strOptString3 = jSONObjectOptJSONObject.optString("region");
            adobeCollaboratorDeleteNotification.setResourceURL(strOptString2);
            adobeCollaboratorDeleteNotification.setResourceName(getDecodedString(strOptString));
            adobeCollaboratorDeleteNotification.setRegion(strOptString3);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("user");
        String strOptString4 = "";
        if (jSONObjectOptJSONObject2 != null) {
            strOptString4 = jSONObjectOptJSONObject2.optString("userId");
            String strOptString5 = jSONObjectOptJSONObject2.optString("avatar");
            String strOptString6 = jSONObjectOptJSONObject2.optString("displayName");
            adobeCollaboratorDeleteNotification.setRemover(isSelf(strOptString4));
            adobeCollaboratorDeleteNotification.setUserId(strOptString4);
            adobeCollaboratorDeleteNotification.setAvatarUrl(strOptString5);
            adobeCollaboratorDeleteNotification.setDisplayName(getDecodedString(strOptString6));
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("removed");
        if (jSONObjectOptJSONObject3 != null) {
            String strOptString7 = jSONObjectOptJSONObject3.optString("userId");
            String strOptString8 = jSONObjectOptJSONObject3.optString("displayName");
            AdobeCollaborationRole collaborationTypeFromString = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObjectOptJSONObject3.optString(AppsGroupsService.APPS_PROP_GROUP_ROLE));
            adobeCollaboratorDeleteNotification.setRemoved(isSelf(strOptString7));
            adobeCollaboratorDeleteNotification.setRemovedDisplayName(getDecodedString(strOptString8));
            adobeCollaboratorDeleteNotification.setALeaveEvent(checkIsLeaveEvent(strOptString7, strOptString4));
            adobeCollaboratorDeleteNotification.setRemovedRole(collaborationTypeFromString);
        }
        adobeCollaboratorDeleteNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeCollaboratorDeleteNotification;
    }

    private AdobePushNotification getCollaboratorRoleUpdateNotification(JSONObject jSONObject, AdobePushNotificationSubType adobePushNotificationSubType) {
        AdobeCollaboratorRoleChangeNotification adobeCollaboratorRoleChangeNotification = new AdobeCollaboratorRoleChangeNotification();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("user");
        if (jSONObjectOptJSONObject != null) {
            adobeCollaboratorRoleChangeNotification.setSenderName(getDecodedString(jSONObjectOptJSONObject.optString("displayName")));
            adobeCollaboratorRoleChangeNotification.setAvatarUrl(jSONObjectOptJSONObject.optString("avatar"));
            String strOptString = jSONObjectOptJSONObject.optString("userId");
            adobeCollaboratorRoleChangeNotification.setDisplayName(jSONObjectOptJSONObject.optString("displayName"));
            adobeCollaboratorRoleChangeNotification.setUserId(strOptString);
            adobeCollaboratorRoleChangeNotification.setSender(isSelf(strOptString));
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("library");
        if (jSONObjectOptJSONObject2 != null) {
            adobeCollaboratorRoleChangeNotification.setResourceName(getDecodedString(jSONObjectOptJSONObject2.optString("name")));
            adobeCollaboratorRoleChangeNotification.setResourceURL(jSONObjectOptJSONObject2.optString("url"));
        } else {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("folder");
            if (jSONObjectOptJSONObject3 != null) {
                adobeCollaboratorRoleChangeNotification.setResourceName(getDecodedString(jSONObjectOptJSONObject3.optString("name")));
                adobeCollaboratorRoleChangeNotification.setResourceURL(jSONObjectOptJSONObject3.optString("url"));
                adobeCollaboratorRoleChangeNotification.setRegion(jSONObjectOptJSONObject3.optString("region"));
            }
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
        if (jSONObjectOptJSONObject4 != null) {
            adobeCollaboratorRoleChangeNotification.setPreviousRole(AdobeCollaborationRole.getCollaborationTypeFromString(jSONObjectOptJSONObject4.optString("originalRole")));
            adobeCollaboratorRoleChangeNotification.setUpdatedRole(AdobeCollaborationRole.getCollaborationTypeFromString(jSONObjectOptJSONObject4.optString("updatedRole")));
        }
        adobeCollaboratorRoleChangeNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeCollaboratorRoleChangeNotification;
    }

    private void addToCommentMap(AdobePushNotificationState adobePushNotificationState, AdobePushNotification adobePushNotification) {
        if (adobePushNotificationState != null && adobePushNotificationState == AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW) {
            adobePushNotification.setLocalState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW);
            adobePushNotification.setServerState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW);
            String str = adobePushNotification.getRegion() + URIUtil.SLASH + adobePushNotification.getResourceURL().substring(adobePushNotification.getResourceURL().lastIndexOf(47) + 1);
            if (this.assetCommentsCount.containsKey(str)) {
                this.assetCommentsCount.get(str).add(adobePushNotification);
                return;
            }
            ArrayList<AdobePushNotification> arrayList = new ArrayList<>();
            arrayList.add(adobePushNotification);
            this.assetCommentsCount.put(str, arrayList);
            return;
        }
        adobePushNotification.setLocalState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED);
        adobePushNotification.setServerState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED);
    }

    public synchronized ArrayList<AdobeCollaborationInvite> getInvitationList() {
        ArrayList<AdobeCollaborationInvite> arrayList;
        arrayList = new ArrayList<>();
        Iterator<AdobeCollaborationInvite> it = this.invitationList.values().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public synchronized ArrayList<AdobePushNotification> getActivitiesList() {
        ArrayList<AdobePushNotification> arrayList;
        arrayList = new ArrayList<>();
        for (AdobePushNotification adobePushNotification : this.activitiesList.values()) {
            adobePushNotification.recalculateTimeStampMessage(getCurrentTime());
            arrayList.add(adobePushNotification);
        }
        Collections.sort(arrayList, new NotificationComparator());
        return arrayList;
    }

    private AdobePushNotification getNotificationFromBundle(Bundle bundle) {
        String string;
        String string2;
        AdobePushNotification adobePushNotification;
        String displayName;
        String string3;
        String string4;
        String string5;
        String string6;
        String string7;
        String string8 = null;
        AdobePushNotificationSubType value = AdobePushNotificationSubType.getValue(bundle.getString(AdobePushNotificationDataModel.SUBTYPE));
        AdobePushNotificationType value2 = AdobePushNotificationType.getValue(bundle.getString("type"));
        switch (value) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
                AdobeInvitationAcceptPushNotification adobeInvitationAcceptPushNotification = new AdobeInvitationAcceptPushNotification();
                adobeInvitationAcceptPushNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER);
                String string9 = bundle.getString(Login.ATTRIBUTE_USER_NAME);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    string = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                    adobePushNotification = adobeInvitationAcceptPushNotification;
                    string3 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    displayName = string9;
                } else if (value2 != AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    string = null;
                    displayName = string9;
                    adobePushNotification = adobeInvitationAcceptPushNotification;
                    string3 = null;
                } else {
                    string = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    adobePushNotification = adobeInvitationAcceptPushNotification;
                    string3 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                    displayName = string9;
                }
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                AdobeCommentPushNotification adobeCommentPushNotification = new AdobeCommentPushNotification();
                adobeCommentPushNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT);
                adobeCommentPushNotification.setComment(bundle.getString("comment"));
                String string10 = bundle.getString(AdobePushNotificationDataModel.ASSET_URL);
                String string11 = bundle.getString(AdobePushNotificationDataModel.SENDER_NAME);
                string = bundle.getString("assetName");
                string3 = string10;
                adobePushNotification = adobeCommentPushNotification;
                displayName = string11;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                AdobeInvitationAcceptPushNotification adobeInvitationAcceptPushNotification2 = new AdobeInvitationAcceptPushNotification();
                adobeInvitationAcceptPushNotification2.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    string7 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    string8 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                } else if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    string8 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    string7 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                } else {
                    string7 = null;
                }
                string3 = string7;
                adobePushNotification = adobeInvitationAcceptPushNotification2;
                displayName = AdobeAuthIdentityManagementService.getSharedInstance().getDisplayName();
                string = string8;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                AdobeCollaboratorRoleChangeNotification adobeCollaboratorRoleChangeNotification = new AdobeCollaboratorRoleChangeNotification();
                adobeCollaboratorRoleChangeNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    String string12 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                    string6 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    string = string12;
                } else if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    String string13 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    string6 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                    string = string13;
                } else {
                    string = null;
                    string6 = null;
                }
                adobeCollaboratorRoleChangeNotification.setResourceName(string);
                adobeCollaboratorRoleChangeNotification.setResourceURL(string6);
                String string14 = bundle.getString("firstName");
                String string15 = bundle.getString("lastName");
                adobeCollaboratorRoleChangeNotification.setSenderName(concat(string14, string15));
                String strConcat = concat(string14, string15);
                adobeCollaboratorRoleChangeNotification.setAvatarUrl(bundle.getString("avatar"));
                adobeCollaboratorRoleChangeNotification.setPreviousRole(AdobeCollaborationRole.getCollaborationTypeFromString(bundle.getString("originalRole")));
                adobeCollaboratorRoleChangeNotification.setUpdatedRole(AdobeCollaborationRole.getCollaborationTypeFromString(bundle.getString("updatedRole")));
                adobePushNotification = adobeCollaboratorRoleChangeNotification;
                String str = string6;
                displayName = strConcat;
                string3 = str;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                AdobeCollaboratorDeleteNotification adobeCollaboratorDeleteNotification = new AdobeCollaboratorDeleteNotification();
                adobeCollaboratorDeleteNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    String string16 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                    string5 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    string = string16;
                } else if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    String string17 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    string5 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                    string = string17;
                } else {
                    string = null;
                    string5 = null;
                }
                String string18 = bundle.getString(AdobePushNotificationDataModel.USER_ID);
                adobeCollaboratorDeleteNotification.setResourceName(getDecodedString(string));
                adobeCollaboratorDeleteNotification.setRemover(isSelf(string18));
                adobeCollaboratorDeleteNotification.setResourceURL(string5);
                String string19 = bundle.getString(Login.ATTRIBUTE_USER_NAME);
                adobeCollaboratorDeleteNotification.setRemovedDisplayName(getDecodedString(bundle.getString("removedDisplayName")));
                String string20 = bundle.getString(AdobePushNotificationDataModel.REMOVED_USER_ID);
                adobeCollaboratorDeleteNotification.setRemoved(isSelf(string20));
                adobeCollaboratorDeleteNotification.setRemovedRole(AdobeCollaborationRole.getCollaborationTypeFromString(bundle.getString("removedRole")));
                adobeCollaboratorDeleteNotification.setALeaveEvent(checkIsLeaveEvent(string20, string18));
                adobeCollaboratorDeleteNotification.setAvatarUrl(bundle.getString("avatarUrl"));
                adobePushNotification = adobeCollaboratorDeleteNotification;
                String str2 = string5;
                displayName = string19;
                string3 = str2;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
                AdobeInvitationDeclineNotification adobeInvitationDeclineNotification = new AdobeInvitationDeclineNotification();
                adobeInvitationDeclineNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    String string21 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                    string4 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    string = string21;
                } else if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    String string22 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    string4 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                    string = string22;
                } else {
                    string = null;
                    string4 = null;
                }
                adobeInvitationDeclineNotification.setResourceName(getDecodedString(string));
                adobeInvitationDeclineNotification.setResourceURL(string4);
                String string23 = bundle.getString(Login.ATTRIBUTE_USER_NAME);
                adobeInvitationDeclineNotification.setSender(isSelf(bundle.getString("sender-Id")));
                adobeInvitationDeclineNotification.setRecipient(isSelf(bundle.getString("recipientUserId")));
                adobeInvitationDeclineNotification.setRecipientDisplayName(getDecodedString(bundle.getString("recipientDisplayName")));
                adobeInvitationDeclineNotification.setRecipientRole(AdobeCollaborationRole.getCollaborationTypeFromString(bundle.getString("recipientRole")));
                adobeInvitationDeclineNotification.setAvatarUrl(bundle.getString("avatarUrl"));
                adobePushNotification = adobeInvitationDeclineNotification;
                String str3 = string4;
                displayName = string23;
                string3 = str3;
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                AdobeInvitationRevokeNotification adobeInvitationRevokeNotification = new AdobeInvitationRevokeNotification();
                adobeInvitationRevokeNotification.setNotificationSubType(AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE);
                if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                    String string24 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
                    string2 = bundle.getString(AdobePushNotificationDataModel.FOLDER_URL);
                    string = string24;
                } else if (value2 == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                    String string25 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
                    string2 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_URL);
                    string = string25;
                } else {
                    string = null;
                    string2 = null;
                }
                adobeInvitationRevokeNotification.setResourceName(getDecodedString(string));
                adobeInvitationRevokeNotification.setResourceURL(string2);
                String string26 = bundle.getString(Login.ATTRIBUTE_USER_NAME);
                adobeInvitationRevokeNotification.setSender(isSelf(bundle.getString("sender-Id")));
                adobeInvitationRevokeNotification.setRecipient(isSelf(bundle.getString("recipientUserId")));
                adobeInvitationRevokeNotification.setRecipientDisplayName(getDecodedString(bundle.getString("recipientDisplayName")));
                adobeInvitationRevokeNotification.setRecipientRole(AdobeCollaborationRole.getCollaborationTypeFromString(bundle.getString("recipientRole")));
                adobeInvitationRevokeNotification.setAvatarUrl(bundle.getString("avatarUrl"));
                adobePushNotification = adobeInvitationRevokeNotification;
                String str4 = string2;
                displayName = string26;
                string3 = str4;
                break;
            default:
                string = null;
                displayName = null;
                string3 = null;
                adobePushNotification = null;
                break;
        }
        if (adobePushNotification != null) {
            adobePushNotification.setNotificationType(value2);
            String string27 = bundle.getString("region");
            String string28 = bundle.getString("created-timestamp");
            long j = 0;
            if (string28 != null) {
                j = Long.parseLong(string28);
            }
            String string29 = bundle.getString(AdobePushNotificationDataModel.NOTIFICATION_ID);
            String string30 = bundle.getString(AdobePushNotificationDataModel.USER_ID);
            adobePushNotification.setRegion(string27);
            adobePushNotification.setIsUser(isSelf(string30));
            adobePushNotification.setUserId(string30);
            adobePushNotification.setDisplayName(getDecodedString(displayName));
            adobePushNotification.setIsNotificationRead(false);
            adobePushNotification.setNotificationID(string29);
            adobePushNotification.setTimestamp(j);
            adobePushNotification.recalculateTimeStampMessage(getCurrentTime());
            adobePushNotification.setResourceURL(string3);
            adobePushNotification.setResourceName(getDecodedString(string));
            adobePushNotification.setLocalState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW);
            adobePushNotification.setServerState(AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW);
        }
        return adobePushNotification;
    }

    private boolean checkIsLeaveEvent(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    private static boolean isSelf(String str) {
        if (currentUserID == null) {
            currentUserID = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getAdobeID();
        }
        return currentUserID.equals(str);
    }

    private String concat(String str, String str2) {
        StringBuilder sb = new StringBuilder("");
        if (str != null) {
            sb.append(str);
            sb.append(" ");
        }
        if (str2 != null) {
            sb.append(str2);
        }
        return sb.toString();
    }

    private AdobeCollaborationInvite getInviteFromBundle(Bundle bundle) {
        AdobeCollaborationInvite adobeCollaborationInvite = new AdobeCollaborationInvite();
        String string = bundle.getString(AdobePushNotificationDataModel.SENDER_NAME);
        String string2 = bundle.getString(AdobePushNotificationDataModel.ACCEPT_REQUEST);
        AdobePushNotificationType value = AdobePushNotificationType.getValue(bundle.getString("type"));
        if (string2 != null) {
            String strSubstring = string2.substring(string2.lastIndexOf(URIUtil.SLASH) + 1);
            String string3 = "";
            if (value == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                string3 = bundle.getString(AdobePushNotificationDataModel.LIBRARY_NAME);
            } else if (value == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
                string3 = bundle.getString(AdobePushNotificationDataModel.FOLDER_NAME);
            }
            adobeCollaborationInvite.setSenderUserName(string);
            adobeCollaborationInvite.setInviteID(strSubstring);
            adobeCollaborationInvite.setResourceName(string3);
            if (value == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY) {
                adobeCollaborationInvite.setResourceType(AdobeCollaborationInviteResourceType.ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY);
            } else {
                adobeCollaborationInvite.setResourceType(AdobeCollaborationInviteResourceType.ADOBE_COLLABORATION_INVITE_TYPE_ASSET);
            }
            return adobeCollaborationInvite;
        }
        return null;
    }

    private long getCurrentTime() {
        return System.currentTimeMillis();
    }

    private static AdobeCommentPushNotification getCommentNotification(JSONObject jSONObject, AdobePushNotificationSubType adobePushNotificationSubType) {
        AdobeCommentPushNotification adobeCommentPushNotification = new AdobeCommentPushNotification();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_ASSET);
        if (jSONObjectOptJSONObject != null) {
            adobeCommentPushNotification.setRegion(jSONObjectOptJSONObject.optString("region"));
            adobeCommentPushNotification.setResourceName(getDecodedString(jSONObjectOptJSONObject.optString("name")));
            adobeCommentPushNotification.setResourceURL(jSONObjectOptJSONObject.optString("url"));
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("user");
        if (jSONObjectOptJSONObject2 != null) {
            adobeCommentPushNotification.setFirstName(getDecodedString(jSONObjectOptJSONObject2.optString("firstName")));
            adobeCommentPushNotification.setLastName(getDecodedString(jSONObjectOptJSONObject2.optString("lastName")));
            String strOptString = jSONObjectOptJSONObject2.optString("userId");
            adobeCommentPushNotification.setUserId(strOptString);
            adobeCommentPushNotification.setIsUser(isSelf(strOptString));
            adobeCommentPushNotification.setDisplayName(getDecodedString(adobeCommentPushNotification.getFirstName() + " " + adobeCommentPushNotification.getLastName()));
        }
        adobeCommentPushNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeCommentPushNotification;
    }

    private static AdobeInvitationAcceptPushNotification getInvitationAcceptNotification(JSONObject jSONObject, AdobePushNotificationType adobePushNotificationType, AdobePushNotificationSubType adobePushNotificationSubType) {
        JSONObject jSONObjectOptJSONObject;
        AdobeInvitationAcceptPushNotification adobeInvitationAcceptPushNotification = new AdobeInvitationAcceptPushNotification();
        if (adobePushNotificationType == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS) {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("folder");
            if (jSONObjectOptJSONObject2 != null) {
                adobeInvitationAcceptPushNotification.setRegion(jSONObjectOptJSONObject2.optString("region"));
                adobeInvitationAcceptPushNotification.setResourceName(getDecodedString(jSONObjectOptJSONObject2.optString("name")));
                adobeInvitationAcceptPushNotification.setResourceURL(jSONObjectOptJSONObject2.optString("url"));
            }
        } else if (adobePushNotificationType == AdobePushNotificationType.ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY && (jSONObjectOptJSONObject = jSONObject.optJSONObject("library")) != null) {
            adobeInvitationAcceptPushNotification.setResourceName(getDecodedString(jSONObjectOptJSONObject.optString("name")));
            adobeInvitationAcceptPushNotification.setResourceURL(jSONObjectOptJSONObject.optString("url"));
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("user");
        if (jSONObjectOptJSONObject3 != null) {
            adobeInvitationAcceptPushNotification.setFirstName(getDecodedString(jSONObjectOptJSONObject3.optString("firstName")));
            adobeInvitationAcceptPushNotification.setLastName(getDecodedString(jSONObjectOptJSONObject3.optString("lastName")));
            String strOptString = jSONObjectOptJSONObject3.optString("userId");
            adobeInvitationAcceptPushNotification.setUserId(strOptString);
            adobeInvitationAcceptPushNotification.setIsUser(isSelf(strOptString));
            adobeInvitationAcceptPushNotification.setDisplayName(getDecodedString(jSONObjectOptJSONObject3.optString("displayName")));
        }
        adobeInvitationAcceptPushNotification.setNotificationSubType(adobePushNotificationSubType);
        return adobeInvitationAcceptPushNotification;
    }

    private static String getDecodedString(String str) {
        if (str != null) {
            try {
                return URLDecoder.decode(str, "UTF-8").replace("%20", " ");
            } catch (UnsupportedEncodingException | IllegalArgumentException e2) {
                return str.replace("%20", " ");
            }
        }
        return null;
    }

    public void populateSharedPref(int i) {
        if (this.populateSharedPreferences) {
            this.populateSharedPreferences = false;
            this.pushNotificationDataModel.clearSharedPreferences();
            ArrayList<AdobeCollaborationInvite> invitationList = getInvitationList();
            for (int i2 = 0; i2 < invitationList.size(); i2++) {
                insertNewInviteIntoSharedPref(invitationList.get(i2));
            }
            int size = i - invitationList.size();
            ArrayList<AdobePushNotification> activitiesList = getActivitiesList();
            int size2 = size > activitiesList.size() ? activitiesList.size() : size;
            for (int i3 = 0; i3 < size2; i3++) {
                if (activitiesList.get(i3).getLocalState() == AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW && (!isSelfComment(activitiesList.get(i3)) || isOtherRemoval(activitiesList.get(i3)))) {
                    insertNewActivityIntoSharedPref(activitiesList.get(i3));
                }
            }
        }
    }

    private boolean isOtherRemoval(AdobePushNotification adobePushNotification) {
        return adobePushNotification.getNotificationSubType() == AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE && !((AdobeCollaboratorDeleteNotification) adobePushNotification).isRemoved();
    }

    private boolean isSelfComment(AdobePushNotification adobePushNotification) {
        return adobePushNotification.getNotificationSubType() == AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT && adobePushNotification.isUser();
    }

    private void insertNewInviteIntoSharedPref(AdobeCollaborationInvite adobeCollaborationInvite) {
        JSONObject jSONObject = new JSONObject();
        if (!this.pushNotificationDataModel.contains(adobeCollaborationInvite.getInviteID(), AdobePushNotificationSubType.ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED)) {
            try {
                jSONObject.put("state", AdobePushNotificationState.ADOBE_PUSH_NOTIFICATION_STATE_NEW.toString());
                jSONObject.put(AdobePushNotificationDataModel.SENDER_NAME, adobeCollaborationInvite.getSenderUserName());
                jSONObject.put(AdobePushNotificationDataModel.RESOURCE_NAME, adobeCollaborationInvite.getResourceName());
                jSONObject.put(AdobePushNotificationDataModel.ACCEPT_REQUEST, adobeCollaborationInvite.getInviteID());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            this.pushNotificationDataModel.insertInvite(adobeCollaborationInvite.getInviteID(), jSONObject.toString());
        }
    }

    private void removeInvitationFromSharedPref(String str) {
        this.pushNotificationDataModel.deleteInvite(str);
    }

    private void insertNewActivityIntoSharedPref(AdobePushNotification adobePushNotification) {
        JSONObject payloadObjectForSharedPref;
        if (!this.pushNotificationDataModel.contains(adobePushNotification.getNotificationID(), adobePushNotification.getNotificationSubType()) && (payloadObjectForSharedPref = getPayloadObjectForSharedPref(adobePushNotification)) != null) {
            this.pushNotificationDataModel.insertActivity(adobePushNotification.getNotificationID(), payloadObjectForSharedPref.toString(), adobePushNotification.getNotificationSubType(), adobePushNotification.getNotificationType());
        }
    }

    private JSONObject getPayloadObjectForSharedPref(AdobePushNotification adobePushNotification) {
        JSONObject jSONObject = new JSONObject();
        switch (adobePushNotification.getNotificationSubType()) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
                try {
                    jSONObject.put(AdobePushNotificationDataModel.USER_NAME, adobePushNotification.getDisplayName());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return null;
                }
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                try {
                    jSONObject.put("state", adobePushNotification.getLocalState().toString());
                    jSONObject.put("region", adobePushNotification.getRegion());
                    jSONObject.put(AdobePushNotificationDataModel.RESOURCE_URL, adobePushNotification.getResourceURL());
                    jSONObject.put(AdobePushNotificationDataModel.RESOURCE_NAME, adobePushNotification.getResourceName());
                    jSONObject.put(AdobePushNotificationDataModel.SENDER_NAME, adobePushNotification.getDisplayName());
                    jSONObject.put("self", adobePushNotification.isUser());
                    jSONObject.put("timestamp", adobePushNotification.getTimestamp());
                    jSONObject.put("comment", ((AdobeCommentPushNotification) adobePushNotification).getComment());
                    return jSONObject;
                } catch (JSONException e3) {
                    e3.printStackTrace();
                    return null;
                }
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                break;
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                try {
                    jSONObject.put("state", adobePushNotification.getLocalState().toString());
                    jSONObject.put(AdobePushNotificationDataModel.RESOURCE_NAME, adobePushNotification.getResourceName());
                    jSONObject.put("region", adobePushNotification.getRegion());
                    jSONObject.put(AdobePushNotificationDataModel.RESOURCE_URL, adobePushNotification.getResourceName());
                    jSONObject.put(AdobePushNotificationDataModel.SENDER_NAME, adobePushNotification.getDisplayName());
                    jSONObject.put("timestamp", adobePushNotification.getTimestamp());
                    return jSONObject;
                } catch (JSONException e4) {
                    e4.printStackTrace();
                    return jSONObject;
                }
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                return jSONObject;
            default:
                return null;
        }
        try {
            jSONObject.put("state", adobePushNotification.getLocalState().toString());
            jSONObject.put("region", adobePushNotification.getRegion());
            jSONObject.put(AdobePushNotificationDataModel.RESOURCE_URL, adobePushNotification.getResourceURL());
            jSONObject.put(AdobePushNotificationDataModel.RESOURCE_URL, adobePushNotification.getResourceName());
            jSONObject.put("self", adobePushNotification.isUser());
            jSONObject.put("timestamp", adobePushNotification.getTimestamp());
            return jSONObject;
        } catch (JSONException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private void removeActivityFromSharedPref(String str, AdobePushNotificationSubType adobePushNotificationSubType) {
        this.pushNotificationDataModel.deleteActivities(str, adobePushNotificationSubType);
    }

    class NotificationComparator implements Serializable, Comparator<AdobePushNotification> {
        NotificationComparator() {
        }

        @Override // java.util.Comparator
        public int compare(AdobePushNotification adobePushNotification, AdobePushNotification adobePushNotification2) {
            if (adobePushNotification.getTimestamp() > adobePushNotification2.getTimestamp()) {
                return -1;
            }
            return !((adobePushNotification.getTimestamp() > adobePushNotification2.getTimestamp() ? 1 : (adobePushNotification.getTimestamp() == adobePushNotification2.getTimestamp() ? 0 : -1)) == 0) ? 1 : 0;
        }
    }
}
