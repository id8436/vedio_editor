package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: TwitterAuthToken.java */
/* JADX INFO: loaded from: classes3.dex */
final class aa implements Parcelable.Creator<TwitterAuthToken> {
    aa() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwitterAuthToken createFromParcel(Parcel parcel) {
        return new TwitterAuthToken(parcel, (aa) null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwitterAuthToken[] newArray(int i) {
        return new TwitterAuthToken[i];
    }
}
