package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zze implements Parcelable.Creator<SafeParcelResponse> {
    static void zza(SafeParcelResponse safeParcelResponse, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, safeParcelResponse.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, safeParcelResponse.zzmQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) safeParcelResponse.zzmR(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzV, reason: merged with bridge method [inline-methods] */
    public SafeParcelResponse createFromParcel(Parcel parcel) {
        FieldMappingDictionary fieldMappingDictionary = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        Parcel parcelZzD = null;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    parcelZzD = com.google.android.gms.common.internal.safeparcel.zza.zzD(parcel, iZzK);
                    break;
                case 3:
                    fieldMappingDictionary = (FieldMappingDictionary) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, FieldMappingDictionary.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new SafeParcelResponse(iZzg, parcelZzD, fieldMappingDictionary);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbf, reason: merged with bridge method [inline-methods] */
    public SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
