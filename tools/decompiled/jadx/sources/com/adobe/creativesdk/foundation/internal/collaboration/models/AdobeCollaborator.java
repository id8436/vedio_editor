package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborator extends AdobeCollaboratorUser {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborator.1
        @Override // android.os.Parcelable.Creator
        public AdobeCollaborator createFromParcel(Parcel parcel) {
            return new AdobeCollaborator(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AdobeCollaborator[] newArray(int i) {
            return new AdobeCollaborator[i];
        }
    };
    private String email;
    private String name;
    private boolean owner;
    private String userID;

    public AdobeCollaborator() {
        setIsInvite(false);
    }

    private AdobeCollaborator(Parcel parcel) {
        super(parcel);
        this.email = parcel.readString();
        this.name = parcel.readString();
        this.userID = parcel.readString();
        this.owner = parcel.readByte() != 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser
    public String getEmail() {
        return this.email;
    }

    public String getName() {
        return this.name;
    }

    public String getUserID() {
        return this.userID;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser
    public boolean isOwner() {
        return this.owner;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUserId(String str) {
        this.userID = str;
    }

    public void setOwner(boolean z) {
        this.owner = z;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser
    public String getID() {
        return this.userID;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorUser, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.email != null ? this.email : "");
        parcel.writeString(this.name != null ? this.name : "");
        parcel.writeString(this.userID != null ? this.userID : "");
        parcel.writeByte((byte) (this.owner ? 1 : 0));
    }
}
