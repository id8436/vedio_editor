package com.adobe.creativesdk.foundation.internal.collaboration.models;

import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaboration {
    private static String _selfAdobeID = null;
    private String _ownerId = null;
    private ArrayList<AdobeCollaborator> _collaborators = new ArrayList<>();
    private ArrayList<AdobeCollaborationInvite> _invites = new ArrayList<>();
    private ArrayList<AdobeCollaboratorUser> _invitesCollaborators = new ArrayList<>();

    private AdobeCollaboration() {
    }

    private static String getSelfAdobeID() {
        if (_selfAdobeID == null) {
            _selfAdobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        }
        return _selfAdobeID;
    }

    public ArrayList<AdobeCollaboratorUser> getCollaboratorsAndInvites() {
        return this._invitesCollaborators;
    }

    public static AdobeCollaboration collaborationWithDictionary(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            AdobeCollaboration adobeCollaboration = new AdobeCollaboration();
            String string = jSONObject.getString("ownerId");
            adobeCollaboration._ownerId = string;
            String selfAdobeID = getSelfAdobeID();
            JSONArray jSONArray = jSONObject.getJSONArray("collaborators");
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                AdobeCollaborator adobeCollaborator = new AdobeCollaborator();
                adobeCollaborator.setEmail(jSONObject2.getString("email"));
                adobeCollaborator.setName(jSONObject2.getString("name"));
                adobeCollaborator.setUserId(jSONObject2.getString("userId"));
                adobeCollaborator.setOwner(adobeCollaborator.getUserID().equals(string));
                AdobeCollaborationRole collaborationTypeFromString = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObject2.optString(AppsGroupsService.APPS_PROP_GROUP_ROLE, null));
                if (collaborationTypeFromString != null) {
                    adobeCollaborator.setCollaborationType(collaborationTypeFromString);
                }
                if (i2 == -1 && adobeCollaborator.getUserID().equals(string)) {
                    i2 = i3;
                }
                if (i == -1 && adobeCollaborator.getUserID().equals(selfAdobeID)) {
                    i = i3;
                }
                adobeCollaboration._collaborators.add(adobeCollaborator);
                adobeCollaboration._invitesCollaborators.add(adobeCollaborator);
            }
            if (i2 != -1 && i != -1) {
                if (i2 != 0) {
                    Collections.swap(adobeCollaboration._invitesCollaborators, 0, i2);
                    if (i == 0) {
                        if (i2 != 1) {
                            Collections.swap(adobeCollaboration._invitesCollaborators, 1, i2);
                        }
                        i = i2;
                    }
                }
                if (i != i2) {
                    Collections.swap(adobeCollaboration._invitesCollaborators, 1, i);
                }
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("invites");
            for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                JSONObject jSONObject3 = jSONArray2.getJSONObject(i4);
                AdobeCollaborationInvite adobeCollaborationInvite = new AdobeCollaborationInvite();
                adobeCollaborationInvite.setCreatedDate(jSONObject3.getString("created"));
                adobeCollaborationInvite.setInviteID(jSONObject3.getString("id"));
                adobeCollaborationInvite.setSenderUserName(jSONObject3.getString(AdobePushNotificationDataModel.SENDER_NAME));
                adobeCollaborationInvite.setEmail(jSONObject3.getString("recipientEmail"));
                AdobeCollaborationRole collaborationTypeFromString2 = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObject3.optString("recipientRole", null));
                if (collaborationTypeFromString2 != null) {
                    adobeCollaborationInvite.setCollaborationType(collaborationTypeFromString2);
                }
                adobeCollaboration._invites.add(adobeCollaborationInvite);
                adobeCollaboration._invitesCollaborators.add(adobeCollaborationInvite);
            }
            return adobeCollaboration;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getOwnerId() {
        return this._ownerId;
    }

    public ArrayList<AdobeCollaborator> getCollaborators() {
        return this._collaborators;
    }

    public ArrayList<AdobeCollaborationInvite> getInvites() {
        return this._invites;
    }
}
