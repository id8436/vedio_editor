package com.google.android.exoplayer.mp4;

import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class Mp4Util {
    public static final int ATOM_HEADER_SIZE = 8;
    public static final int FULL_ATOM_HEADER_SIZE = 12;
    public static final int LONG_ATOM_HEADER_SIZE = 16;
    public static final int LONG_ATOM_SIZE = 1;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final int NO_SAMPLE = -1;
    public static final int NO_TRACK = -1;

    public static int parseFullAtomVersion(int i) {
        return (i >> 24) & 255;
    }

    public static int parseFullAtomFlags(int i) {
        return 16777215 & i;
    }

    public static int readUnsignedIntToInt(ByteBuffer byteBuffer) {
        int i = byteBuffer.get() & UnsignedBytes.MAX_VALUE;
        for (int i2 = 1; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get() & UnsignedBytes.MAX_VALUE);
        }
        if (i < 0) {
            throw new IllegalArgumentException("Top bit not zero: " + i);
        }
        return i;
    }

    public static void replaceLengthPrefixesWithAvcStartCodes(ByteBuffer byteBuffer, int i) {
        int iPosition = byteBuffer.position() - i;
        int i2 = iPosition;
        while (i2 < iPosition + i) {
            byteBuffer.position(i2);
            int unsignedIntToInt = readUnsignedIntToInt(byteBuffer);
            byteBuffer.position(i2);
            byteBuffer.put(NAL_START_CODE);
            i2 += unsignedIntToInt + 4;
        }
        byteBuffer.position(iPosition + i);
    }

    public static byte[] parseChildNalUnit(ParsableByteArray parsableByteArray) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skip(unsignedShort);
        return CodecSpecificDataUtil.buildNalUnit(parsableByteArray.data, position, unsignedShort);
    }

    public static int findNalUnit(byte[] bArr, int i, int i2, int i3) {
        return findNalUnit(bArr, i, i2, i3, null);
    }

    public static int findNalUnit(byte[] bArr, int i, int i2, int i3, boolean[] zArr) {
        int i4 = i2 - i;
        Assertions.checkState(i4 >= 0);
        if (i4 != 0) {
            if (zArr != null) {
                if (zArr[0] && matchesType(bArr, i, i3)) {
                    clearPrefixFlags(zArr);
                    return i - 3;
                }
                if (i4 > 1 && zArr[1] && bArr[i] == 1 && matchesType(bArr, i + 1, i3)) {
                    clearPrefixFlags(zArr);
                    return i - 2;
                }
                if (i4 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1 && matchesType(bArr, i + 2, i3)) {
                    clearPrefixFlags(zArr);
                    return i - 1;
                }
            }
            int i5 = i2 - 1;
            int i6 = i + 2;
            while (i6 < i5) {
                if ((bArr[i6] & 254) == 0) {
                    if (bArr[i6 - 2] == 0 && bArr[i6 - 1] == 0 && bArr[i6] == 1 && matchesType(bArr, i6 + 1, i3)) {
                        if (zArr != null) {
                            clearPrefixFlags(zArr);
                        }
                        return i6 - 2;
                    }
                    i6 -= 2;
                }
                i6 += 3;
            }
            if (zArr != null) {
                zArr[0] = i4 > 2 ? bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : i4 == 2 ? zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : zArr[1] && bArr[i2 + (-1)] == 1;
                zArr[1] = i4 > 1 ? bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 0 : zArr[2] && bArr[i2 + (-1)] == 0;
                zArr[2] = bArr[i2 + (-1)] == 0;
                return i2;
            }
            return i2;
        }
        return i2;
    }

    public static int findNalUnit(byte[] bArr, int i, int i2) {
        return findNalUnit(bArr, i, i2, (boolean[]) null);
    }

    public static int findNalUnit(byte[] bArr, int i, int i2, boolean[] zArr) {
        return findNalUnit(bArr, i, i2, -1, zArr);
    }

    public static int getNalUnitType(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    private static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static boolean matchesType(byte[] bArr, int i, int i2) {
        return i2 == -1 || (bArr[i] & 31) == i2;
    }
}
