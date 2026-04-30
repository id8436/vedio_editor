package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzo;

/* JADX INFO: loaded from: classes3.dex */
public class GetServiceRequest implements SafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzh();
    final int version;
    final int zzTh;
    int zzTi;
    String zzTj;
    IBinder zzTk;
    Scope[] zzTl;
    Bundle zzTm;
    Account zzTn;

    public GetServiceRequest(int i) {
        this.version = 2;
        this.zzTi = 7327000;
        this.zzTh = i;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account) {
        this.version = i;
        this.zzTh = i2;
        this.zzTi = i3;
        this.zzTj = str;
        if (i < 2) {
            this.zzTn = zzP(iBinder);
        } else {
            this.zzTk = iBinder;
            this.zzTn = account;
        }
        this.zzTl = scopeArr;
        this.zzTm = bundle;
    }

    private Account zzP(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zzb(zzo.zza.zzQ(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public GetServiceRequest zza(Scope[] scopeArr) {
        this.zzTl = scopeArr;
        return this;
    }

    public GetServiceRequest zzb(Account account) {
        this.zzTn = account;
        return this;
    }

    public GetServiceRequest zzbL(String str) {
        this.zzTj = str;
        return this;
    }

    public GetServiceRequest zzc(zzo zzoVar) {
        if (zzoVar != null) {
            this.zzTk = zzoVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest zzf(Bundle bundle) {
        this.zzTm = bundle;
        return this;
    }
}
