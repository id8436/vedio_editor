package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzx implements Parcelable.Creator<ResolveAccountResponse> {
    static void zza(ResolveAccountResponse resolveAccountResponse, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, resolveAccountResponse.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, resolveAccountResponse.zzSS, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) resolveAccountResponse.zzmn(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, resolveAccountResponse.zzmo());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, resolveAccountResponse.zzmp());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzI, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse createFromParcel(Parcel parcel) {
        ConnectionResult connectionResult = null;
        boolean zZzc = false;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        boolean zZzc2 = false;
        IBinder iBinderZzp = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    iBinderZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzK);
                    break;
                case 3:
                    connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, ConnectionResult.CREATOR);
                    break;
                case 4:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 5:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new ResolveAccountResponse(iZzg, iBinderZzp, connectionResult, zZzc2, zZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaT, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
