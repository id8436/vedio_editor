package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: WebViewLoginMethodHandler.java */
/* JADX INFO: loaded from: classes2.dex */
final class aa implements Parcelable.Creator {
    aa() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
        return new WebViewLoginMethodHandler(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WebViewLoginMethodHandler[] newArray(int i) {
        return new WebViewLoginMethodHandler[i];
    }
}
