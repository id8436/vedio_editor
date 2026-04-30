package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class ValidateAccountRequest implements SafeParcelable {
    public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new zzab();
    final IBinder zzSS;
    private final Scope[] zzST;
    private final int zzUe;
    private final Bundle zzUf;
    private final String zzUg;
    final int zzzH;

    ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.zzzH = i;
        this.zzUe = i2;
        this.zzSS = iBinder;
        this.zzST = scopeArr;
        this.zzUf = bundle;
        this.zzUg = str;
    }

    public ValidateAccountRequest(zzo zzoVar, Scope[] scopeArr, String str, Bundle bundle) {
        this(1, 7327000, zzoVar == null ? null : zzoVar.asBinder(), scopeArr, bundle, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallingPackage() {
        return this.zzUg;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }

    public int zzmq() {
        return this.zzUe;
    }

    public Scope[] zzmr() {
        return this.zzST;
    }

    public Bundle zzms() {
        return this.zzUf;
    }
}
