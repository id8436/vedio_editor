package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzv;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class BatchResult implements Result {
    private final Status zzKr;
    private final PendingResult<?>[] zzPu;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.zzKr = status;
        this.zzPu = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzKr;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzv.zzb(batchResultToken.mId < this.zzPu.length, "The result token does not belong to this batch");
        return (R) this.zzPu[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
