package com.google.android.gms.common.data;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean zzRO;
    private ArrayList<Integer> zzRP;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.zzRO = false;
    }

    private void zzlu() {
        synchronized (this) {
            if (!this.zzRO) {
                int count = this.zzPy.getCount();
                this.zzRP = new ArrayList<>();
                if (count > 0) {
                    this.zzRP.add(0);
                    String strZzlt = zzlt();
                    String strZzd = this.zzPy.zzd(strZzlt, 0, this.zzPy.zzaD(0));
                    int i = 1;
                    while (i < count) {
                        int iZzaD = this.zzPy.zzaD(i);
                        String strZzd2 = this.zzPy.zzd(strZzlt, i, iZzaD);
                        if (strZzd2 == null) {
                            throw new NullPointerException("Missing value for markerColumn: " + strZzlt + ", at row: " + i + ", for window: " + iZzaD);
                        }
                        if (strZzd2.equals(strZzd)) {
                            strZzd2 = strZzd;
                        } else {
                            this.zzRP.add(Integer.valueOf(i));
                        }
                        i++;
                        strZzd = strZzd2;
                    }
                }
                this.zzRO = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        zzlu();
        return zzh(zzaG(i), zzaH(i));
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zzlu();
        return this.zzRP.size();
    }

    int zzaG(int i) {
        if (i < 0 || i >= this.zzRP.size()) {
            throw new IllegalArgumentException("Position " + i + " is out of bounds for this buffer");
        }
        return this.zzRP.get(i).intValue();
    }

    protected int zzaH(int i) {
        if (i < 0 || i == this.zzRP.size()) {
            return 0;
        }
        int count = i == this.zzRP.size() + (-1) ? this.zzPy.getCount() - this.zzRP.get(i).intValue() : this.zzRP.get(i + 1).intValue() - this.zzRP.get(i).intValue();
        if (count != 1) {
            return count;
        }
        int iZzaG = zzaG(i);
        int iZzaD = this.zzPy.zzaD(iZzaG);
        String strZzlv = zzlv();
        if (strZzlv == null || this.zzPy.zzd(strZzlv, iZzaG, iZzaD) != null) {
            return count;
        }
        return 0;
    }

    protected abstract T zzh(int i, int i2);

    protected abstract String zzlt();

    protected String zzlv() {
        return null;
    }
}
