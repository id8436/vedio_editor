package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zze implements Parcelable.Creator<PlayLoggerContext> {
    static void zza(PlayLoggerContext playLoggerContext, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, playLoggerContext.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, playLoggerContext.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, playLoggerContext.zzayB);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, playLoggerContext.zzayC);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, playLoggerContext.zzayD, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, playLoggerContext.zzayE, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, playLoggerContext.zzayF);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, playLoggerContext.zzayG, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, playLoggerContext.zzayH);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzeP, reason: merged with bridge method [inline-methods] */
    public PlayLoggerContext createFromParcel(Parcel parcel) {
        String strZzo = null;
        boolean zZzc = false;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        boolean zZzc2 = true;
        String strZzo2 = null;
        String strZzo3 = null;
        int iZzg = 0;
        int iZzg2 = 0;
        String strZzo4 = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    strZzo4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 3:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 4:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 5:
                    strZzo3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 6:
                    strZzo2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 7:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 8:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 9:
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
        return new PlayLoggerContext(iZzg3, strZzo4, iZzg2, iZzg, strZzo3, strZzo2, zZzc2, strZzo, zZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhh, reason: merged with bridge method [inline-methods] */
    public PlayLoggerContext[] newArray(int i) {
        return new PlayLoggerContext[i];
    }
}
