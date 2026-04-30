package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class zznv implements Cloneable {
    private zznt<?, ?> zzaNP;
    private Object zzaNQ;
    private List<zzoa> zzaNR = new ArrayList();

    zznv() {
    }

    private byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzc()];
        zza(zznr.zzw(bArr));
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zznv)) {
            return false;
        }
        zznv zznvVar = (zznv) obj;
        if (this.zzaNQ != null && zznvVar.zzaNQ != null) {
            if (this.zzaNP == zznvVar.zzaNP) {
                return !this.zzaNP.zzaNJ.isArray() ? this.zzaNQ.equals(zznvVar.zzaNQ) : this.zzaNQ instanceof byte[] ? Arrays.equals((byte[]) this.zzaNQ, (byte[]) zznvVar.zzaNQ) : this.zzaNQ instanceof int[] ? Arrays.equals((int[]) this.zzaNQ, (int[]) zznvVar.zzaNQ) : this.zzaNQ instanceof long[] ? Arrays.equals((long[]) this.zzaNQ, (long[]) zznvVar.zzaNQ) : this.zzaNQ instanceof float[] ? Arrays.equals((float[]) this.zzaNQ, (float[]) zznvVar.zzaNQ) : this.zzaNQ instanceof double[] ? Arrays.equals((double[]) this.zzaNQ, (double[]) zznvVar.zzaNQ) : this.zzaNQ instanceof boolean[] ? Arrays.equals((boolean[]) this.zzaNQ, (boolean[]) zznvVar.zzaNQ) : Arrays.deepEquals((Object[]) this.zzaNQ, (Object[]) zznvVar.zzaNQ);
            }
            return false;
        }
        if (this.zzaNR != null && zznvVar.zzaNR != null) {
            return this.zzaNR.equals(zznvVar.zzaNR);
        }
        try {
            return Arrays.equals(toByteArray(), zznvVar.toByteArray());
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    void zza(zznr zznrVar) throws IOException {
        if (this.zzaNQ != null) {
            this.zzaNP.zza(this.zzaNQ, zznrVar);
            return;
        }
        Iterator<zzoa> it = this.zzaNR.iterator();
        while (it.hasNext()) {
            it.next().zza(zznrVar);
        }
    }

    void zza(zzoa zzoaVar) {
        this.zzaNR.add(zzoaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    <T> T zzb(zznt<?, T> zzntVar) {
        if (this.zzaNQ == null) {
            this.zzaNP = zzntVar;
            this.zzaNQ = zzntVar.zzy(this.zzaNR);
            this.zzaNR = null;
        } else if (this.zzaNP != zzntVar) {
            throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
        }
        return (T) this.zzaNQ;
    }

    int zzc() {
        int iZzc = 0;
        if (this.zzaNQ != null) {
            return this.zzaNP.zzM(this.zzaNQ);
        }
        Iterator<zzoa> it = this.zzaNR.iterator();
        while (true) {
            int i = iZzc;
            if (!it.hasNext()) {
                return i;
            }
            iZzc = it.next().zzc() + i;
        }
    }

    /* JADX INFO: renamed from: zzzT, reason: merged with bridge method [inline-methods] */
    public final zznv clone() {
        zznv zznvVar = new zznv();
        try {
            zznvVar.zzaNP = this.zzaNP;
            if (this.zzaNR == null) {
                zznvVar.zzaNR = null;
            } else {
                zznvVar.zzaNR.addAll(this.zzaNR);
            }
            if (this.zzaNQ != null) {
                if (this.zzaNQ instanceof zzny) {
                    zznvVar.zzaNQ = ((zzny) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof byte[]) {
                    zznvVar.zzaNQ = ((byte[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.zzaNQ;
                    byte[][] bArr2 = new byte[bArr.length][];
                    zznvVar.zzaNQ = bArr2;
                    for (int i = 0; i < bArr.length; i++) {
                        bArr2[i] = (byte[]) bArr[i].clone();
                    }
                } else if (this.zzaNQ instanceof boolean[]) {
                    zznvVar.zzaNQ = ((boolean[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof int[]) {
                    zznvVar.zzaNQ = ((int[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof long[]) {
                    zznvVar.zzaNQ = ((long[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof float[]) {
                    zznvVar.zzaNQ = ((float[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof double[]) {
                    zznvVar.zzaNQ = ((double[]) this.zzaNQ).clone();
                } else if (this.zzaNQ instanceof zzny[]) {
                    zzny[] zznyVarArr = (zzny[]) this.zzaNQ;
                    zzny[] zznyVarArr2 = new zzny[zznyVarArr.length];
                    zznvVar.zzaNQ = zznyVarArr2;
                    for (int i2 = 0; i2 < zznyVarArr.length; i2++) {
                        zznyVarArr2[i2] = zznyVarArr[i2].clone();
                    }
                }
            }
            return zznvVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }
}
