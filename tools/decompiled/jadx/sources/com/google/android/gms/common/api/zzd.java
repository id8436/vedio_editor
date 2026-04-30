package com.google.android.gms.common.api;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.api.zzg;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class zzd implements zzh {
    private final zzg zzPQ;

    public zzd(zzg zzgVar) {
        this.zzPQ = zzgVar;
    }

    private <A extends Api.zza> void zza(zzg.zze<A> zzeVar) throws DeadObjectException {
        this.zzPQ.zzb(zzeVar);
        Api.zza zzaVarZza = this.zzPQ.zza(zzeVar.zzkF());
        if (zzaVarZza.isConnected() || !this.zzPQ.zzQA.containsKey(zzeVar.zzkF())) {
            zzeVar.zzb(zzaVarZza);
        } else {
            zzeVar.zzk(new Status(17));
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public void begin() {
        while (!this.zzPQ.zzQt.isEmpty()) {
            try {
                zza(this.zzPQ.zzQt.remove());
            } catch (DeadObjectException e2) {
                Log.w("GoogleApiClientConnected", "Service died while flushing queue", e2);
            }
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public void connect() {
    }

    @Override // com.google.android.gms.common.api.zzh
    public String getName() {
        return "CONNECTED";
    }

    @Override // com.google.android.gms.common.api.zzh
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, R extends Result, T extends zza.AbstractC0069zza<R, A>> T zza(T t) {
        return (T) zzb(t);
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zzas(int i) {
        boolean z = i == -1;
        if (z) {
            this.zzPQ.zzkX();
            this.zzPQ.zzQA.clear();
        } else {
            Iterator<zzg.zze<?>> it = this.zzPQ.zzQF.iterator();
            while (it.hasNext()) {
                it.next().forceFailureUnlessReady(new Status(8, "The connection to Google Play services was lost"));
            }
        }
        this.zzPQ.zzg((ConnectionResult) null);
        if (!z) {
            this.zzPQ.zzQs.zzaP(i);
        }
        this.zzPQ.zzQs.zzmf();
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, T extends zza.AbstractC0069zza<? extends Result, A>> T zzb(T t) {
        try {
            zza((zzg.zze) t);
        } catch (DeadObjectException e2) {
            zzas(1);
        }
        return t;
    }
}
