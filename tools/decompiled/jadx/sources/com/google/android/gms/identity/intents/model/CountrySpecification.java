package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class CountrySpecification implements SafeParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zza();
    String zzBc;
    private final int zzzH;

    CountrySpecification(int i, String str) {
        this.zzzH = i;
        this.zzBc = str;
    }

    public CountrySpecification(String str) {
        this.zzzH = 1;
        this.zzBc = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCountryCode() {
        return this.zzBc;
    }

    public int getVersionCode() {
        return this.zzzH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
