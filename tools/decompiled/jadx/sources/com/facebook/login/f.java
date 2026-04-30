package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: KatanaProxyLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
final class f implements Parcelable.Creator {
    f() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
        return new KatanaProxyLoginMethodHandler(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KatanaProxyLoginMethodHandler[] newArray(int i) {
        return new KatanaProxyLoginMethodHandler[i];
    }
}
