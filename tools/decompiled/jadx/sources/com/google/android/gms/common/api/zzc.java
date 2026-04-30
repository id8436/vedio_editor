package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzc implements Releasable, Result {
    protected final Status zzKr;
    protected final DataHolder zzPy;

    protected zzc(DataHolder dataHolder) {
        this(dataHolder, new Status(dataHolder.getStatusCode()));
    }

    protected zzc(DataHolder dataHolder, Status status) {
        this.zzKr = status;
        this.zzPy = dataHolder;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzKr;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.zzPy != null) {
            this.zzPy.close();
        }
    }
}
