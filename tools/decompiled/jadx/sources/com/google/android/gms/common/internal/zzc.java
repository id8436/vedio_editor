package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzc implements Parcelable.Creator<AuthAccountRequest> {
    static void zza(AuthAccountRequest authAccountRequest, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, authAccountRequest.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, authAccountRequest.zzSS, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) authAccountRequest.zzST, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzE, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest createFromParcel(Parcel parcel) {
        Scope[] scopeArr = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        IBinder iBinderZzp = null;
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
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK, Scope.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new AuthAccountRequest(iZzg, iBinderZzp, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaL, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
