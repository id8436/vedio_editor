package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class zza implements Parcelable.Creator<UserAddressRequest> {
    static void zza(UserAddressRequest userAddressRequest, Parcel parcel, int i) {
        int iZzM = zzb.zzM(parcel);
        zzb.zzc(parcel, 1, userAddressRequest.getVersionCode());
        zzb.zzc(parcel, 2, userAddressRequest.zzapl, false);
        zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdy, reason: merged with bridge method [inline-methods] */
    public UserAddressRequest createFromParcel(Parcel parcel) {
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    break;
                case 2:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzK, CountrySpecification.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new UserAddressRequest(iZzg, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzfs, reason: merged with bridge method [inline-methods] */
    public UserAddressRequest[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}
