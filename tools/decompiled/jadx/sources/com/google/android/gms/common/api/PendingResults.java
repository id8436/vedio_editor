package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes2.dex */
public final class PendingResults {

    final class zza<R extends Result> extends AbstractPendingResult<R> {
        private final R zzQS;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.zzQS = r;
        }

        @Override // com.google.android.gms.common.api.AbstractPendingResult
        protected R createFailedResult(Status status) {
            if (status.getStatusCode() != this.zzQS.getStatus().getStatusCode()) {
                throw new UnsupportedOperationException("Creating failed results is not supported");
            }
            return this.zzQS;
        }
    }

    final class zzb<R extends Result> extends AbstractPendingResult<R> {
        public zzb() {
            super(Looper.getMainLooper());
        }

        @Override // com.google.android.gms.common.api.AbstractPendingResult
        protected R createFailedResult(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzk zzkVar = new zzk(Looper.getMainLooper());
        zzkVar.cancel();
        return zzkVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzv.zzb(r, "Result must not be null");
        zzv.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zza zzaVar = new zza(r);
        zzaVar.cancel();
        return zzaVar;
    }

    public static <R extends Result> PendingResult<R> immediatePendingResult(R r) {
        zzv.zzb(r, "Result must not be null");
        zzb zzbVar = new zzb();
        zzbVar.setResult(r);
        return zzbVar;
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzv.zzb(status, "Result must not be null");
        zzk zzkVar = new zzk(Looper.getMainLooper());
        zzkVar.setResult(status);
        return zzkVar;
    }
}
