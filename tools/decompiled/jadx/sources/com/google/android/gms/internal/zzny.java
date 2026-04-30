package com.google.android.gms.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzny {
    protected volatile int zzaNT = -1;

    public static final <T extends zzny> T zza(T t, byte[] bArr) throws zznx {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzny zznyVar, byte[] bArr, int i, int i2) {
        try {
            zznr zznrVarZzb = zznr.zzb(bArr, i, i2);
            zznyVar.zza(zznrVarZzb);
            zznrVarZzb.zzzO();
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public static final <T extends zzny> T zzb(T t, byte[] bArr, int i, int i2) throws zznx {
        try {
            zznq zznqVarZza = zznq.zza(bArr, i, i2);
            t.zzb(zznqVarZza);
            zznqVarZza.zzjk(0);
            return t;
        } catch (zznx e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] zzf(zzny zznyVar) {
        byte[] bArr = new byte[zznyVar.zzAc()];
        zza(zznyVar, bArr, 0, bArr.length);
        return bArr;
    }

    public String toString() {
        return zznz.zzg(this);
    }

    public int zzAb() {
        if (this.zzaNT < 0) {
            zzAc();
        }
        return this.zzaNT;
    }

    public int zzAc() {
        int iZzc = zzc();
        this.zzaNT = iZzc;
        return iZzc;
    }

    public void zza(zznr zznrVar) throws IOException {
    }

    public abstract zzny zzb(zznq zznqVar) throws IOException;

    protected int zzc() {
        return 0;
    }

    @Override // 
    /* JADX INFO: renamed from: zzzR, reason: merged with bridge method [inline-methods] */
    public zzny clone() throws CloneNotSupportedException {
        return (zzny) super.clone();
    }
}
