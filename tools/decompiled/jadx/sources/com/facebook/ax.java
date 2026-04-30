package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Profile.java */
/* JADX INFO: loaded from: classes2.dex */
final class ax implements Parcelable.Creator {
    ax() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Profile createFromParcel(Parcel parcel) {
        return new Profile(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Profile[] newArray(int i) {
        return new Profile[i];
    }
}
