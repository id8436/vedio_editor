package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: TwitterAuthConfig.java */
/* JADX INFO: loaded from: classes3.dex */
final class y implements Parcelable.Creator<TwitterAuthConfig> {
    y() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwitterAuthConfig createFromParcel(Parcel parcel) {
        return new TwitterAuthConfig(parcel, (y) null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwitterAuthConfig[] newArray(int i) {
        return new TwitterAuthConfig[i];
    }
}
