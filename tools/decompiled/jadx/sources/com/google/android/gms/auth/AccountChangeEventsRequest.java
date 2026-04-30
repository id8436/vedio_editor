package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class AccountChangeEventsRequest implements SafeParcelable {
    public static final AccountChangeEventsRequestCreator CREATOR = new AccountChangeEventsRequestCreator();
    Account zzJc;
    final int zzKu;

    @Deprecated
    String zzKw;
    int zzKy;

    public AccountChangeEventsRequest() {
        this.zzKu = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.zzKu = i;
        this.zzKy = i2;
        this.zzKw = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.zzJc = account;
        } else {
            this.zzJc = new Account(str, "com.google");
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.zzJc;
    }

    public String getAccountName() {
        return this.zzKw;
    }

    public int getEventIndex() {
        return this.zzKy;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.zzJc = account;
        return this;
    }

    public AccountChangeEventsRequest setAccountName(String str) {
        this.zzKw = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.zzKy = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        AccountChangeEventsRequestCreator.zza(this, parcel, i);
    }
}
