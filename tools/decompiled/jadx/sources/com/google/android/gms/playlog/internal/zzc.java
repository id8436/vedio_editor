package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzc implements Parcelable.Creator<LogEvent> {
    static void zza(LogEvent logEvent, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, logEvent.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, logEvent.zzayr);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, logEvent.tag, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, logEvent.zzays, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, logEvent.zzayt, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzeO, reason: merged with bridge method [inline-methods] */
    public LogEvent createFromParcel(Parcel parcel) {
        Bundle bundleZzq = null;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        long jZzi = 0;
        byte[] bArrZzr = null;
        String strZzo = null;
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
                    bArrZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzK);
                    break;
                case 5:
                    bundleZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzK);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new LogEvent(iZzg, jZzi, strZzo, bArrZzr, bundleZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhg, reason: merged with bridge method [inline-methods] */
    public LogEvent[] newArray(int i) {
        return new LogEvent[i];
    }
}
