package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes3.dex */
public class zzaa<T extends IInterface> extends zzi<T> {
    private final Api.zzd<T> zzUd;

    public zzaa(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, zze zzeVar, Api.zzd zzdVar) {
        super(context, looper, i, connectionCallbacks, onConnectionFailedListener, zzeVar);
        this.zzUd = zzdVar;
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected T zzD(IBinder iBinder) {
        return (T) this.zzUd.zzD(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzeq() {
        return this.zzUd.zzeq();
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzer() {
        return this.zzUd.zzer();
    }
}
