package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.LoginClient;

/* JADX INFO: compiled from: LoginClient.java */
/* JADX INFO: loaded from: classes2.dex */
final class l implements Parcelable.Creator {
    l() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient.Result createFromParcel(Parcel parcel) {
        return new LoginClient.Result(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient.Result[] newArray(int i) {
        return new LoginClient.Result[i];
    }
}
