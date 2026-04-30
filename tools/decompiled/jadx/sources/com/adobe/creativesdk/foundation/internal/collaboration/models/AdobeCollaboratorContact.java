package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaboratorContact implements Parcelable {
    public static final Parcelable.Creator<AdobeCollaboratorContact> CREATOR = new Parcelable.Creator<AdobeCollaboratorContact>() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorContact.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeCollaboratorContact createFromParcel(Parcel parcel) {
            return new AdobeCollaboratorContact(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeCollaboratorContact[] newArray(int i) {
            return new AdobeCollaboratorContact[i];
        }
    };
    private String avatarUrl;
    private String emailAddress;
    private String name;

    protected AdobeCollaboratorContact(Parcel parcel) {
        this.avatarUrl = parcel.readString();
        this.name = parcel.readString();
        this.emailAddress = parcel.readString();
    }

    public AdobeCollaboratorContact() {
    }

    public void setEmailAddress(String str) {
        this.emailAddress = str;
    }

    public String getEmailAddress() {
        return this.emailAddress;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public static List<AdobeCollaboratorContact> getContactsFromResponse(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    AdobeCollaboratorContact adobeCollaboratorContact = new AdobeCollaboratorContact();
                    adobeCollaboratorContact.setName(jSONObject.optString("name"));
                    adobeCollaboratorContact.setEmailAddress(jSONObject.optString("email"));
                    arrayList.add(adobeCollaboratorContact);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.name);
        parcel.writeString(this.emailAddress);
    }

    public boolean equals(Object obj) {
        if (obj instanceof AdobeCollaboratorContact) {
            return ((AdobeCollaboratorContact) obj).getEmailAddress().equals(getEmailAddress());
        }
        return false;
    }
}
