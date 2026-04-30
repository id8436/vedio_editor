package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes2.dex */
public class StatusCreator implements Parcelable.Creator<Status> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(Status status, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, status.getStatusCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, status.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, status.getStatusMessage(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) status.zzlf(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public Status createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int iZzg = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        String strZzo = null;
        int iZzg2 = 0;
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
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, PendingIntent.CREATOR);
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
        return new Status(iZzg2, iZzg, strZzo, pendingIntent);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public Status[] newArray(int i) {
        return new Status[i];
    }
}
