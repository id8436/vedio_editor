package com.google.android.gms.internal;

import com.google.android.gms.internal.zzns;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzns<M extends zzns<M>> extends zzny {
    protected zznu zzaNI;

    public final <T> T zza(zznt<M, T> zzntVar) {
        zznv zznvVarZzjC;
        if (this.zzaNI == null || (zznvVarZzjC = this.zzaNI.zzjC(zzob.zzjG(zzntVar.tag))) == null) {
            return null;
        }
        return (T) zznvVarZzjC.zzb(zzntVar);
    }

    @Override // com.google.android.gms.internal.zzny
    public void zza(zznr zznrVar) throws IOException {
        if (this.zzaNI == null) {
            return;
        }
        for (int i = 0; i < this.zzaNI.size(); i++) {
            this.zzaNI.zzjD(i).zza(zznrVar);
        }
    }

    protected final boolean zza(zznq zznqVar, int i) throws IOException {
        int position = zznqVar.getPosition();
        if (!zznqVar.zzjl(i)) {
            return false;
        }
        int iZzjG = zzob.zzjG(i);
        zzoa zzoaVar = new zzoa(i, zznqVar.zzw(position, zznqVar.getPosition() - position));
        zznv zznvVarZzjC = null;
        if (this.zzaNI == null) {
            this.zzaNI = new zznu();
        } else {
            zznvVarZzjC = this.zzaNI.zzjC(iZzjG);
        }
        if (zznvVarZzjC == null) {
            zznvVarZzjC = new zznv();
            this.zzaNI.zza(iZzjG, zznvVarZzjC);
        }
        zznvVarZzjC.zza(zzoaVar);
        return true;
    }

    protected final boolean zza(M m) {
        return (this.zzaNI == null || this.zzaNI.isEmpty()) ? m.zzaNI == null || m.zzaNI.isEmpty() : this.zzaNI.equals(m.zzaNI);
    }

    @Override // com.google.android.gms.internal.zzny
    protected int zzc() {
        if (this.zzaNI == null) {
            return 0;
        }
        int iZzc = 0;
        for (int i = 0; i < this.zzaNI.size(); i++) {
            iZzc += this.zzaNI.zzjD(i).zzc();
        }
        return iZzc;
    }

    protected final int zzzP() {
        if (this.zzaNI == null || this.zzaNI.isEmpty()) {
            return 0;
        }
        return this.zzaNI.hashCode();
    }

    @Override // com.google.android.gms.internal.zzny
    /* JADX INFO: renamed from: zzzQ, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        zznw.zza(this, m);
        return m;
    }
}
