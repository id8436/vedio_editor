package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class zzc implements Parcelable.Creator<CheckServerAuthResult> {
    static void zza(CheckServerAuthResult checkServerAuthResult, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, checkServerAuthResult.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, checkServerAuthResult.zzaBL);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, checkServerAuthResult.zzaBM, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzfh, reason: merged with bridge method [inline-methods] */
    public CheckServerAuthResult createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        ArrayList arrayListZzc = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 3:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK, Scope.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new CheckServerAuthResult(iZzg, zZzc, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhA, reason: merged with bridge method [inline-methods] */
    public CheckServerAuthResult[] newArray(int i) {
        return new CheckServerAuthResult[i];
    }
}
