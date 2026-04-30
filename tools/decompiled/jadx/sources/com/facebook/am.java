package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.GraphRequest;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class am implements Parcelable.Creator<GraphRequest.ParcelableResourceWithMimeType> {
    am() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GraphRequest.ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
        return new GraphRequest.ParcelableResourceWithMimeType(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GraphRequest.ParcelableResourceWithMimeType[] newArray(int i) {
        return new GraphRequest.ParcelableResourceWithMimeType[i];
    }
}
