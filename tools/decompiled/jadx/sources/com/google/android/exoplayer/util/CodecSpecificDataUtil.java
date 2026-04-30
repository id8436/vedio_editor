package com.google.android.exoplayer.util;

import android.annotation.SuppressLint;
import android.util.Pair;
import com.google.common.primitives.UnsignedBytes;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class CodecSpecificDataUtil {
    private static final int SPS_NAL_UNIT_TYPE = 7;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8};

    private CodecSpecificDataUtil() {
    }

    public static Pair<Integer, Integer> parseAudioSpecificConfig(byte[] bArr) {
        int i = (bArr[0] >> 3) & 31;
        int i2 = (i == 5 || i == 29) ? 1 : 0;
        int i3 = ((bArr[i2] & 7) << 1) | ((bArr[i2 + 1] >> 7) & 1);
        Assertions.checkState(i3 < 13);
        return Pair.create(Integer.valueOf(AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[i3]), Integer.valueOf((bArr[i2 + 1] >> 3) & 15));
    }

    public static byte[] buildAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildAudioSpecificConfig(int i, int i2) {
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE.length; i5++) {
            if (i == AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[i5]) {
                i4 = i5;
            }
        }
        for (int i6 = 0; i6 < AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE.length; i6++) {
            if (i2 == AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[i6]) {
                i3 = i6;
            }
        }
        return new byte[]{(byte) ((i4 >> 1) | 16), (byte) (((i4 & 1) << 7) | (i3 << 3))};
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[NAL_START_CODE.length + i2];
        System.arraycopy(NAL_START_CODE, 0, bArr2, 0, NAL_START_CODE.length);
        System.arraycopy(bArr, i, bArr2, NAL_START_CODE.length, i2);
        return bArr2;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return (byte[][]) null;
        }
        ArrayList arrayList = new ArrayList();
        int iFindNalStartCode = 0;
        do {
            arrayList.add(Integer.valueOf(iFindNalStartCode));
            iFindNalStartCode = findNalStartCode(bArr, iFindNalStartCode + NAL_START_CODE.length);
        } while (iFindNalStartCode != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i = 0;
        while (i < arrayList.size()) {
            int iIntValue = ((Integer) arrayList.get(i)).intValue();
            byte[] bArr3 = new byte[(i < arrayList.size() + (-1) ? ((Integer) arrayList.get(i + 1)).intValue() : bArr.length) - iIntValue];
            System.arraycopy(bArr, iIntValue, bArr3, 0, bArr3.length);
            bArr2[i] = bArr3;
            i++;
        }
        return bArr2;
    }

    private static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length - NAL_START_CODE.length;
        for (int i2 = i; i2 <= length; i2++) {
            if (isNalStartCode(bArr, i2)) {
                return i2;
            }
        }
        return -1;
    }

    private static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        for (int i2 = 0; i2 < NAL_START_CODE.length; i2++) {
            if (bArr[i + i2] != NAL_START_CODE[i2]) {
                return false;
            }
        }
        return true;
    }

    public static Pair<Integer, Integer> parseSpsNalUnit(byte[] bArr) {
        if (isNalStartCode(bArr, 0) && bArr.length == 8 && (bArr[5] & 31) == 7) {
            return Pair.create(Integer.valueOf(parseAvcProfile(bArr)), Integer.valueOf(parseAvcLevel(bArr)));
        }
        return null;
    }

    @SuppressLint({"InlinedApi"})
    private static int parseAvcProfile(byte[] bArr) {
        switch (bArr[6] & UnsignedBytes.MAX_VALUE) {
            case 66:
                return 1;
            case 77:
                return 2;
            case 88:
                return 4;
            case 100:
                return 8;
            case 110:
                return 16;
            case 122:
                return 32;
            case 244:
                return 64;
            default:
                return 0;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static int parseAvcLevel(byte[] bArr) {
        switch (bArr[8] & UnsignedBytes.MAX_VALUE) {
            case 9:
                return 2;
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            case 20:
                return 32;
            case 21:
                return 64;
            case 22:
                return 128;
            case 30:
                return 256;
            case 31:
                return 512;
            case 32:
                return 1024;
            case 40:
                return 2048;
            case 41:
                return 4096;
            case 42:
                return 8192;
            case 50:
                return 16384;
            case 51:
                return 32768;
            default:
                return 0;
        }
    }
}
