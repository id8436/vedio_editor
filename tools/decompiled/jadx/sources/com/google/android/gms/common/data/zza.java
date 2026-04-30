package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zza implements Parcelable.Creator<BitmapTeleporter> {
    static void zza(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, bitmapTeleporter.zzzH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) bitmapTeleporter.zzzI, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, bitmapTeleporter.zzMG);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzB, reason: merged with bridge method [inline-methods] */
    public BitmapTeleporter createFromParcel(Parcel parcel) {
        int iZzg;
        ParcelFileDescriptor parcelFileDescriptor;
        int iZzg2;
        int i = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    int i3 = i;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    iZzg = i3;
                    break;
                case 2:
                    ParcelFileDescriptor parcelFileDescriptor3 = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, ParcelFileDescriptor.CREATOR);
                    iZzg2 = i2;
                    iZzg = i;
                    parcelFileDescriptor = parcelFileDescriptor3;
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    parcelFileDescriptor = parcelFileDescriptor2;
                    iZzg2 = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    iZzg = i;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    iZzg2 = i2;
                    break;
            }
            i2 = iZzg2;
            parcelFileDescriptor2 = parcelFileDescriptor;
            i = iZzg;
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new BitmapTeleporter(i2, parcelFileDescriptor2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaA, reason: merged with bridge method [inline-methods] */
    public BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
