package com.viewpagerindicator;

import android.os.Parcel;
import android.os.Parcelable;
import com.viewpagerindicator.CirclePageIndicator;

/* JADX INFO: compiled from: CirclePageIndicator.java */
/* JADX INFO: loaded from: classes3.dex */
final class b implements Parcelable.Creator<CirclePageIndicator.SavedState> {
    b() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CirclePageIndicator.SavedState createFromParcel(Parcel parcel) {
        return new CirclePageIndicator.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CirclePageIndicator.SavedState[] newArray(int i) {
        return new CirclePageIndicator.SavedState[i];
    }
}
