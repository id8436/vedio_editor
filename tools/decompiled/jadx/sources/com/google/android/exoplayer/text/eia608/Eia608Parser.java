package com.google.android.exoplayer.text.eia608;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.common.base.Ascii;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Eia608Parser {
    private static final int COUNTRY_CODE = 181;
    private static final int PAYLOAD_TYPE_CC = 4;
    private static final int PROVIDER_CODE = 49;
    private static final int USER_DATA_TYPE_CODE = 3;
    private static final int USER_ID = 1195456820;
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private final ParsableBitArray seiBuffer = new ParsableBitArray();
    private final StringBuilder stringBuilder = new StringBuilder();
    private final ArrayList<ClosedCaption> captions = new ArrayList<>();

    Eia608Parser() {
    }

    boolean canParse(String str) {
        return str.equals("application/eia-608");
    }

    ClosedCaptionList parse(SampleHolder sampleHolder) {
        if (sampleHolder.size < 10) {
            return null;
        }
        this.captions.clear();
        this.stringBuilder.setLength(0);
        this.seiBuffer.reset(sampleHolder.data.array());
        this.seiBuffer.skipBits(67);
        int bits = this.seiBuffer.readBits(5);
        this.seiBuffer.skipBits(8);
        for (int i = 0; i < bits; i++) {
            this.seiBuffer.skipBits(5);
            if (!this.seiBuffer.readBit()) {
                this.seiBuffer.skipBits(18);
            } else if (this.seiBuffer.readBits(2) != 0) {
                this.seiBuffer.skipBits(16);
            } else {
                this.seiBuffer.skipBits(1);
                byte bits2 = (byte) this.seiBuffer.readBits(7);
                this.seiBuffer.skipBits(1);
                byte bits3 = (byte) this.seiBuffer.readBits(7);
                if (bits2 != 0 || bits3 != 0) {
                    if (bits2 == 17 && (bits3 & 112) == 48) {
                        this.stringBuilder.append(getSpecialChar(bits3));
                    } else if (bits2 < 32) {
                        if (this.stringBuilder.length() > 0) {
                            this.captions.add(new ClosedCaptionText(this.stringBuilder.toString()));
                            this.stringBuilder.setLength(0);
                        }
                        this.captions.add(new ClosedCaptionCtrl(bits2, bits3));
                    } else {
                        this.stringBuilder.append(getChar(bits2));
                        if (bits3 != 0) {
                            this.stringBuilder.append(getChar(bits3));
                        }
                    }
                }
            }
        }
        if (this.stringBuilder.length() > 0) {
            this.captions.add(new ClosedCaptionText(this.stringBuilder.toString()));
        }
        if (this.captions.isEmpty()) {
            return null;
        }
        ClosedCaption[] closedCaptionArr = new ClosedCaption[this.captions.size()];
        this.captions.toArray(closedCaptionArr);
        return new ClosedCaptionList(sampleHolder.timeUs, sampleHolder.decodeOnly, closedCaptionArr);
    }

    private static char getChar(byte b2) {
        return (char) BASIC_CHARACTER_SET[(b2 & Ascii.DEL) - 32];
    }

    private static char getSpecialChar(byte b2) {
        return (char) SPECIAL_CHARACTER_SET[b2 & Ascii.SI];
    }

    public static boolean inspectSeiMessage(int i, int i2, ParsableByteArray parsableByteArray) {
        if (i != 4 || i2 < 8) {
            return false;
        }
        int position = parsableByteArray.getPosition();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int i3 = parsableByteArray.readInt();
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(position);
        return unsignedByte == COUNTRY_CODE && unsignedShort == 49 && i3 == USER_ID && unsignedByte2 == 3;
    }
}
