package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventCreator implements Parcelable.Creator<AccountChangeEvent> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(AccountChangeEvent accountChangeEvent, Parcel parcel, int i) {
        int iZzM = zzb.zzM(parcel);
        zzb.zzc(parcel, 1, accountChangeEvent.zzKu);
        zzb.zza(parcel, 2, accountChangeEvent.zzKv);
        zzb.zza(parcel, 3, accountChangeEvent.zzKw, false);
        zzb.zzc(parcel, 4, accountChangeEvent.zzKx);
        zzb.zzc(parcel, 5, accountChangeEvent.zzKy);
        zzb.zza(parcel, 6, accountChangeEvent.zzKz, false);
        zzb.zzH(parcel, iZzM);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEvent createFromParcel(Parcel parcel) {
        String strZzo = null;
        int iZzg = 0;
        int iZzL = zza.zzL(parcel);
        long jZzi = 0;
        int iZzg2 = 0;
        String strZzo2 = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = zza.zzK(parcel);
            switch (zza.zzaV(iZzK)) {
                case 1:
                    iZzg3 = zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    jZzi = zza.zzi(parcel, iZzK);
                    break;
                case 3:
                    strZzo2 = zza.zzo(parcel, iZzK);
                    break;
                case 4:
                    iZzg2 = zza.zzg(parcel, iZzK);
                    break;
                case 5:
                    iZzg = zza.zzg(parcel, iZzK);
                    break;
                case 6:
                    strZzo = zza.zzo(parcel, iZzK);
                    break;
                default:
                    zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new AccountChangeEvent(iZzg3, jZzi, strZzo2, iZzg2, iZzg, strZzo);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
