package com.google.android.gms.common.api;

import com.google.android.gms.common.api.zzi;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb<L> implements zzi.zzb<L> {
    private final DataHolder zzPy;

    protected zzb(DataHolder dataHolder) {
        this.zzPy = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.common.api.zzi.zzb
    public final void zzk(L l) {
        zza(l, this.zzPy);
    }

    @Override // com.google.android.gms.common.api.zzi.zzb
    public void zzkJ() {
        if (this.zzPy != null) {
            this.zzPy.close();
        }
    }
}
