package com.google.android.gms.internal;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class zznq {
    private final byte[] buffer;
    private int zzaNA;
    private int zzaNB;
    private int zzaNC;
    private int zzaNE;
    private int zzaNy;
    private int zzaNz;
    private int zzaND = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int zzaNF = 64;
    private int zzaNG = 67108864;

    private zznq(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzaNy = i;
        this.zzaNz = i + i2;
        this.zzaNB = i;
    }

    public static long zzU(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static zznq zza(byte[] bArr, int i, int i2) {
        return new zznq(bArr, i, i2);
    }

    public static int zzjm(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static zznq zzv(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    private void zzzJ() {
        this.zzaNz += this.zzaNA;
        int i = this.zzaNz;
        if (i <= this.zzaND) {
            this.zzaNA = 0;
        } else {
            this.zzaNA = i - this.zzaND;
            this.zzaNz -= this.zzaNA;
        }
    }

    public int getPosition() {
        return this.zzaNB - this.zzaNy;
    }

    public byte[] readBytes() throws IOException {
        int iZzzF = zzzF();
        if (iZzzF > this.zzaNz - this.zzaNB || iZzzF <= 0) {
            return zzjq(iZzzF);
        }
        byte[] bArr = new byte[iZzzF];
        System.arraycopy(this.buffer, this.zzaNB, bArr, 0, iZzzF);
        this.zzaNB = iZzzF + this.zzaNB;
        return bArr;
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(zzzI());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(zzzH());
    }

    public String readString() throws IOException {
        int iZzzF = zzzF();
        if (iZzzF > this.zzaNz - this.zzaNB || iZzzF <= 0) {
            return new String(zzjq(iZzzF), "UTF-8");
        }
        String str = new String(this.buffer, this.zzaNB, iZzzF, "UTF-8");
        this.zzaNB = iZzzF + this.zzaNB;
        return str;
    }

    public void zza(zzny zznyVar) throws IOException {
        int iZzzF = zzzF();
        if (this.zzaNE >= this.zzaNF) {
            throw zznx.zzAa();
        }
        int iZzjn = zzjn(iZzzF);
        this.zzaNE++;
        zznyVar.zzb(this);
        zzjk(0);
        this.zzaNE--;
        zzjo(iZzjn);
    }

    public void zza(zzny zznyVar, int i) throws IOException {
        if (this.zzaNE >= this.zzaNF) {
            throw zznx.zzAa();
        }
        this.zzaNE++;
        zznyVar.zzb(this);
        zzjk(zzob.zzC(i, 4));
        this.zzaNE--;
    }

    public void zzjk(int i) throws zznx {
        if (this.zzaNC != i) {
            throw zznx.zzzY();
        }
    }

    public boolean zzjl(int i) throws IOException {
        switch (zzob.zzjF(i)) {
            case 0:
                zzzB();
                return true;
            case 1:
                zzzI();
                return true;
            case 2:
                zzjr(zzzF());
                return true;
            case 3:
                zzzz();
                zzjk(zzob.zzC(zzob.zzjG(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                zzzH();
                return true;
            default:
                throw zznx.zzzZ();
        }
    }

    public int zzjn(int i) throws zznx {
        if (i < 0) {
            throw zznx.zzzV();
        }
        int i2 = this.zzaNB + i;
        int i3 = this.zzaND;
        if (i2 > i3) {
            throw zznx.zzzU();
        }
        this.zzaND = i2;
        zzzJ();
        return i3;
    }

    public void zzjo(int i) {
        this.zzaND = i;
        zzzJ();
    }

    public void zzjp(int i) {
        if (i > this.zzaNB - this.zzaNy) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.zzaNB - this.zzaNy));
        }
        if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        }
        this.zzaNB = this.zzaNy + i;
    }

    public byte[] zzjq(int i) throws IOException {
        if (i < 0) {
            throw zznx.zzzV();
        }
        if (this.zzaNB + i > this.zzaND) {
            zzjr(this.zzaND - this.zzaNB);
            throw zznx.zzzU();
        }
        if (i > this.zzaNz - this.zzaNB) {
            throw zznx.zzzU();
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, this.zzaNB, bArr, 0, i);
        this.zzaNB += i;
        return bArr;
    }

    public void zzjr(int i) throws IOException {
        if (i < 0) {
            throw zznx.zzzV();
        }
        if (this.zzaNB + i > this.zzaND) {
            zzjr(this.zzaND - this.zzaNB);
            throw zznx.zzzU();
        }
        if (i > this.zzaNz - this.zzaNB) {
            throw zznx.zzzU();
        }
        this.zzaNB += i;
    }

    public byte[] zzw(int i, int i2) {
        if (i2 == 0) {
            return zzob.zzaOc;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzaNy + i, bArr, 0, i2);
        return bArr;
    }

    public long zzzA() throws IOException {
        return zzzG();
    }

    public int zzzB() throws IOException {
        return zzzF();
    }

    public boolean zzzC() throws IOException {
        return zzzF() != 0;
    }

    public int zzzD() throws IOException {
        return zzjm(zzzF());
    }

    public long zzzE() throws IOException {
        return zzU(zzzG());
    }

    public int zzzF() throws IOException {
        byte bZzzM = zzzM();
        if (bZzzM >= 0) {
            return bZzzM;
        }
        int i = bZzzM & Ascii.DEL;
        byte bZzzM2 = zzzM();
        if (bZzzM2 >= 0) {
            return i | (bZzzM2 << 7);
        }
        int i2 = i | ((bZzzM2 & Ascii.DEL) << 7);
        byte bZzzM3 = zzzM();
        if (bZzzM3 >= 0) {
            return i2 | (bZzzM3 << Ascii.SO);
        }
        int i3 = i2 | ((bZzzM3 & Ascii.DEL) << 14);
        byte bZzzM4 = zzzM();
        if (bZzzM4 >= 0) {
            return i3 | (bZzzM4 << Ascii.NAK);
        }
        int i4 = i3 | ((bZzzM4 & Ascii.DEL) << 21);
        byte bZzzM5 = zzzM();
        int i5 = i4 | (bZzzM5 << 28);
        if (bZzzM5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (zzzM() >= 0) {
                return i5;
            }
        }
        throw zznx.zzzW();
    }

    public long zzzG() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzzM = zzzM();
            j |= ((long) (bZzzM & Ascii.DEL)) << i;
            if ((bZzzM & UnsignedBytes.MAX_POWER_OF_TWO) == 0) {
                return j;
            }
        }
        throw zznx.zzzW();
    }

    public int zzzH() throws IOException {
        return (zzzM() & UnsignedBytes.MAX_VALUE) | ((zzzM() & UnsignedBytes.MAX_VALUE) << 8) | ((zzzM() & UnsignedBytes.MAX_VALUE) << 16) | ((zzzM() & UnsignedBytes.MAX_VALUE) << 24);
    }

    public long zzzI() throws IOException {
        byte bZzzM = zzzM();
        return ((((long) zzzM()) & 255) << 8) | (((long) bZzzM) & 255) | ((((long) zzzM()) & 255) << 16) | ((((long) zzzM()) & 255) << 24) | ((((long) zzzM()) & 255) << 32) | ((((long) zzzM()) & 255) << 40) | ((((long) zzzM()) & 255) << 48) | ((((long) zzzM()) & 255) << 56);
    }

    public int zzzK() {
        if (this.zzaND == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzaND - this.zzaNB;
    }

    public boolean zzzL() {
        return this.zzaNB == this.zzaNz;
    }

    public byte zzzM() throws IOException {
        if (this.zzaNB == this.zzaNz) {
            throw zznx.zzzU();
        }
        byte[] bArr = this.buffer;
        int i = this.zzaNB;
        this.zzaNB = i + 1;
        return bArr[i];
    }

    public int zzzy() throws IOException {
        if (zzzL()) {
            this.zzaNC = 0;
            return 0;
        }
        this.zzaNC = zzzF();
        if (this.zzaNC == 0) {
            throw zznx.zzzX();
        }
        return this.zzaNC;
    }

    public void zzzz() throws IOException {
        int iZzzy;
        do {
            iZzzy = zzzy();
            if (iZzzy == 0) {
                return;
            }
        } while (zzjl(iZzzy));
    }
}
