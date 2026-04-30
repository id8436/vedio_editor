package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationErrorCode;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationException;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationDataModel;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationInvite extends AdobeCollaboratorUser {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite.1
        @Override // android.os.Parcelable.Creator
        public AdobeCollaborationInvite createFromParcel(Parcel parcel) {
            return new AdobeCollaborationInvite(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AdobeCollaborationInvite[] newArray(int i) {
            return new AdobeCollaborationInvite[i];
        }
    };
    private String _createdDate;
    private String _inviteID;
    private String _recipientEmail;
    private String _resourceName;
    private String _senderUserName;
    private boolean isInProgressMode;
    private AdobeCollaborationInviteResourceType resourceType;

    public AdobeCollaborationInvite() {
        this.isInProgressMode = false;
        setIsInvite(true);
    }

    private AdobeCollaborationInvite(Parcel parcel) {
        super(parcel);
        this.isInProgressMode = false;
        this._inviteID = parcel.readString();
        this._senderUserName = parcel.readString();
        this._resourceName = parcel.readString();
        this._createdDate = parcel.readString();
        this._recipientEmail = parcel.readString();
        this.isInProgressMode = parcel.readByte() != 0;
        this.resourceType = AdobeCollaborationInviteResourceType.getCollaborationTypeFromString(parcel.readString());
    }

    public void setInProgressMode(boolean z) {
        this.isInProgressMode = z;
    }

    public boolean getInProgressMode() {
        return this.isInProgressMode;
    }

    public static AdobeCollaborationInvite inviteWithDictionary(JSONObject jSONObject) {
        AdobeCollaborationInvite adobeCollaborationInvite = new AdobeCollaborationInvite();
        adobeCollaborationInvite.setInviteID(jSONObject.optString("id"));
        adobeCollaborationInvite.setResourceName(jSONObject.optString(AdobePushNotificationDataModel.RESOURCE_NAME));
        adobeCollaborationInvite.setSenderUserName(jSONObject.optString(AdobePushNotificationDataModel.SENDER_NAME));
        if (adobeCollaborationInvite.getSenderUserName() == null || adobeCollaborationInvite.getSenderUserName().length() == 0) {
            adobeCollaborationInvite.setSenderUserName(concat(jSONObject.optString("senderFirstName"), jSONObject.optString("senderLastName")));
        }
        AdobeCollaborationInviteResourceType collaborationTypeFromString = AdobeCollaborationInviteResourceType.getCollaborationTypeFromString(jSONObject.optString("resourceType", ""));
        AdobeCollaborationRole collaborationTypeFromString2 = AdobeCollaborationRole.getCollaborationTypeFromString(jSONObject.optString("recipientRole", null));
        if (collaborationTypeFromString2 != null) {
            adobeCollaborationInvite.setCollaborationType(collaborationTypeFromString2);
        }
        adobeCollaborationInvite.setResourceType(collaborationTypeFromString);
        adobeCollaborationInvite.setCreatedDate(jSONObject.optString("created"));
        adobeCollaborationInvite.setEmail(jSONObject.optString("recipientEmail"));
        return adobeCollaborationInvite;
    }

    private static String concat(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(" ");
        }
        if (str2 != null) {
            sb.append(str2);
        }
        return sb.toString();
    }

    public static ArrayList<AdobeCollaborationInviteResponse> inviteWithDictionary(JSONArray jSONArray) {
        AdobeCollaborationException adobeCollaborationException;
        ArrayList<AdobeCollaborationInviteResponse> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                int i2 = jSONObject.getInt(AdobeCollaborationSession.STATUS_CODE);
                if (i2 >= 200 && i2 <= 299) {
                    arrayList.add(new AdobeCollaborationInviteResponse(inviteWithDictionary(jSONObject.getJSONObject(TtmlNode.TAG_BODY))));
                } else {
                    HashMap map = new HashMap();
                    String string = jSONObject.getString(AdobeCollaborationSession.STATUS_TEXT);
                    map.put("AdobeNetworkHTTPStatus", Integer.valueOf(i2));
                    if (i2 == 403) {
                        adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNAUTHORIZED, map, string, null);
                    } else {
                        adobeCollaborationException = new AdobeCollaborationException(AdobeCollaborationErrorCode.ADOBE_COLLABORATION_ERROR_UNEXPECTED_RESPONSE, map, string, null);
                    }
                    arrayList.add(new AdobeCollaborationInviteResponse(adobeCollaborationException));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return arrayList;
    }

    public void setEmail(String str) {
        this._recipientEmail = str;
    }

    public void setInviteID(String str) {
        this._inviteID = str;
    }

    public void setSenderUserName(String str) {
        this._senderUserName = str;
    }

    public void setResourceName(String str) {
        this._resourceName = str;
    }

    public void setCreatedDate(String str) {
        this._createdDate = str;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser
    public String getEmail() {
        return this._recipientEmail;
    }

    public String getInviteID() {
        return this._inviteID;
    }

    public String getSenderUserName() {
        return this._senderUserName;
    }

    public String getResourceName() {
        return this._resourceName;
    }

    public String getCreatedDate() {
        return this._createdDate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser
    public String getID() {
        return this._inviteID;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this._inviteID != null ? this._inviteID : "");
        parcel.writeString(this._senderUserName != null ? this._senderUserName : "");
        parcel.writeString(this._resourceName != null ? this._resourceName : "");
        parcel.writeString(this._createdDate != null ? this._createdDate : "");
        parcel.writeString(this._recipientEmail != null ? this._recipientEmail : "");
        parcel.writeByte((byte) (this.isInProgressMode ? 1 : 0));
        parcel.writeString(this.resourceType == null ? "" : this.resourceType.toString());
    }

    public AdobeCollaborationInviteResourceType getResourceType() {
        return this.resourceType;
    }

    public void setResourceType(AdobeCollaborationInviteResourceType adobeCollaborationInviteResourceType) {
        this.resourceType = adobeCollaborationInviteResourceType;
    }
}
