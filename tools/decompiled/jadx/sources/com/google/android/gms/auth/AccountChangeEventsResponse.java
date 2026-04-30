package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventsResponse implements SafeParcelable {
    public static final AccountChangeEventsResponseCreator CREATOR = new AccountChangeEventsResponseCreator();
    final int zzKu;
    final List<AccountChangeEvent> zznq;

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.zzKu = i;
        this.zznq = (List) zzv.zzr(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.zzKu = 1;
        this.zznq = (List) zzv.zzr(list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zznq;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        AccountChangeEventsResponseCreator.zza(this, parcel, i);
    }
}
