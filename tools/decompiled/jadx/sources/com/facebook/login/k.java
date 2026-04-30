package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.LoginClient;

/* JADX INFO: compiled from: LoginClient.java */
/* JADX INFO: loaded from: classes2.dex */
final class k implements Parcelable.Creator {
    k() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient.Request createFromParcel(Parcel parcel) {
        return new LoginClient.Request(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient.Request[] newArray(int i) {
        return new LoginClient.Request[i];
    }
}
