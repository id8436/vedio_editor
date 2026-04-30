package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;

/* JADX INFO: loaded from: classes3.dex */
abstract class zzhl<R extends Result> extends zza.AbstractC0069zza<R, zzhm> {

    abstract class zza extends zzhl<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.common.api.AbstractPendingResult
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status createFailedResult(Status status) {
            return status;
        }
    }

    public zzhl(GoogleApiClient googleApiClient) {
        super(zzhi.zzKh, googleApiClient);
    }
}
