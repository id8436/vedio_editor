package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class ResolveAccountRequest implements SafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new zzw();
    private final Account zzJc;
    private final int zzUa;
    final int zzzH;

    ResolveAccountRequest(int i, Account account, int i2) {
        this.zzzH = i;
        this.zzJc = account;
        this.zzUa = i2;
    }

    public ResolveAccountRequest(Account account, int i) {
        this(1, account, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.zzJc;
    }

    public int getSessionId() {
        return this.zzUa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzw.zza(this, parcel, i);
    }
}
