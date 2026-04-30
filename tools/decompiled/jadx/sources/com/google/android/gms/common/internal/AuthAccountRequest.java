package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class AuthAccountRequest implements SafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new zzc();
    final IBinder zzSS;
    final Scope[] zzST;
    final int zzzH;

    AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr) {
        this.zzzH = i;
        this.zzSS = iBinder;
        this.zzST = scopeArr;
    }

    public AuthAccountRequest(zzo zzoVar, Set<Scope> set) {
        this(1, zzoVar.asBinder(), (Scope[]) set.toArray(new Scope[set.size()]));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
