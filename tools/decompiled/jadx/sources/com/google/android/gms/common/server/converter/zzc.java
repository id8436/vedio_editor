package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.StringToIntConverter;

/* JADX INFO: loaded from: classes3.dex */
public class zzc implements Parcelable.Creator<StringToIntConverter.Entry> {
    static void zza(StringToIntConverter.Entry entry, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, entry.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, entry.zzUw, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, entry.zzUx);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzQ, reason: merged with bridge method [inline-methods] */
    public StringToIntConverter.Entry createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        String strZzo = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new StringToIntConverter.Entry(iZzg2, strZzo, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzba, reason: merged with bridge method [inline-methods] */
    public StringToIntConverter.Entry[] newArray(int i) {
        return new StringToIntConverter.Entry[i];
    }
}
