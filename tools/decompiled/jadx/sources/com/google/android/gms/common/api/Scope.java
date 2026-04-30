package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes2.dex */
public final class Scope implements SafeParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zzj();
    private final String zzQT;
    final int zzzH;

    Scope(int i, String str) {
        zzv.zzh(str, "scopeUri must not be null or empty");
        this.zzzH = i;
        this.zzQT = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.zzQT.equals(((Scope) obj).zzQT);
        }
        return false;
    }

    public int hashCode() {
        return this.zzQT.hashCode();
    }

    public String toString() {
        return this.zzQT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public String zzle() {
        return this.zzQT;
    }
}
