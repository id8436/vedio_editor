package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zza implements Parcelable.Creator<ConnectionEvent> {
    static void zza(ConnectionEvent connectionEvent, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, connectionEvent.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, connectionEvent.getTimeMillis());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, connectionEvent.zzmS(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, connectionEvent.zzmT(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, connectionEvent.zzmU(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, connectionEvent.zzmV(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, connectionEvent.zzmW(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, connectionEvent.zzmX(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, connectionEvent.zzmY());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, connectionEvent.zzna());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, connectionEvent.zzmZ());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzW, reason: merged with bridge method [inline-methods] */
    public ConnectionEvent createFromParcel(Parcel parcel) {
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        long jZzi = 0;
        String strZzo = null;
        String strZzo2 = null;
        String strZzo3 = null;
        String strZzo4 = null;
        String strZzo5 = null;
        String strZzo6 = null;
        long jZzi2 = 0;
        long jZzi3 = 0;
        long jZzi4 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzK);
                    break;
                case 3:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 4:
                    strZzo2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 5:
                    strZzo3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 6:
                    strZzo4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 7:
                    strZzo5 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 8:
                    strZzo6 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 9:
                    jZzi2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzK);
                    break;
                case 10:
                    jZzi3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzK);
                    break;
                case 11:
                    jZzi4 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new ConnectionEvent(iZzg, jZzi, strZzo, strZzo2, strZzo3, strZzo4, strZzo5, strZzo6, jZzi2, jZzi3, jZzi4);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbg, reason: merged with bridge method [inline-methods] */
    public ConnectionEvent[] newArray(int i) {
        return new ConnectionEvent[i];
    }
}
