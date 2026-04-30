package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.v7.widget.ActivityChooserView;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.signin.internal.zzg;
import com.google.android.gms.signin.internal.zzh;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public final class zzmb {
    public static final Api.zzc<zzh> zzKh = new Api.zzc<>();
    public static final Api.zzb<zzh, zzme> zzKi = new Api.zzb<zzh, zzme>() { // from class: com.google.android.gms.internal.zzmb.1
        @Override // com.google.android.gms.common.api.Api.zzb
        public int getPriority() {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }

        @Override // com.google.android.gms.common.api.Api.zzb
        public zzh zza(Context context, Looper looper, zze zzeVar, zzme zzmeVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzh(context, looper, zzeVar, zzmeVar == null ? zzme.zzaBD : zzmeVar, connectionCallbacks, onConnectionFailedListener, Executors.newSingleThreadExecutor());
        }
    };
    public static final Api<zzme> API = new Api<>("SignIn.API", zzKi, zzKh, new Scope[0]);
    public static final zzmc zzaBC = new zzg();
}
