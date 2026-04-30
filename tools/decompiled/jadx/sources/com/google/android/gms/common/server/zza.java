package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes3.dex */
public class zza implements Parcelable.Creator<FavaDiagnosticsEntity> {
    static void zza(FavaDiagnosticsEntity favaDiagnosticsEntity, Parcel parcel, int i) {
        int iZzM = zzb.zzM(parcel);
        zzb.zzc(parcel, 1, favaDiagnosticsEntity.zzzH);
        zzb.zza(parcel, 2, favaDiagnosticsEntity.zzUq, false);
        zzb.zzc(parcel, 3, favaDiagnosticsEntity.zzUr);
        zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzN, reason: merged with bridge method [inline-methods] */
    public FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
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
        return new FavaDiagnosticsEntity(iZzg2, strZzo, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaX, reason: merged with bridge method [inline-methods] */
    public FavaDiagnosticsEntity[] newArray(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
