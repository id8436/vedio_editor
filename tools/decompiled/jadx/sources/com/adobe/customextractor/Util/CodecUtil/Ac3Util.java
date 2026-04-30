package com.adobe.customextractor.Util.CodecUtil;

import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.ParsableBitArray;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.premiereclip.project.sequence.Sequence;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class Ac3Util {
    private static final int[] SAMPLE_RATES = {48000, 44100, 32000};
    private static final int[] CHANNEL_COUNTS = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] BITRATES = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, Sequence.PLAYBACK_WIDTH};
    private static final int[] FRMSIZECOD_TO_FRAME_SIZE_44_1 = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static MediaFormat parseAnnexFAc3Format(ParsableByteArray parsableByteArray) {
        int i = SAMPLE_RATES[(parsableByteArray.readUnsignedByte() & 192) >> 6];
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = CHANNEL_COUNTS[(unsignedByte & 56) >> 3];
        if ((unsignedByte & 4) != 0) {
            i2++;
        }
        return MediaFormat.createAudioFormat("audio/ac3", -1, -1L, i2, i, Collections.emptyList());
    }

    public static MediaFormat parseAnnexFEAc3Format(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(2);
        int i = SAMPLE_RATES[(parsableByteArray.readUnsignedByte() & 192) >> 6];
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = CHANNEL_COUNTS[(unsignedByte & 14) >> 1];
        if ((unsignedByte & 1) != 0) {
            i2++;
        }
        return MediaFormat.createAudioFormat("audio/eac3", -1, i2, i, Collections.emptyList());
    }

    public static MediaFormat parseFrameAc3Format(ParsableBitArray parsableBitArray) {
        parsableBitArray.skipBits(32);
        int bits = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(14);
        int bits2 = parsableBitArray.readBits(3);
        if ((bits2 & 1) != 0 && bits2 != 1) {
            parsableBitArray.skipBits(2);
        }
        if ((bits2 & 4) != 0) {
            parsableBitArray.skipBits(2);
        }
        if (bits2 == 2) {
            parsableBitArray.skipBits(2);
        }
        boolean bit = parsableBitArray.readBit();
        return MediaFormat.createAudioFormat("audio/ac3", -1, -1L, (bit ? 1 : 0) + CHANNEL_COUNTS[bits2], SAMPLE_RATES[bits], Collections.emptyList());
    }

    public static int parseFrameSize(ParsableBitArray parsableBitArray) {
        parsableBitArray.skipBits(32);
        int bits = parsableBitArray.readBits(2);
        int bits2 = parsableBitArray.readBits(6);
        int i = SAMPLE_RATES[bits];
        int i2 = BITRATES[bits2 / 2];
        if (i == 32000) {
            return i2 * 6;
        }
        if (i == 44100) {
            return (FRMSIZECOD_TO_FRAME_SIZE_44_1[bits2 / 2] + (bits2 % 2)) * 2;
        }
        return i2 * 4;
    }

    public static int getBitrate(int i, int i2) {
        return (((i * 8) * i2) + 768000) / 1536000;
    }

    private Ac3Util() {
    }
}
