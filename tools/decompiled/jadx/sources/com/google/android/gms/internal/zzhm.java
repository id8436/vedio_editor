package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.internal.zzho;

/* JADX INFO: loaded from: classes3.dex */
public class zzhm extends zzi<zzho> {
    public zzhm(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzi
    /* JADX INFO: renamed from: zzX, reason: merged with bridge method [inline-methods] */
    public zzho zzD(IBinder iBinder) {
        return zzho.zza.zzZ(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzi
    public String zzeq() {
        return "com.google.android.gms.common.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzer() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }
}
