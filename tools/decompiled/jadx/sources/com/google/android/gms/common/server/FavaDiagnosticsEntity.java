package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class FavaDiagnosticsEntity implements SafeParcelable {
    public static final zza CREATOR = new zza();
    public final String zzUq;
    public final int zzUr;
    final int zzzH;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.zzzH = i;
        this.zzUq = str;
        this.zzUr = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
