package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzb implements Parcelable.Creator<UserAddress> {
    static void zza(UserAddress userAddress, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, userAddress.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, userAddress.name, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, userAddress.zzapo, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, userAddress.zzapp, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, userAddress.zzapq, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, userAddress.zzapr, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, userAddress.zzaps, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, userAddress.zzapt, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, userAddress.zzapu, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, userAddress.zzBc, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, userAddress.zzapv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, userAddress.zzapw, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, userAddress.zzapx, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, userAddress.zzapy);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, userAddress.zzapz, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, userAddress.zzapA, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdA, reason: merged with bridge method [inline-methods] */
    public UserAddress createFromParcel(Parcel parcel) {
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        String strZzo = null;
        String strZzo2 = null;
        String strZzo3 = null;
        String strZzo4 = null;
        String strZzo5 = null;
        String strZzo6 = null;
        String strZzo7 = null;
        String strZzo8 = null;
        String strZzo9 = null;
        String strZzo10 = null;
        String strZzo11 = null;
        String strZzo12 = null;
        boolean zZzc = false;
        String strZzo13 = null;
        String strZzo14 = null;
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
                    strZzo2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 4:
                    strZzo3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 5:
                    strZzo4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 6:
                    strZzo5 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 7:
                    strZzo6 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 8:
                    strZzo7 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 9:
                    strZzo8 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 10:
                    strZzo9 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 11:
                    strZzo10 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 12:
                    strZzo11 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 13:
                    strZzo12 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 14:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 15:
                    strZzo13 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 16:
                    strZzo14 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new UserAddress(iZzg, strZzo, strZzo2, strZzo3, strZzo4, strZzo5, strZzo6, strZzo7, strZzo8, strZzo9, strZzo10, strZzo11, strZzo12, zZzc, strZzo13, strZzo14);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzfu, reason: merged with bridge method [inline-methods] */
    public UserAddress[] newArray(int i) {
        return new UserAddress[i];
    }
}
