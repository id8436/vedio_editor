package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzab implements Parcelable.Creator<ValidateAccountRequest> {
    static void zza(ValidateAccountRequest validateAccountRequest, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, validateAccountRequest.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, validateAccountRequest.zzmq());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, validateAccountRequest.zzSS, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable[]) validateAccountRequest.zzmr(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, validateAccountRequest.zzms(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, validateAccountRequest.getCallingPackage(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzJ, reason: merged with bridge method [inline-methods] */
    public ValidateAccountRequest createFromParcel(Parcel parcel) {
        int iZzg = 0;
        String strZzo = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        Bundle bundleZzq = null;
        Scope[] scopeArr = null;
        IBinder iBinderZzp = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 3:
                    iBinderZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzK);
                    break;
                case 4:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK, Scope.CREATOR);
                    break;
                case 5:
                    bundleZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzK);
                    break;
                case 6:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new ValidateAccountRequest(iZzg2, iZzg, iBinderZzp, scopeArr, bundleZzq, strZzo);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaU, reason: merged with bridge method [inline-methods] */
    public ValidateAccountRequest[] newArray(int i) {
        return new ValidateAccountRequest[i];
    }
}
