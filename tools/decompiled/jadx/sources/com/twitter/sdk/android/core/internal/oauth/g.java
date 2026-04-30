package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OAuth2Token.java */
/* JADX INFO: loaded from: classes3.dex */
final class g implements Parcelable.Creator<OAuth2Token> {
    g() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public OAuth2Token createFromParcel(Parcel parcel) {
        return new OAuth2Token(parcel, (g) null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public OAuth2Token[] newArray(int i) {
        return new OAuth2Token[i];
    }
}
