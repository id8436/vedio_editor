package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes3.dex */
public class ConverterWrapper implements SafeParcelable {
    public static final zza CREATOR = new zza();
    private final StringToIntConverter zzUs;
    private final int zzzH;

    ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.zzzH = i;
        this.zzUs = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.zzzH = 1;
        this.zzUs = stringToIntConverter;
    }

    public static ConverterWrapper zza(FastJsonResponse.zza<?, ?> zzaVar) {
        if (zzaVar instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) zzaVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zza zzaVar = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza zzaVar = CREATOR;
        zza.zza(this, parcel, i);
    }

    StringToIntConverter zzmt() {
        return this.zzUs;
    }

    public FastJsonResponse.zza<?, ?> zzmu() {
        if (this.zzUs != null) {
            return this.zzUs;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
