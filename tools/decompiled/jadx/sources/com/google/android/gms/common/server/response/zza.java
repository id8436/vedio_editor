package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes3.dex */
public class zza implements Parcelable.Creator<FastJsonResponse.Field> {
    static void zza(FastJsonResponse.Field field, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, field.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, field.zzmw());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, field.zzmC());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, field.zzmx());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, field.zzmD());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, field.zzmE(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, field.zzmF());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, field.zzmH(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) field.zzmJ(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzR, reason: merged with bridge method [inline-methods] */
    public FastJsonResponse.Field createFromParcel(Parcel parcel) {
        ConverterWrapper converterWrapper = null;
        int iZzg = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        String strZzo = null;
        String strZzo2 = null;
        boolean zZzc = false;
        int iZzg2 = 0;
        boolean zZzc2 = false;
        int iZzg3 = 0;
        int iZzg4 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 3:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 4:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 5:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK);
                    break;
                case 6:
                    strZzo2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 7:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 8:
                    strZzo = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, iZzK);
                    break;
                case 9:
                    converterWrapper = (ConverterWrapper) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, ConverterWrapper.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new FastJsonResponse.Field(iZzg4, iZzg3, zZzc2, iZzg2, zZzc, strZzo2, iZzg, strZzo, converterWrapper);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbb, reason: merged with bridge method [inline-methods] */
    public FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}
