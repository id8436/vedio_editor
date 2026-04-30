package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AccessToken.java */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Parcelable.Creator {
    a() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AccessToken createFromParcel(Parcel parcel) {
        return new AccessToken(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AccessToken[] newArray(int i) {
        return new AccessToken[i];
    }
}
