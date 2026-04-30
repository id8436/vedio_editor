package org.mortbay.jetty.security;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import java.lang.reflect.Array;
import org.mortbay.jetty.HttpTokens;

/* JADX INFO: loaded from: classes3.dex */
public class UnixCrypt {
    private static final byte[] IP = {HttpTokens.COLON, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 60, 52, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 36, 28, 20, Ascii.FF, 4, 62, 54, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, Ascii.RS, Ascii.SYN, Ascii.SO, 6, SignedBytes.MAX_POWER_OF_TWO, 56, 48, 40, 32, Ascii.CAN, Ascii.DLE, 8, 57, 49, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 33, 25, 17, 9, 1, HttpTokens.SEMI_COLON, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, 61, 53, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, Ascii.GS, Ascii.NAK, 13, 5, 63, 55, ClosedCaptionCtrl.END_OF_CAPTION, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 31, 23, Ascii.SI, 7};
    private static final byte[] ExpandTr = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, Ascii.VT, Ascii.FF, 13, Ascii.FF, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DLE, 17, Ascii.DC2, 19, 20, Ascii.NAK, 20, Ascii.NAK, Ascii.SYN, 23, Ascii.CAN, 25, Ascii.CAN, 25, Ascii.SUB, Ascii.ESC, 28, Ascii.GS, 28, Ascii.GS, Ascii.RS, 31, 32, 1};
    private static final byte[] PC1 = {57, 49, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 33, 25, 17, 9, 1, HttpTokens.COLON, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, HttpTokens.SEMI_COLON, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, 60, 52, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 36, 63, 55, ClosedCaptionCtrl.END_OF_CAPTION, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 31, 23, Ascii.SI, 7, 62, 54, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, Ascii.RS, Ascii.SYN, Ascii.SO, 6, 61, 53, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, Ascii.GS, Ascii.NAK, 13, 5, 28, 20, Ascii.FF, 4};
    private static final byte[] Rotates = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};
    private static final byte[] PC2 = {9, Ascii.DC2, Ascii.SO, 17, Ascii.VT, Ascii.CAN, 1, 5, Ascii.SYN, 25, 3, 28, Ascii.SI, 6, Ascii.NAK, 10, 35, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, 23, 19, Ascii.FF, 4, Ascii.SUB, 8, 43, 54, Ascii.DLE, 7, Ascii.ESC, 20, 13, 2, 0, 0, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 52, 31, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, ClosedCaptionCtrl.END_OF_CAPTION, 55, 0, 0, Ascii.RS, 40, 51, ClosedCaptionCtrl.CARRIAGE_RETURN, 33, 48, 0, 0, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 49, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 56, 34, 53, 0, 0, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, 42, 50, 36, Ascii.GS, 32};
    private static final byte[][] S = {new byte[]{Ascii.SO, 4, 13, 1, 2, Ascii.SI, Ascii.VT, 8, 3, 10, 6, Ascii.FF, 5, 9, 0, 7, 0, Ascii.SI, 7, 4, Ascii.SO, 2, 13, 1, 10, 6, Ascii.FF, Ascii.VT, 9, 5, 3, 8, 4, 1, Ascii.SO, 8, 13, 6, 2, Ascii.VT, Ascii.SI, Ascii.FF, 9, 7, 3, 10, 5, 0, Ascii.SI, Ascii.FF, 8, 2, 4, 9, 1, 7, 5, Ascii.VT, 3, Ascii.SO, 10, 0, 6, 13}, new byte[]{Ascii.SI, 1, 8, Ascii.SO, 6, Ascii.VT, 3, 4, 9, 7, 2, 13, Ascii.FF, 0, 5, 10, 3, 13, 4, 7, Ascii.SI, 2, 8, Ascii.SO, Ascii.FF, 0, 1, 10, 6, 9, Ascii.VT, 5, 0, Ascii.SO, 7, Ascii.VT, 10, 4, 13, 1, 5, 8, Ascii.FF, 6, 9, 3, 2, Ascii.SI, 13, 8, 10, 1, 3, Ascii.SI, 4, 2, Ascii.VT, 6, 7, Ascii.FF, 0, 5, Ascii.SO, 9}, new byte[]{10, 0, 9, Ascii.SO, 6, 3, Ascii.SI, 5, 1, 13, Ascii.FF, 7, Ascii.VT, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, Ascii.SO, Ascii.FF, Ascii.VT, Ascii.SI, 1, 13, 6, 4, 9, 8, Ascii.SI, 3, 0, Ascii.VT, 1, 2, Ascii.FF, 5, 10, Ascii.SO, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, Ascii.SI, Ascii.SO, 3, Ascii.VT, 5, 2, Ascii.FF}, new byte[]{7, 13, Ascii.SO, 3, 0, 6, 9, 10, 1, 2, 8, 5, Ascii.VT, Ascii.FF, 4, Ascii.SI, 13, 8, Ascii.VT, 5, 6, Ascii.SI, 0, 3, 4, 7, 2, Ascii.FF, 1, 10, Ascii.SO, 9, 10, 6, 9, 0, Ascii.FF, Ascii.VT, 7, 13, Ascii.SI, 1, 3, Ascii.SO, 5, 2, 8, 4, 3, Ascii.SI, 0, 6, 10, 1, 13, 8, 9, 4, 5, Ascii.VT, Ascii.FF, 7, 2, Ascii.SO}, new byte[]{2, Ascii.FF, 4, 1, 7, 10, Ascii.VT, 6, 8, 5, 3, Ascii.SI, 13, 0, Ascii.SO, 9, Ascii.SO, Ascii.VT, 2, Ascii.FF, 4, 7, 13, 1, 5, 0, Ascii.SI, 10, 3, 9, 8, 6, 4, 2, 1, Ascii.VT, 10, 13, 7, 8, Ascii.SI, 9, Ascii.FF, 5, 6, 3, 0, Ascii.SO, Ascii.VT, 8, Ascii.FF, 7, 1, Ascii.SO, 2, 13, 6, Ascii.SI, 0, 9, 10, 4, 5, 3}, new byte[]{Ascii.FF, 1, 10, Ascii.SI, 9, 2, 6, 8, 0, 13, 3, 4, Ascii.SO, 7, 5, Ascii.VT, 10, Ascii.SI, 4, 2, 7, Ascii.FF, 9, 5, 6, 1, 13, Ascii.SO, 0, Ascii.VT, 3, 8, 9, Ascii.SO, Ascii.SI, 5, 2, 8, Ascii.FF, 3, 7, 0, 4, 10, 1, 13, Ascii.VT, 6, 4, 3, 2, Ascii.FF, 9, 5, Ascii.SI, 10, Ascii.VT, Ascii.SO, 1, 7, 6, 0, 8, 13}, new byte[]{4, Ascii.VT, 2, Ascii.SO, Ascii.SI, 0, 8, 13, 3, Ascii.FF, 9, 7, 5, 10, 6, 1, 13, 0, Ascii.VT, 7, 4, 9, 1, 10, Ascii.SO, 3, 5, Ascii.FF, 2, Ascii.SI, 8, 6, 1, 4, Ascii.VT, 13, Ascii.FF, 3, 7, Ascii.SO, 10, Ascii.SI, 6, 8, 0, 5, 9, 2, 6, Ascii.VT, 13, 8, 1, 4, 10, 7, 9, 5, 0, Ascii.SI, Ascii.SO, 2, 3, Ascii.FF}, new byte[]{13, 2, 8, 4, 6, Ascii.SI, Ascii.VT, 1, 10, 9, 3, Ascii.SO, 5, 0, Ascii.FF, 7, 1, Ascii.SI, 13, 8, 10, 3, 7, 4, Ascii.FF, 5, 6, Ascii.VT, 0, Ascii.SO, 9, 2, 7, Ascii.VT, 4, 1, 9, Ascii.FF, Ascii.SO, 2, 0, 6, 10, 13, Ascii.SI, 3, 5, 8, 2, 1, Ascii.SO, 7, 4, 10, 8, 13, Ascii.SI, Ascii.FF, 9, 0, 3, 5, 6, Ascii.VT}};
    private static final byte[] P32Tr = {Ascii.DLE, 7, 20, Ascii.NAK, Ascii.GS, Ascii.FF, 28, 17, 1, Ascii.SI, 23, Ascii.SUB, 5, Ascii.DC2, 31, 10, 2, 8, Ascii.CAN, Ascii.SO, 32, Ascii.ESC, 3, 9, 19, 13, Ascii.RS, 6, Ascii.SYN, Ascii.VT, 4, 25};
    private static final byte[] CIFP = {1, 2, 3, 4, 17, Ascii.DC2, 19, 20, 5, 6, 7, 8, Ascii.NAK, Ascii.SYN, 23, Ascii.CAN, 9, 10, Ascii.VT, Ascii.FF, 25, Ascii.SUB, Ascii.ESC, 28, 13, Ascii.SO, Ascii.SI, Ascii.DLE, Ascii.GS, Ascii.RS, 31, 32, 33, 34, 35, 36, 49, 50, 51, 52, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 40, 53, 54, 55, 56, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 42, 43, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.END_OF_CAPTION, 48, 61, 62, 63, SignedBytes.MAX_POWER_OF_TWO};
    private static final byte[] ITOA64 = {ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.END_OF_CAPTION, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static byte[] A64TOI = new byte[128];
    private static long[][] PC1ROT = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 16, 16);
    private static long[][][] PC2ROT = (long[][][]) Array.newInstance((Class<?>) Long.TYPE, 2, 16, 16);
    private static long[][] IE3264 = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 16);
    private static long[][] SPE = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 64);
    private static long[][] CF6464 = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 16, 16);

    static {
        long j;
        byte[] bArr = new byte[64];
        byte[] bArr2 = new byte[64];
        for (int i = 0; i < 64; i++) {
            A64TOI[ITOA64[i]] = (byte) i;
        }
        for (int i2 = 0; i2 < 64; i2++) {
            bArr[i2] = 0;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            byte b2 = PC2[i3];
            if (b2 != 0) {
                int i4 = b2 + (Rotates[0] - 1);
                if (i4 % 28 < Rotates[0]) {
                    i4 -= 28;
                }
                int i5 = PC1[i4];
                if (i5 > 0) {
                    int i6 = i5 - 1;
                    i5 = ((i6 | 7) - (i6 & 7)) + 1;
                }
                bArr[i3] = (byte) i5;
            }
        }
        init_perm(PC1ROT, bArr, 8);
        for (int i7 = 0; i7 < 2; i7++) {
            for (int i8 = 0; i8 < 64; i8++) {
                bArr2[i8] = 0;
                bArr[i8] = 0;
            }
            for (int i9 = 0; i9 < 64; i9++) {
                byte b3 = PC2[i9];
                if (b3 != 0) {
                    bArr2[b3 - 1] = (byte) (i9 + 1);
                }
            }
            for (int i10 = 0; i10 < 64; i10++) {
                byte b4 = PC2[i10];
                if (b4 != 0) {
                    int i11 = b4 + i7;
                    if (i11 % 28 <= i7) {
                        i11 -= 28;
                    }
                    bArr[i10] = bArr2[i11];
                }
            }
            init_perm(PC2ROT[i7], bArr, 8);
        }
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = 0;
            while (i13 < 8) {
                int i14 = i13 < 2 ? 0 : IP[ExpandTr[((i12 * 6) + i13) - 2] - 1];
                if (i14 > 32) {
                    i14 -= 32;
                } else if (i14 > 0) {
                    i14--;
                }
                if (i14 > 0) {
                    int i15 = i14 - 1;
                    i14 = ((i15 | 7) - (i15 & 7)) + 1;
                }
                bArr[(i12 * 8) + i13] = (byte) i14;
                i13++;
            }
        }
        init_perm(IE3264, bArr, 8);
        for (int i16 = 0; i16 < 64; i16++) {
            int i17 = IP[CIFP[i16] - 1];
            if (i17 > 0) {
                int i18 = i17 - 1;
                i17 = ((i18 | 7) - (i18 & 7)) + 1;
            }
            bArr[i17 - 1] = (byte) (i16 + 1);
        }
        init_perm(CF6464, bArr, 8);
        for (int i19 = 0; i19 < 48; i19++) {
            bArr[i19] = P32Tr[ExpandTr[i19] - 1];
        }
        for (int i20 = 0; i20 < 8; i20++) {
            for (int i21 = 0; i21 < 64; i21++) {
                byte b5 = S[i20][(((i21 >> 0) & 1) << 5) | (((i21 >> 1) & 1) << 3) | (((i21 >> 2) & 1) << 2) | (((i21 >> 3) & 1) << 1) | (((i21 >> 4) & 1) << 0) | (((i21 >> 5) & 1) << 4)];
                int i22 = (((b5 >> 3) & 1) << 0) | (((b5 >> 2) & 1) << 1) | (((b5 >> 1) & 1) << 2) | (((b5 >> 0) & 1) << 3);
                for (int i23 = 0; i23 < 32; i23++) {
                    bArr2[i23] = 0;
                }
                for (int i24 = 0; i24 < 4; i24++) {
                    bArr2[(i20 * 4) + i24] = (byte) ((i22 >> i24) & 1);
                }
                int i25 = 24;
                while (true) {
                    i25--;
                    j = i25 >= 0 ? (j << 1) | (((long) bArr2[bArr[i25] - 1]) << 32) | ((long) bArr2[bArr[i25 + 24] - 1]) : 0L;
                }
                SPE[i20][i21] = to_six_bit(j);
            }
        }
    }

    private UnixCrypt() {
    }

    private static int to_six_bit(int i) {
        return ((i << 26) & (-67108864)) | ((i << 12) & 16515072) | ((i >> 2) & 64512) | ((i >> 16) & 252);
    }

    private static long to_six_bit(long j) {
        return ((j << 26) & (-288230371923853312L)) | ((j << 12) & 70931694147600384L) | ((j >> 2) & 277076930264064L) | ((j >> 16) & 1082331758844L);
    }

    private static long perm6464(long j, long[][] jArr) {
        long j2 = 0;
        int i = 8;
        while (true) {
            i--;
            if (i >= 0) {
                int i2 = (int) (255 & j);
                j >>= 8;
                j2 = j2 | jArr[i << 1][i2 & 15] | jArr[(i << 1) + 1][i2 >> 4];
            } else {
                return j2;
            }
        }
    }

    private static long perm3264(int i, long[][] jArr) {
        long j = 0;
        int i2 = 4;
        while (true) {
            i2--;
            if (i2 >= 0) {
                int i3 = i & 255;
                i >>= 8;
                j = j | jArr[i2 << 1][i3 & 15] | jArr[(i2 << 1) + 1][i3 >> 4];
            } else {
                return j;
            }
        }
    }

    private static long[] des_setkey(long j) {
        long jPerm6464 = perm6464(j, PC1ROT);
        long[] jArr = new long[16];
        jArr[0] = jPerm6464 & (-217020518463700993L);
        for (int i = 1; i < 16; i++) {
            jArr[i] = jPerm6464;
            jPerm6464 = perm6464(jPerm6464, PC2ROT[Rotates[i] - 1]);
            jArr[i] = jPerm6464 & (-217020518463700993L);
        }
        return jArr;
    }

    private static long des_cipher(long j, int i, int i2, long[] jArr) {
        int i3 = to_six_bit(i);
        long j2 = 6148914691236517205L & j;
        long j3 = ((-6148914694099828736L) & j) | ((j >> 1) & 1431655765);
        long jPerm3264 = perm3264((int) (((((j2 << 32) | (j2 << 1)) & (-4294967296L)) | ((j3 | (j3 >> 32)) & 4294967295L)) >> 32), IE3264);
        long jPerm32642 = perm3264((int) ((-1) & jPerm3264), IE3264);
        while (true) {
            i2--;
            if (i2 >= 0) {
                for (int i4 = 0; i4 < 8; i4++) {
                    long j4 = ((jPerm32642 >> 32) ^ jPerm32642) & ((long) i3) & 4294967295L;
                    long j5 = jArr[i4 << 1] ^ ((j4 | (j4 << 32)) ^ jPerm32642);
                    jPerm3264 ^= SPE[7][(int) ((j5 >> 2) & 63)] ^ ((((((SPE[0][(int) ((j5 >> 58) & 63)] ^ SPE[1][(int) ((j5 >> 50) & 63)]) ^ SPE[2][(int) ((j5 >> 42) & 63)]) ^ SPE[3][(int) ((j5 >> 34) & 63)]) ^ SPE[4][(int) ((j5 >> 26) & 63)]) ^ SPE[5][(int) ((j5 >> 18) & 63)]) ^ SPE[6][(int) ((j5 >> 10) & 63)]);
                    long j6 = ((jPerm3264 >> 32) ^ jPerm3264) & ((long) i3) & 4294967295L;
                    long j7 = jArr[(i4 << 1) + 1] ^ ((j6 | (j6 << 32)) ^ jPerm3264);
                    jPerm32642 ^= SPE[7][(int) ((j7 >> 2) & 63)] ^ ((((((SPE[0][(int) ((j7 >> 58) & 63)] ^ SPE[1][(int) ((j7 >> 50) & 63)]) ^ SPE[2][(int) ((j7 >> 42) & 63)]) ^ SPE[3][(int) ((j7 >> 34) & 63)]) ^ SPE[4][(int) ((j7 >> 26) & 63)]) ^ SPE[5][(int) ((j7 >> 18) & 63)]) ^ SPE[6][(int) ((j7 >> 10) & 63)]);
                }
                long j8 = jPerm3264 ^ jPerm32642;
                jPerm32642 ^= j8;
                jPerm3264 = j8 ^ jPerm32642;
            } else {
                return perm6464(((((jPerm3264 >> 35) & 252645135) | (((jPerm3264 & (-1)) << 1) & 4042322160L)) << 32) | (((jPerm32642 & (-1)) << 1) & 4042322160L) | ((jPerm32642 >> 35) & 252645135), CF6464);
            }
        }
    }

    private static void init_perm(long[][] jArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 < i * 8; i2++) {
            int i3 = bArr[i2] - 1;
            if (i3 >= 0) {
                int i4 = i3 >> 2;
                int i5 = 1 << (i3 & 3);
                for (int i6 = 0; i6 < 16; i6++) {
                    int i7 = (i2 & 7) + ((7 - (i2 >> 3)) << 3);
                    if ((i6 & i5) != 0) {
                        long[] jArr2 = jArr[i4];
                        jArr2[i6] = jArr2[i6] | (1 << i7);
                    }
                }
            }
        }
    }

    public static String crypt(String str, String str2) {
        byte[] bArr = new byte[13];
        long jCharAt = 0;
        if (str == null || str2 == null) {
            return "*";
        }
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 8) {
                break;
            }
            jCharAt = (jCharAt << 8) | ((long) (i2 < length ? str.charAt(i2) * 2 : 0));
            i = i2 + 1;
        }
        long[] jArrDes_setkey = des_setkey(jCharAt);
        int i3 = 2;
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i5 < 0) {
                break;
            }
            char cCharAt = i5 < str2.length() ? str2.charAt(i5) : '.';
            bArr[i5] = (byte) cCharAt;
            i4 = (A64TOI[cCharAt] & UnsignedBytes.MAX_VALUE) | (i4 << 6);
            i3 = i5;
        }
        long jDes_cipher = des_cipher(0L, i4, 25, jArrDes_setkey);
        bArr[12] = ITOA64[(((int) jDes_cipher) << 2) & 63];
        long j = jDes_cipher >> 4;
        int i6 = 12;
        while (true) {
            i6--;
            if (i6 >= 2) {
                bArr[i6] = ITOA64[((int) j) & 63];
                j >>= 6;
            } else {
                return new String(bArr, 0, 0, 13);
            }
        }
    }

    public static void main(String[] strArr) {
        if (strArr.length != 2) {
            System.err.println("Usage - java org.mortbay.util.UnixCrypt <key> <salt>");
            System.exit(1);
        }
        System.err.println(new StringBuffer().append("Crypt=").append(crypt(strArr[0], strArr[1])).toString());
    }
}
