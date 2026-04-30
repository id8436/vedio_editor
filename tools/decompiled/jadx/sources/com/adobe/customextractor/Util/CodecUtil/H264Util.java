package com.adobe.customextractor.Util.CodecUtil;

import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class H264Util {
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};

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
        parsableByteArray.skipBytes(unsignedShort);
        return CodecSpecificDataUtil.buildNalUnit(parsableByteArray.data, position, unsignedShort);
    }

    public static int getNalUnitType(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    public static int findNalUnit(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        Assertions.checkState(i3 >= 0);
        if (i3 != 0) {
            if (zArr != null) {
                if (zArr[0]) {
                    clearPrefixFlags(zArr);
                    return i - 3;
                }
                if (i3 > 1 && zArr[1] && bArr[i] == 1) {
                    clearPrefixFlags(zArr);
                    return i - 2;
                }
                if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
                    clearPrefixFlags(zArr);
                    return i - 1;
                }
            }
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                if ((bArr[i5] & 254) == 0) {
                    if (bArr[i5 - 2] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                        if (zArr != null) {
                            clearPrefixFlags(zArr);
                        }
                        return i5 - 2;
                    }
                    i5 -= 2;
                }
                i5 += 3;
            }
            if (zArr != null) {
                zArr[0] = i3 > 2 ? bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : i3 == 2 ? zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : zArr[1] && bArr[i2 + (-1)] == 1;
                zArr[1] = i3 > 1 ? bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 0 : zArr[2] && bArr[i2 + (-1)] == 0;
                zArr[2] = bArr[i2 + (-1)] == 0;
                return i2;
            }
            return i2;
        }
        return i2;
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static int readUnsignedIntToInt(ByteBuffer byteBuffer) {
        int i = byteBuffer.get() & UnsignedBytes.MAX_VALUE;
        for (int i2 = 1; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get() & UnsignedBytes.MAX_VALUE);
        }
        if (i < 0) {
            throw new IllegalArgumentException("Top bit not zero: " + i);
        }
        return i;
    }

    private H264Util() {
    }
}
