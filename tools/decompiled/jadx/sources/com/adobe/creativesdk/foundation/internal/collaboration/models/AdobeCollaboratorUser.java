package com.adobe.creativesdk.foundation.internal.collaboration.models;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeCollaboratorUser implements Parcelable {
    private AdobeCollaborationRole collaborationType;
    private boolean isInvite;

    public abstract String getEmail();

    public abstract String getID();

    public AdobeCollaboratorUser() {
        setCollaborationType(AdobeCollaborationRole.ADOBE_COLLABORATION_TYPE_EDITOR);
    }

    protected AdobeCollaboratorUser(Parcel parcel) {
        this.isInvite = parcel.readByte() != 0;
        this.collaborationType = AdobeCollaborationRole.getCollaborationTypeFromString(parcel.readString());
    }

    public boolean isInvite() {
        return this.isInvite;
    }

    public void setIsInvite(boolean z) {
        this.isInvite = z;
    }

    public boolean isOwner() {
        return !isInvite() && isOwner();
    }

    public AdobeCollaborationRole getCollaborationType() {
        return this.collaborationType;
    }

    public void setCollaborationType(AdobeCollaborationRole adobeCollaborationRole) {
        this.collaborationType = adobeCollaborationRole;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) (this.isInvite ? 1 : 0));
        parcel.writeString(this.collaborationType != null ? this.collaborationType.toString() : "");
    }
}
