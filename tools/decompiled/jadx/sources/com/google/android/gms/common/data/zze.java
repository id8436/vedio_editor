package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zze implements Parcelable.Creator<DataHolder> {
    static void zza(DataHolder dataHolder, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, dataHolder.zzlr(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, dataHolder.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable[]) dataHolder.zzls(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, dataHolder.getStatusCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, dataHolder.zzlm(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzC, reason: merged with bridge method [inline-methods] */
    public DataHolder createFromParcel(Parcel parcel) {
        int iZzg = 0;
        Bundle bundleZzq = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArrZzA = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    strArrZzA = com.google.android.gms.common.internal.safeparcel.zza.zzA(parcel, iZzK);
                    break;
                case 2:
                    cursorWindowArr = (CursorWindow[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK, CursorWindow.CREATOR);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 4:
                    bundleZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzK);
                    break;
                case 1000:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        DataHolder dataHolder = new DataHolder(iZzg2, strArrZzA, cursorWindowArr, iZzg, bundleZzq);
        dataHolder.zzlq();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaF, reason: merged with bridge method [inline-methods] */
    public DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
