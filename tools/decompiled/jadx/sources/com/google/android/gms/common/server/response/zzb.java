package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.FieldMappingDictionary;

/* JADX INFO: loaded from: classes3.dex */
public class zzb implements Parcelable.Creator<FieldMappingDictionary.FieldMapPair> {
    static void zza(FieldMappingDictionary.FieldMapPair fieldMapPair, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fieldMapPair.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, fieldMapPair.zzgk, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) fieldMapPair.zzUM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzS, reason: merged with bridge method [inline-methods] */
    public FieldMappingDictionary.FieldMapPair createFromParcel(Parcel parcel) {
        FastJsonResponse.Field field = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        String strZzo = null;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 3:
                    field = (FastJsonResponse.Field) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, FastJsonResponse.Field.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new FieldMappingDictionary.FieldMapPair(iZzg, strZzo, field);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbc, reason: merged with bridge method [inline-methods] */
    public FieldMappingDictionary.FieldMapPair[] newArray(int i) {
        return new FieldMappingDictionary.FieldMapPair[i];
    }
}
