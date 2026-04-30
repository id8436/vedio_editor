package com.adobe.creativesdk.foundation.internal.grid;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class ClassLoaderSavedState implements Parcelable {
    private ClassLoader mClassLoader;
    private Parcelable mSuperState;
    public static final ClassLoaderSavedState EMPTY_STATE = new ClassLoaderSavedState() { // from class: com.adobe.creativesdk.foundation.internal.grid.ClassLoaderSavedState.1
    };
    public static final Parcelable.Creator<ClassLoaderSavedState> CREATOR = new Parcelable.Creator<ClassLoaderSavedState>() { // from class: com.adobe.creativesdk.foundation.internal.grid.ClassLoaderSavedState.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClassLoaderSavedState createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) != null) {
                throw new IllegalStateException("superState must be null");
            }
            return ClassLoaderSavedState.EMPTY_STATE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClassLoaderSavedState[] newArray(int i) {
            return new ClassLoaderSavedState[i];
        }
    };

    private ClassLoaderSavedState() {
        this.mSuperState = EMPTY_STATE;
        this.mSuperState = null;
        this.mClassLoader = null;
    }

    protected ClassLoaderSavedState(Parcelable parcelable, ClassLoader classLoader) {
        this.mSuperState = EMPTY_STATE;
        this.mClassLoader = classLoader;
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
    }

    protected ClassLoaderSavedState(Parcel parcel) {
        this.mSuperState = EMPTY_STATE;
        Parcelable parcelable = parcel.readParcelable(this.mClassLoader);
        this.mSuperState = parcelable == null ? EMPTY_STATE : parcelable;
    }

    public final Parcelable getSuperState() {
        return this.mSuperState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mSuperState, i);
    }
}
