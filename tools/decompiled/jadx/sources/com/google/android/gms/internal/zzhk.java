package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.internal.zzhl;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhk implements zzhj {

    class zza extends zzhh {
        private final zza.zzb<Status> zzKq;

        public zza(zza.zzb<Status> zzbVar) {
            this.zzKq = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzhh, com.google.android.gms.internal.zzhn
        public void zzaW(int i) throws RemoteException {
            this.zzKq.zzj(new Status(i));
        }
    }

    @Override // com.google.android.gms.internal.zzhj
    public PendingResult<Status> zzc(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new zzhl.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzhk.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.common.api.zza.AbstractC0069zza
            public void zza(zzhm zzhmVar) throws RemoteException {
                zzhmVar.zzlX().zza(new zza(this));
            }
        });
    }
}
