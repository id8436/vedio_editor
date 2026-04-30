package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes3.dex */
public final class zznr {
    private final ByteBuffer zzaNH;

    public class zza extends IOException {
        zza(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private zznr(ByteBuffer byteBuffer) {
        this.zzaNH = byteBuffer;
    }

    private zznr(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzA(int i, int i2) {
        return zzjx(i) + zzjv(i2);
    }

    public static int zzX(long j) {
        return zzaa(j);
    }

    public static int zzY(long j) {
        return zzaa(zzac(j));
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int iZza = length;
        while (true) {
            if (i2 < length) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt >= 2048) {
                    iZza += zza(charSequence, i2);
                    break;
                }
                i2++;
                iZza = ((127 - cCharAt) >>> 31) + iZza;
            } else {
                break;
            }
        }
        if (iZza < length) {
            throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iZza) + 4294967296L));
        }
        return iZza;
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) cCharAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char cCharAt2 = charSequence.charAt(i4);
            if (cCharAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) cCharAt2;
            } else if (cCharAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i6 > i5 - 3) {
                    if (i6 > i5 - 4) {
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i6);
                    }
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char cCharAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            int i8 = i6 + 1;
                            bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i10 + 1;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException("Unpaired surrogate at index " + (i4 - 1));
                }
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((cCharAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    public static int zzaa(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzac(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzan(boolean z) {
        return 1;
    }

    public static int zzb(int i, double d2) {
        return zzjx(i) + zzg(d2);
    }

    public static int zzb(int i, zzny zznyVar) {
        return (zzjx(i) * 2) + zzd(zznyVar);
    }

    public static int zzb(int i, byte[] bArr) {
        return zzjx(i) + zzy(bArr);
    }

    public static zznr zzb(byte[] bArr, int i, int i2) {
        return new zznr(bArr, i, i2);
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 128) {
                byteBuffer.put((byte) cCharAt);
            } else if (cCharAt < 2048) {
                byteBuffer.put((byte) ((cCharAt >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            } else {
                if (cCharAt >= 55296 && 57343 >= cCharAt) {
                    if (i + 1 != charSequence.length()) {
                        i++;
                        char cCharAt2 = charSequence.charAt(i);
                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                            int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
                }
                byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            }
            i++;
        }
    }

    public static int zzc(int i, float f2) {
        return zzjx(i) + zzj(f2);
    }

    public static int zzc(int i, zzny zznyVar) {
        return zzjx(i) + zze(zznyVar);
    }

    public static int zzc(int i, boolean z) {
        return zzjx(i) + zzan(z);
    }

    public static int zzd(int i, long j) {
        return zzjx(i) + zzX(j);
    }

    public static int zzd(zzny zznyVar) {
        return zznyVar.zzAc();
    }

    public static int zze(int i, long j) {
        return zzjx(i) + zzY(j);
    }

    public static int zze(zzny zznyVar) {
        int iZzAc = zznyVar.zzAc();
        return iZzAc + zzjz(iZzAc);
    }

    public static int zzeB(String str) {
        int iZza = zza(str);
        return iZza + zzjz(iZza);
    }

    public static int zzg(double d2) {
        return 8;
    }

    public static int zzj(float f2) {
        return 4;
    }

    public static int zzj(int i, String str) {
        return zzjx(i) + zzeB(str);
    }

    public static int zzjB(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzju(int i) {
        if (i >= 0) {
            return zzjz(i);
        }
        return 10;
    }

    public static int zzjv(int i) {
        return zzjz(zzjB(i));
    }

    public static int zzjx(int i) {
        return zzjz(zzob.zzC(i, 0));
    }

    public static int zzjz(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static zznr zzw(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static int zzy(byte[] bArr) {
        return zzjz(bArr.length) + bArr.length;
    }

    public static int zzz(int i, int i2) {
        return zzjx(i) + zzju(i2);
    }

    public void zzB(int i, int i2) throws IOException {
        zzjy(zzob.zzC(i, i2));
    }

    public void zzV(long j) throws IOException {
        zzZ(j);
    }

    public void zzW(long j) throws IOException {
        zzZ(zzac(j));
    }

    public void zzZ(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzjw((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzjw((int) j);
    }

    public void zza(int i, double d2) throws IOException {
        zzB(i, 1);
        zzf(d2);
    }

    public void zza(int i, zzny zznyVar) throws IOException {
        zzB(i, 2);
        zzc(zznyVar);
    }

    public void zza(int i, byte[] bArr) throws IOException {
        zzB(i, 2);
        zzx(bArr);
    }

    public void zzab(long j) throws IOException {
        zzjw(((int) j) & 255);
        zzjw(((int) (j >> 8)) & 255);
        zzjw(((int) (j >> 16)) & 255);
        zzjw(((int) (j >> 24)) & 255);
        zzjw(((int) (j >> 32)) & 255);
        zzjw(((int) (j >> 40)) & 255);
        zzjw(((int) (j >> 48)) & 255);
        zzjw(((int) (j >> 56)) & 255);
    }

    public void zzam(boolean z) throws IOException {
        zzjw(z ? 1 : 0);
    }

    public void zzb(byte b2) throws IOException {
        if (!this.zzaNH.hasRemaining()) {
            throw new zza(this.zzaNH.position(), this.zzaNH.limit());
        }
        this.zzaNH.put(b2);
    }

    public void zzb(int i, float f2) throws IOException {
        zzB(i, 5);
        zzi(f2);
    }

    public void zzb(int i, long j) throws IOException {
        zzB(i, 0);
        zzV(j);
    }

    public void zzb(int i, String str) throws IOException {
        zzB(i, 2);
        zzeA(str);
    }

    public void zzb(int i, boolean z) throws IOException {
        zzB(i, 0);
        zzam(z);
    }

    public void zzb(zzny zznyVar) throws IOException {
        zznyVar.zza(this);
    }

    public void zzc(int i, long j) throws IOException {
        zzB(i, 0);
        zzW(j);
    }

    public void zzc(zzny zznyVar) throws IOException {
        zzjy(zznyVar.zzAb());
        zznyVar.zza(this);
    }

    public void zzc(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzaNH.remaining() < i2) {
            throw new zza(this.zzaNH.position(), this.zzaNH.limit());
        }
        this.zzaNH.put(bArr, i, i2);
    }

    public void zzeA(String str) throws IOException {
        try {
            int iZzjz = zzjz(str.length());
            if (iZzjz != zzjz(str.length() * 3)) {
                zzjy(zza(str));
                zza(str, this.zzaNH);
                return;
            }
            int iPosition = this.zzaNH.position();
            this.zzaNH.position(iPosition + iZzjz);
            zza(str, this.zzaNH);
            int iPosition2 = this.zzaNH.position();
            this.zzaNH.position(iPosition);
            zzjy((iPosition2 - iPosition) - iZzjz);
            this.zzaNH.position(iPosition2);
        } catch (BufferOverflowException e2) {
            throw new zza(this.zzaNH.position(), this.zzaNH.limit());
        }
    }

    public void zzf(double d2) throws IOException {
        zzab(Double.doubleToLongBits(d2));
    }

    public void zzi(float f2) throws IOException {
        zzjA(Float.floatToIntBits(f2));
    }

    public void zzjA(int i) throws IOException {
        zzjw(i & 255);
        zzjw((i >> 8) & 255);
        zzjw((i >> 16) & 255);
        zzjw((i >> 24) & 255);
    }

    public void zzjs(int i) throws IOException {
        if (i >= 0) {
            zzjy(i);
        } else {
            zzZ(i);
        }
    }

    public void zzjt(int i) throws IOException {
        zzjy(zzjB(i));
    }

    public void zzjw(int i) throws IOException {
        zzb((byte) i);
    }

    public void zzjy(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzjw((i & 127) | 128);
            i >>>= 7;
        }
        zzjw(i);
    }

    public void zzx(int i, int i2) throws IOException {
        zzB(i, 0);
        zzjs(i2);
    }

    public void zzx(byte[] bArr) throws IOException {
        zzjy(bArr.length);
        zzz(bArr);
    }

    public void zzy(int i, int i2) throws IOException {
        zzB(i, 0);
        zzjt(i2);
    }

    public void zzz(byte[] bArr) throws IOException {
        zzc(bArr, 0, bArr.length);
    }

    public int zzzN() {
        return this.zzaNH.remaining();
    }

    public void zzzO() {
        if (zzzN() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }
}
