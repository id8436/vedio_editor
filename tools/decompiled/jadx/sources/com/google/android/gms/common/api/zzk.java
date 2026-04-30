package com.google.android.gms.common.api;

import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
public class zzk extends AbstractPendingResult<Status> {
    public zzk(Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.AbstractPendingResult
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public Status createFailedResult(Status status) {
        return status;
    }
}
