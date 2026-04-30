package com.google.android.gms.internal;

/* JADX INFO: loaded from: classes3.dex */
class zznu implements Cloneable {
    private static final zznv zzaNL = new zznv();
    private int mSize;
    private boolean zzaNM;
    private int[] zzaNN;
    private zznv[] zzaNO;

    public zznu() {
        this(10);
    }

    public zznu(int i) {
        this.zzaNM = false;
        int iIdealIntArraySize = idealIntArraySize(i);
        this.zzaNN = new int[iIdealIntArraySize];
        this.zzaNO = new zznv[iIdealIntArraySize];
        this.mSize = 0;
    }

    private void gc() {
        int i = this.mSize;
        int[] iArr = this.zzaNN;
        zznv[] zznvVarArr = this.zzaNO;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            zznv zznvVar = zznvVarArr[i3];
            if (zznvVar != zzaNL) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    zznvVarArr[i2] = zznvVar;
                    zznvVarArr[i3] = null;
                }
                i2++;
            }
        }
        this.zzaNM = false;
        this.mSize = i2;
    }

    private int idealByteArraySize(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int idealIntArraySize(int i) {
        return idealByteArraySize(i * 4) / 4;
    }

    private boolean zza(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean zza(zznv[] zznvVarArr, zznv[] zznvVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!zznvVarArr[i2].equals(zznvVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int zzjE(int i) {
        int i2 = 0;
        int i3 = this.mSize - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.zzaNN[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zznu)) {
            return false;
        }
        zznu zznuVar = (zznu) obj;
        if (size() != zznuVar.size()) {
            return false;
        }
        return zza(this.zzaNN, zznuVar.zzaNN, this.mSize) && zza(this.zzaNO, zznuVar.zzaNO, this.mSize);
    }

    public int hashCode() {
        if (this.zzaNM) {
            gc();
        }
        int iHashCode = 17;
        for (int i = 0; i < this.mSize; i++) {
            iHashCode = (((iHashCode * 31) + this.zzaNN[i]) * 31) + this.zzaNO[i].hashCode();
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int size() {
        if (this.zzaNM) {
            gc();
        }
        return this.mSize;
    }

    public void zza(int i, zznv zznvVar) {
        int iZzjE = zzjE(i);
        if (iZzjE >= 0) {
            this.zzaNO[iZzjE] = zznvVar;
            return;
        }
        int iZzjE2 = iZzjE ^ (-1);
        if (iZzjE2 < this.mSize && this.zzaNO[iZzjE2] == zzaNL) {
            this.zzaNN[iZzjE2] = i;
            this.zzaNO[iZzjE2] = zznvVar;
            return;
        }
        if (this.zzaNM && this.mSize >= this.zzaNN.length) {
            gc();
            iZzjE2 = zzjE(i) ^ (-1);
        }
        if (this.mSize >= this.zzaNN.length) {
            int iIdealIntArraySize = idealIntArraySize(this.mSize + 1);
            int[] iArr = new int[iIdealIntArraySize];
            zznv[] zznvVarArr = new zznv[iIdealIntArraySize];
            System.arraycopy(this.zzaNN, 0, iArr, 0, this.zzaNN.length);
            System.arraycopy(this.zzaNO, 0, zznvVarArr, 0, this.zzaNO.length);
            this.zzaNN = iArr;
            this.zzaNO = zznvVarArr;
        }
        if (this.mSize - iZzjE2 != 0) {
            System.arraycopy(this.zzaNN, iZzjE2, this.zzaNN, iZzjE2 + 1, this.mSize - iZzjE2);
            System.arraycopy(this.zzaNO, iZzjE2, this.zzaNO, iZzjE2 + 1, this.mSize - iZzjE2);
        }
        this.zzaNN[iZzjE2] = i;
        this.zzaNO[iZzjE2] = zznvVar;
        this.mSize++;
    }

    public zznv zzjC(int i) {
        int iZzjE = zzjE(i);
        if (iZzjE < 0 || this.zzaNO[iZzjE] == zzaNL) {
            return null;
        }
        return this.zzaNO[iZzjE];
    }

    public zznv zzjD(int i) {
        if (this.zzaNM) {
            gc();
        }
        return this.zzaNO[i];
    }

    /* JADX INFO: renamed from: zzzS, reason: merged with bridge method [inline-methods] */
    public final zznu clone() {
        int size = size();
        zznu zznuVar = new zznu(size);
        System.arraycopy(this.zzaNN, 0, zznuVar.zzaNN, 0, size);
        for (int i = 0; i < size; i++) {
            if (this.zzaNO[i] != null) {
                zznuVar.zzaNO[i] = this.zzaNO[i].clone();
            }
        }
        zznuVar.mSize = size;
        return zznuVar;
    }
}
