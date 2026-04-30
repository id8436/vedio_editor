package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationInviteResponse implements Parcelable {
    public static final Parcelable.Creator<AdobeCollaborationInviteResponse> CREATOR = new Parcelable.Creator<AdobeCollaborationInviteResponse>() { // from class: com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInviteResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeCollaborationInviteResponse createFromParcel(Parcel parcel) {
            return new AdobeCollaborationInviteResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeCollaborationInviteResponse[] newArray(int i) {
            return new AdobeCollaborationInviteResponse[i];
        }
    };
    private AdobeCollaborationException error;
    private AdobeCollaborationInvite invite;
    private AdobeCollaborationCreateInviteStatus status;

    protected AdobeCollaborationInviteResponse(AdobeCollaborationInvite adobeCollaborationInvite) {
        this.status = AdobeCollaborationCreateInviteStatus.ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS;
        this.invite = adobeCollaborationInvite;
        this.error = null;
    }

    protected AdobeCollaborationInviteResponse(AdobeCollaborationException adobeCollaborationException) {
        this.status = AdobeCollaborationCreateInviteStatus.ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE;
        this.error = adobeCollaborationException;
        this.invite = null;
    }

    protected AdobeCollaborationInviteResponse(Parcel parcel) {
        this.invite = (AdobeCollaborationInvite) parcel.readParcelable(AdobeCollaborationInvite.class.getClassLoader());
        this.status = AdobeCollaborationCreateInviteStatus.getEnumFromInteger(parcel.readInt());
    }

    public AdobeCollaborationCreateInviteStatus getStatus() {
        return this.status;
    }

    public AdobeCollaborationInvite getInvite() {
        return this.invite;
    }

    public AdobeCollaborationException getError() {
        return this.error;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.invite, i);
        parcel.writeInt(this.status == null ? 2 : this.status.toInteger());
    }
}
