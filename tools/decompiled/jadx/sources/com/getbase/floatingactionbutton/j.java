package com.getbase.floatingactionbutton;

import android.os.Parcel;
import android.os.Parcelable;
import com.getbase.floatingactionbutton.FloatingActionsMenu;

/* JADX INFO: compiled from: FloatingActionsMenu.java */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Parcelable.Creator<FloatingActionsMenu.SavedState> {
    j() {
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FloatingActionsMenu.SavedState createFromParcel(Parcel parcel) {
        return new FloatingActionsMenu.SavedState(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FloatingActionsMenu.SavedState[] newArray(int i) {
        return new FloatingActionsMenu.SavedState[i];
    }
}
