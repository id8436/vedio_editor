package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzw implements Parcelable.Creator<ResolveAccountRequest> {
    static void zza(ResolveAccountRequest resolveAccountRequest, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, resolveAccountRequest.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) resolveAccountRequest.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, resolveAccountRequest.getSessionId());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public ResolveAccountRequest createFromParcel(Parcel parcel) {
        int iZzg;
        Account account;
        int iZzg2;
        int i = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        Account account2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    int i3 = i;
                    account = account2;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    iZzg = i3;
                    break;
                case 2:
                    Account account3 = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, Account.CREATOR);
                    iZzg2 = i2;
                    iZzg = i;
                    account = account3;
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    account = account2;
                    iZzg2 = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    iZzg = i;
                    account = account2;
                    iZzg2 = i2;
                    break;
            }
            i2 = iZzg2;
            account2 = account;
            i = iZzg;
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new ResolveAccountRequest(i2, account2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaS, reason: merged with bridge method [inline-methods] */
    public ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
