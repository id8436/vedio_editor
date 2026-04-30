package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public final class SignedBytes {
    public static final byte MAX_POWER_OF_TWO = 64;

    private SignedBytes() {
    }

    public static byte checkedCast(long j) {
        byte b2 = (byte) j;
        if (b2 != j) {
            throw new IllegalArgumentException("Out of range: " + j);
        }
        return b2;
    }

    public static byte saturatedCast(long j) {
        if (j > 127) {
            return Ascii.DEL;
        }
        if (j < -128) {
            return UnsignedBytes.MAX_POWER_OF_TWO;
        }
        return (byte) j;
    }

    public static int compare(byte b2, byte b3) {
        return b2 - b3;
    }

    public static byte min(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b2 = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] < b2) {
                b2 = bArr[i];
            }
        }
        return b2;
    }

    public static byte max(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b2 = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] > b2) {
                b2 = bArr[i];
            }
        }
        return b2;
    }

    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 5);
        sb.append((int) bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str).append((int) bArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = SignedBytes.compare(bArr[i], bArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return bArr.length - bArr2.length;
        }
    }
}
