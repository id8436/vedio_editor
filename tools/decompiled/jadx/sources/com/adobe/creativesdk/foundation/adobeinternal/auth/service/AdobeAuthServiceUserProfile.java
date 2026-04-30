package com.adobe.creativesdk.foundation.adobeinternal.auth.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthServiceUserProfile extends AdobeAuthUserProfile implements Parcelable {
    public static final Parcelable.Creator<AdobeAuthServiceUserProfile> CREATOR = new Parcelable.Creator<AdobeAuthServiceUserProfile>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.auth.service.AdobeAuthServiceUserProfile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeAuthServiceUserProfile createFromParcel(Parcel parcel) {
            return new AdobeAuthServiceUserProfile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeAuthServiceUserProfile[] newArray(int i) {
            return new AdobeAuthServiceUserProfile[i];
        }
    };

    protected AdobeAuthServiceUserProfile(Parcel parcel) {
        readFromParcel(parcel);
    }

    public AdobeAuthServiceUserProfile(AdobeAuthUserProfile adobeAuthUserProfile) {
        if (adobeAuthUserProfile != null) {
            this.displayName = adobeAuthUserProfile.getDisplayName();
            this.firstName = adobeAuthUserProfile.getFirstName();
            this.lastName = adobeAuthUserProfile.getLastName();
            this.adobeID = adobeAuthUserProfile.getAdobeID();
            this.email = adobeAuthUserProfile.getEmail();
            this.emailVerified = adobeAuthUserProfile.isEmailVerified();
            this.isEnterprise = adobeAuthUserProfile.isEnterpriseUser();
            this.description = adobeAuthUserProfile.getDescription();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.displayName);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.adobeID);
        parcel.writeString(this.email);
        parcel.writeByte((byte) (this.emailVerified ? 1 : 0));
        parcel.writeByte((byte) (this.isEnterprise ? 1 : 0));
        parcel.writeString(this.description);
    }

    public void readFromParcel(Parcel parcel) {
        this.adobeID = parcel.readString();
        this.displayName = parcel.readString();
        this.firstName = parcel.readString();
        this.lastName = parcel.readString();
        this.email = parcel.readString();
        this.emailVerified = parcel.readByte() == 1;
        this.description = parcel.readString();
        this.isEnterprise = parcel.readByte() == 1;
    }
}
