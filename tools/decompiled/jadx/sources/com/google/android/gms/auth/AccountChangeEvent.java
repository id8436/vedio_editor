package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzu;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEvent implements SafeParcelable {
    public static final AccountChangeEventCreator CREATOR = new AccountChangeEventCreator();
    final int zzKu;
    final long zzKv;
    final String zzKw;
    final int zzKx;
    final int zzKy;
    final String zzKz;

    AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.zzKu = i;
        this.zzKv = j;
        this.zzKw = (String) zzv.zzr(str);
        this.zzKx = i2;
        this.zzKy = i3;
        this.zzKz = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.zzKu = 1;
        this.zzKv = j;
        this.zzKw = (String) zzv.zzr(str);
        this.zzKx = i;
        this.zzKy = i2;
        this.zzKz = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.zzKu == accountChangeEvent.zzKu && this.zzKv == accountChangeEvent.zzKv && zzu.equal(this.zzKw, accountChangeEvent.zzKw) && this.zzKx == accountChangeEvent.zzKx && this.zzKy == accountChangeEvent.zzKy && zzu.equal(this.zzKz, accountChangeEvent.zzKz);
    }

    public String getAccountName() {
        return this.zzKw;
    }

    public String getChangeData() {
        return this.zzKz;
    }

    public int getChangeType() {
        return this.zzKx;
    }

    public int getEventIndex() {
        return this.zzKy;
    }

    public int hashCode() {
        return zzu.hashCode(Integer.valueOf(this.zzKu), Long.valueOf(this.zzKv), this.zzKw, Integer.valueOf(this.zzKx), Integer.valueOf(this.zzKy), this.zzKz);
    }

    public String toString() {
        String str = "UNKNOWN";
        switch (this.zzKx) {
            case 1:
                str = "ADDED";
                break;
            case 2:
                str = "REMOVED";
                break;
            case 3:
                str = "RENAMED_FROM";
                break;
            case 4:
                str = "RENAMED_TO";
                break;
        }
        return "AccountChangeEvent {accountName = " + this.zzKw + ", changeType = " + str + ", changeData = " + this.zzKz + ", eventIndex = " + this.zzKy + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        AccountChangeEventCreator.zza(this, parcel, i);
    }
}
