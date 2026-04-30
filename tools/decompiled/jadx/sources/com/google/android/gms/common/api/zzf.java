package com.google.android.gms.common.api;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.api.zzg;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class zzf implements zzh {
    private final zzg zzPQ;

    public zzf(zzg zzgVar) {
        this.zzPQ = zzgVar;
    }

    @Override // com.google.android.gms.common.api.zzh
    public void begin() {
        this.zzPQ.zzkY();
    }

    @Override // com.google.android.gms.common.api.zzh
    public void connect() {
        this.zzPQ.zzkZ();
    }

    @Override // com.google.android.gms.common.api.zzh
    public String getName() {
        return "DISCONNECTED";
    }

    @Override // com.google.android.gms.common.api.zzh
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, R extends Result, T extends zza.AbstractC0069zza<R, A>> T zza(T t) {
        this.zzPQ.zzQt.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zzas(int i) {
        if (i == -1) {
            Iterator<zzg.zze<?>> it = this.zzPQ.zzQt.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.zzPQ.zzQt.clear();
            this.zzPQ.zzkX();
            this.zzPQ.zzQA.clear();
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, T extends zza.AbstractC0069zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
