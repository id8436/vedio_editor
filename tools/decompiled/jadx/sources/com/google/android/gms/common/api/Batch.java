package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.AbstractPendingResult;
import com.google.android.gms.common.api.PendingResult;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Batch extends AbstractPendingResult<BatchResult> {
    private int zzPr;
    private boolean zzPs;
    private boolean zzPt;
    private final PendingResult<?>[] zzPu;
    private final Object zzoe;

    public final class Builder {
        private List<PendingResult<?>> zzPw = new ArrayList();
        private Looper zzPx;

        public Builder(GoogleApiClient googleApiClient) {
            this.zzPx = googleApiClient.getLooper();
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.zzPw.size());
            this.zzPw.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.zzPw, this.zzPx);
        }
    }

    private Batch(List<PendingResult<?>> list, Looper looper) {
        super(new AbstractPendingResult.CallbackHandler(looper));
        this.zzoe = new Object();
        this.zzPr = list.size();
        this.zzPu = new PendingResult[this.zzPr];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.zzPu[i2] = pendingResult;
            pendingResult.addBatchCallback(new PendingResult.BatchCallback() { // from class: com.google.android.gms.common.api.Batch.1
                @Override // com.google.android.gms.common.api.PendingResult.BatchCallback
                public void zzl(Status status) {
                    synchronized (Batch.this.zzoe) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.zzPt = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.zzPs = true;
                        }
                        Batch.zzb(Batch.this);
                        if (Batch.this.zzPr == 0) {
                            if (Batch.this.zzPt) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.setResult(new BatchResult(Batch.this.zzPs ? new Status(13) : Status.zzQU, Batch.this.zzPu));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.zzPr;
        batch.zzPr = i - 1;
        return i;
    }

    @Override // com.google.android.gms.common.api.AbstractPendingResult, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.zzPu) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.common.api.AbstractPendingResult
    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.zzPu);
    }
}
