package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzlk;

/* JADX INFO: loaded from: classes3.dex */
public class zzd implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private final zzlk.zza zzayz;
    private zzf zzayp = null;
    private boolean zzayA = true;

    public zzd(zzlk.zza zzaVar) {
        this.zzayz = zzaVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.zzayp.zzaf(false);
        if (this.zzayA && this.zzayz != null) {
            this.zzayz.zzvp();
        }
        this.zzayA = false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzayp.zzaf(true);
        if (this.zzayA && this.zzayz != null) {
            if (connectionResult.hasResolution()) {
                this.zzayz.zzf(connectionResult.getResolution());
            } else {
                this.zzayz.zzvq();
            }
        }
        this.zzayA = false;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        this.zzayp.zzaf(true);
    }

    public void zza(zzf zzfVar) {
        this.zzayp = zzfVar;
    }

    public void zzae(boolean z) {
        this.zzayA = z;
    }
}
