package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: GetTokenLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
final class e implements Parcelable.Creator {
    e() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
        return new GetTokenLoginMethodHandler(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GetTokenLoginMethodHandler[] newArray(int i) {
        return new GetTokenLoginMethodHandler[i];
    }
}
