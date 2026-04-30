package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventsRequestCreator implements Parcelable.Creator<AccountChangeEventsRequest> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(AccountChangeEventsRequest accountChangeEventsRequest, Parcel parcel, int i) {
        int iZzM = zzb.zzM(parcel);
        zzb.zzc(parcel, 1, accountChangeEventsRequest.zzKu);
        zzb.zzc(parcel, 2, accountChangeEventsRequest.zzKy);
        zzb.zza(parcel, 3, accountChangeEventsRequest.zzKw, false);
        zzb.zza(parcel, 4, (Parcelable) accountChangeEventsRequest.zzJc, i, false);
        zzb.zzH(parcel, iZzM);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        Account account = null;
        int iZzg = 0;
        int iZzL = zza.zzL(parcel);
        String strZzo = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = zza.zzK(parcel);
            switch (zza.zzaV(iZzK)) {
                case 1:
                    iZzg2 = zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    iZzg = zza.zzg(parcel, iZzK);
                    break;
                case 3:
                    strZzo = zza.zzo(parcel, iZzK);
                    break;
                case 4:
                    account = (Account) zza.zza(parcel, iZzK, Account.CREATOR);
                    break;
                default:
                    zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new AccountChangeEventsRequest(iZzg2, iZzg, strZzo, account);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public AccountChangeEventsRequest[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
