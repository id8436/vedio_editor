package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: LoginClient.java */
/* JADX INFO: loaded from: classes2.dex */
final class h implements Parcelable.Creator {
    h() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient createFromParcel(Parcel parcel) {
        return new LoginClient(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoginClient[] newArray(int i) {
        return new LoginClient[i];
    }
}
