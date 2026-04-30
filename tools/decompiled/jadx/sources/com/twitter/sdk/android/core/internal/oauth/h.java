package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OAuthResponse.java */
/* JADX INFO: loaded from: classes3.dex */
final class h implements Parcelable.Creator<OAuthResponse> {
    h() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public OAuthResponse createFromParcel(Parcel parcel) {
        return new OAuthResponse(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public OAuthResponse[] newArray(int i) {
        return new OAuthResponse[i];
    }
}
