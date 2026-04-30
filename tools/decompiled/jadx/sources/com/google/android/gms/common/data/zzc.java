package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzu;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzc {
    protected final DataHolder zzPy;
    protected int zzRw;
    private int zzRx;

    public zzc(DataHolder dataHolder, int i) {
        this.zzPy = (DataHolder) zzv.zzr(dataHolder);
        zzaB(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzu.equal(Integer.valueOf(zzcVar.zzRw), Integer.valueOf(this.zzRw)) && zzu.equal(Integer.valueOf(zzcVar.zzRx), Integer.valueOf(this.zzRx)) && zzcVar.zzPy == this.zzPy;
    }

    protected boolean getBoolean(String str) {
        return this.zzPy.zze(str, this.zzRw, this.zzRx);
    }

    protected byte[] getByteArray(String str) {
        return this.zzPy.zzg(str, this.zzRw, this.zzRx);
    }

    protected float getFloat(String str) {
        return this.zzPy.zzf(str, this.zzRw, this.zzRx);
    }

    protected int getInteger(String str) {
        return this.zzPy.zzc(str, this.zzRw, this.zzRx);
    }

    protected long getLong(String str) {
        return this.zzPy.zzb(str, this.zzRw, this.zzRx);
    }

    protected String getString(String str) {
        return this.zzPy.zzd(str, this.zzRw, this.zzRx);
    }

    public int hashCode() {
        return zzu.hashCode(Integer.valueOf(this.zzRw), Integer.valueOf(this.zzRx), this.zzPy);
    }

    public boolean isDataValid() {
        return !this.zzPy.isClosed();
    }

    protected void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzPy.zza(str, this.zzRw, this.zzRx, charArrayBuffer);
    }

    protected void zzaB(int i) {
        zzv.zzP(i >= 0 && i < this.zzPy.getCount());
        this.zzRw = i;
        this.zzRx = this.zzPy.zzaD(this.zzRw);
    }

    public boolean zzbF(String str) {
        return this.zzPy.zzbF(str);
    }

    protected Uri zzbG(String str) {
        return this.zzPy.zzh(str, this.zzRw, this.zzRx);
    }

    protected boolean zzbH(String str) {
        return this.zzPy.zzi(str, this.zzRw, this.zzRx);
    }

    protected int zzlp() {
        return this.zzRw;
    }
}
