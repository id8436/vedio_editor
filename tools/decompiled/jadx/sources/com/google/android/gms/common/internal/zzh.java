package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzh implements Parcelable.Creator<GetServiceRequest> {
    static void zza(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, getServiceRequest.version);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, getServiceRequest.zzTh);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, getServiceRequest.zzTi);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, getServiceRequest.zzTj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, getServiceRequest.zzTk, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable[]) getServiceRequest.zzTl, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, getServiceRequest.zzTm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, (Parcelable) getServiceRequest.zzTn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzG, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest createFromParcel(Parcel parcel) {
        int iZzg = 0;
        Account account = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        Bundle bundleZzq = null;
        Scope[] scopeArr = null;
        IBinder iBinderZzp = null;
        String strZzo = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 4:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 5:
                    iBinderZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzK);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK, Scope.CREATOR);
                    break;
                case 7:
                    bundleZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzK);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, Account.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new GetServiceRequest(iZzg3, iZzg2, iZzg, strZzo, iBinderZzp, scopeArr, bundleZzq, account);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaN, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
