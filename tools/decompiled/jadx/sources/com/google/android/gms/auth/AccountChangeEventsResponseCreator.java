package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventsResponseCreator implements Parcelable.Creator<AccountChangeEventsResponse> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(AccountChangeEventsResponse accountChangeEventsResponse, Parcel parcel, int i) {
        int iZzM = zzb.zzM(parcel);
        zzb.zzc(parcel, 1, accountChangeEventsResponse.zzKu);
        zzb.zzc(parcel, 2, accountChangeEventsResponse.zznq, false);
        zzb.zzH(parcel, iZzM);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int iZzL = zza.zzL(parcel);
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = zza.zzK(parcel);
            switch (zza.zzaV(iZzK)) {
                case 1:
                    iZzg = zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    arrayListZzc = zza.zzc(parcel, iZzK, AccountChangeEvent.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new AccountChangeEventsResponse(iZzg, arrayListZzc);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEventsResponse[] newArray(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
