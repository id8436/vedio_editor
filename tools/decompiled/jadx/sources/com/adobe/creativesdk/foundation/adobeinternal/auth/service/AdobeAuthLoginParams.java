package com.adobe.creativesdk.foundation.adobeinternal.auth.service;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAuthLoginParams implements Parcelable {
    public static final Parcelable.Creator<AdobeAuthLoginParams> CREATOR = new Parcelable.Creator<AdobeAuthLoginParams>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.auth.service.AdobeAuthLoginParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeAuthLoginParams createFromParcel(Parcel parcel) {
            return new AdobeAuthLoginParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdobeAuthLoginParams[] newArray(int i) {
            return new AdobeAuthLoginParams[i];
        }
    };
    int requestCode;

    public AdobeAuthLoginParams(Parcel parcel) {
        this.requestCode = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.requestCode);
    }
}
