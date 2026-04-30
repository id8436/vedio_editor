package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.v7.widget.ActivityChooserView;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zze;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhi {
    public static final Api.zzc<zzhm> zzKh = new Api.zzc<>();
    private static final Api.zzb<zzhm, Api.ApiOptions.NoOptions> zzKi = new Api.zzb<zzhm, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzhi.1
        @Override // com.google.android.gms.common.api.Api.zzb
        public int getPriority() {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }

        @Override // com.google.android.gms.common.api.Api.zzb
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public zzhm zza(Context context, Looper looper, zze zzeVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzhm(context, looper, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", zzKi, zzKh, new Scope[0]);
    public static final zzhj zzUh = new zzhk();
}
