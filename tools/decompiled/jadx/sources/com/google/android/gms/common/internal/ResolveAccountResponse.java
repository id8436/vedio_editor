package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzo;

/* JADX INFO: loaded from: classes3.dex */
public class ResolveAccountResponse implements SafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zzx();
    private boolean zzQe;
    private ConnectionResult zzRm;
    IBinder zzSS;
    private boolean zzUb;
    final int zzzH;

    public ResolveAccountResponse(int i) {
        this(new ConnectionResult(i, null));
    }

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.zzzH = i;
        this.zzSS = iBinder;
        this.zzRm = connectionResult;
        this.zzQe = z;
        this.zzUb = z2;
    }

    public ResolveAccountResponse(ConnectionResult connectionResult) {
        this(1, null, connectionResult, false, false);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.zzRm.equals(resolveAccountResponse.zzRm) && zzmm().equals(resolveAccountResponse.zzmm());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzx.zza(this, parcel, i);
    }

    public zzo zzmm() {
        return zzo.zza.zzQ(this.zzSS);
    }

    public ConnectionResult zzmn() {
        return this.zzRm;
    }

    public boolean zzmo() {
        return this.zzQe;
    }

    public boolean zzmp() {
        return this.zzUb;
    }
}
