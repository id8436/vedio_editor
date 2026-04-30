package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionResultCreator implements Parcelable.Creator<ConnectionResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(ConnectionResult connectionResult, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, connectionResult.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, connectionResult.getErrorCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) connectionResult.getResolution(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public ConnectionResult createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        PendingIntent pendingIntent = null;
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
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, PendingIntent.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new ConnectionResult(iZzg2, iZzg, pendingIntent);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
