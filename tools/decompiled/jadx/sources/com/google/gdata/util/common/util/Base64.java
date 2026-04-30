package com.google.gdata.util.common.util;

import android.support.v7.widget.ActivityChooserView;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.base.Ascii;
import org.mortbay.jetty.HttpTokens;

/* JADX INFO: loaded from: classes3.dex */
public class Base64 {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final byte[] ALPHABET;
    private static final byte[] DECODABET;
    public static final boolean DECODE = false;
    public static final boolean ENCODE = true;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final byte NEW_LINE = 10;
    public static final byte[] WEBSAFE_ALPHABET;
    private static final byte[] WEBSAFE_DECODABET;
    private static final byte WHITE_SPACE_ENC = -5;

    static {
        $assertionsDisabled = !Base64.class.desiredAssertionStatus();
        ALPHABET = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, ClosedCaptionCtrl.END_OF_CAPTION};
        WEBSAFE_ALPHABET = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, ClosedCaptionCtrl.CARRIAGE_RETURN, 95};
        DECODABET = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, 20, Ascii.NAK, Ascii.SYN, 23, Ascii.CAN, 25, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, 28, Ascii.GS, Ascii.RS, 31, 32, 33, 34, 35, 36, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 40, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 42, 43, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.END_OF_CAPTION, 48, 49, 50, 51, -9, -9, -9, -9, -9};
        WEBSAFE_DECODABET = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, 20, Ascii.NAK, Ascii.SYN, 23, Ascii.CAN, 25, -9, -9, -9, -9, 63, -9, Ascii.SUB, Ascii.ESC, 28, Ascii.GS, Ascii.RS, 31, 32, 33, 34, 35, 36, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS, ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS, 40, ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING, 42, 43, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.ERASE_NON_DISPLAYED_MEMORY, ClosedCaptionCtrl.END_OF_CAPTION, 48, 49, 50, 51, -9, -9, -9, -9, -9};
    }

    private Base64() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static byte[] encode3to4(byte[] bArr, int i, int i2, byte[] bArr2, int i3, byte[] bArr3) {
        int i4 = (i2 > 2 ? (bArr[i + 2] << Ascii.CAN) >>> 24 : 0) | (i2 > 1 ? (bArr[i + 1] << Ascii.CAN) >>> 16 : 0) | (i2 > 0 ? (bArr[i] << Ascii.CAN) >>> 8 : 0);
        switch (i2) {
            case 1:
                bArr2[i3] = bArr3[i4 >>> 18];
                bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = EQUALS_SIGN;
                bArr2[i3 + 3] = EQUALS_SIGN;
                return bArr2;
            case 2:
                bArr2[i3] = bArr3[i4 >>> 18];
                bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = bArr3[(i4 >>> 6) & 63];
                bArr2[i3 + 3] = EQUALS_SIGN;
                return bArr2;
            case 3:
                bArr2[i3] = bArr3[i4 >>> 18];
                bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = bArr3[(i4 >>> 6) & 63];
                bArr2[i3 + 3] = bArr3[i4 & 63];
                return bArr2;
            default:
                return bArr2;
        }
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length, ALPHABET, true);
    }

    public static String encodeWebSafe(byte[] bArr, boolean z) {
        return encode(bArr, 0, bArr.length, WEBSAFE_ALPHABET, z);
    }

    public static String encode(byte[] bArr, int i, int i2, byte[] bArr2, boolean z) {
        byte[] bArrEncode = encode(bArr, i, i2, bArr2, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        int length = bArrEncode.length;
        while (!z && length > 0 && bArrEncode[length - 1] == 61) {
            length--;
        }
        return new String(bArrEncode, 0, length);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = ((i2 + 2) / 3) * 4;
        byte[] bArr3 = new byte[i4 + (i4 / i3)];
        int i5 = i2 - 2;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i8 < i5) {
            int i9 = ((bArr[i8 + i] << Ascii.CAN) >>> 8) | ((bArr[(i8 + 1) + i] << Ascii.CAN) >>> 16) | ((bArr[(i8 + 2) + i] << Ascii.CAN) >>> 24);
            bArr3[i7] = bArr2[i9 >>> 18];
            bArr3[i7 + 1] = bArr2[(i9 >>> 12) & 63];
            bArr3[i7 + 2] = bArr2[(i9 >>> 6) & 63];
            bArr3[i7 + 3] = bArr2[i9 & 63];
            int i10 = i6 + 4;
            if (i10 == i3) {
                bArr3[i7 + 4] = 10;
                i7++;
                i10 = 0;
            }
            i8 += 3;
            i7 += 4;
            i6 = i10;
        }
        if (i8 < i2) {
            encode3to4(bArr, i8 + i, i2 - i8, bArr3, i7, bArr2);
            if (i6 + 4 == i3) {
                bArr3[i7 + 4] = 10;
                i7++;
            }
            i7 += 4;
        }
        if ($assertionsDisabled || i7 == bArr3.length) {
            return bArr3;
        }
        throw new AssertionError();
    }

    private static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        if (bArr[i + 2] == 61) {
            bArr2[i2] = (byte) ((((bArr3[bArr[i]] << Ascii.CAN) >>> 6) | ((bArr3[bArr[i + 1]] << Ascii.CAN) >>> 12)) >>> 16);
            return 1;
        }
        if (bArr[i + 3] == 61) {
            int i3 = ((bArr3[bArr[i]] << Ascii.CAN) >>> 6) | ((bArr3[bArr[i + 1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[i + 2]] << Ascii.CAN) >>> 18);
            bArr2[i2] = (byte) (i3 >>> 16);
            bArr2[i2 + 1] = (byte) (i3 >>> 8);
            return 2;
        }
        int i4 = ((bArr3[bArr[i]] << Ascii.CAN) >>> 6) | ((bArr3[bArr[i + 1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[i + 2]] << Ascii.CAN) >>> 18) | ((bArr3[bArr[i + 3]] << Ascii.CAN) >>> 24);
        bArr2[i2] = (byte) (i4 >> 16);
        bArr2[i2 + 1] = (byte) (i4 >> 8);
        bArr2[i2 + 2] = (byte) i4;
        return 3;
    }

    public static byte[] decode(String str) throws Base64DecoderException {
        byte[] bytes = str.getBytes();
        return decode(bytes, 0, bytes.length);
    }

    public static byte[] decodeWebSafe(String str) throws Base64DecoderException {
        byte[] bytes = str.getBytes();
        return decodeWebSafe(bytes, 0, bytes.length);
    }

    public static byte[] decode(byte[] bArr) throws Base64DecoderException {
        return decode(bArr, 0, bArr.length);
    }

    public static byte[] decodeWebSafe(byte[] bArr) throws Base64DecoderException {
        return decodeWebSafe(bArr, 0, bArr.length);
    }

    public static byte[] decode(byte[] bArr, int i, int i2) throws Base64DecoderException {
        return decode(bArr, i, i2, DECODABET);
    }

    public static byte[] decodeWebSafe(byte[] bArr, int i, int i2) throws Base64DecoderException {
        return decode(bArr, i, i2, WEBSAFE_DECODABET);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, byte[] bArr2) throws Base64DecoderException {
        int i3;
        int iDecode4to3;
        byte[] bArr3 = new byte[((i2 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i4 = 0;
        int i5 = 0;
        int iDecode4to32 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            byte b2 = (byte) (bArr[i4 + i] & Ascii.DEL);
            byte b3 = bArr2[b2];
            if (b3 >= -5) {
                if (b3 < -1) {
                    i3 = i5;
                    iDecode4to3 = iDecode4to32;
                } else if (b2 == 61) {
                    int i6 = i2 - i4;
                    byte b4 = (byte) (bArr[(i2 - 1) + i] & Ascii.DEL);
                    if (i5 == 0 || i5 == 1) {
                        throw new Base64DecoderException("invalid padding byte '=' at byte offset " + i4);
                    }
                    if ((i5 == 3 && i6 > 2) || (i5 == 4 && i6 > 1)) {
                        throw new Base64DecoderException("padding byte '=' falsely signals end of encoded value at offset " + i4);
                    }
                    if (b4 != 61 && b4 != 10) {
                        throw new Base64DecoderException("encoded value has invalid trailing byte");
                    }
                } else {
                    i3 = i5 + 1;
                    bArr4[i5] = b2;
                    if (i3 == 4) {
                        iDecode4to3 = decode4to3(bArr4, 0, bArr3, iDecode4to32, bArr2) + iDecode4to32;
                        i3 = 0;
                    } else {
                        iDecode4to3 = iDecode4to32;
                    }
                }
                i4++;
                iDecode4to32 = iDecode4to3;
                i5 = i3;
            } else {
                throw new Base64DecoderException("Bad Base64 input character at " + i4 + ": " + ((int) bArr[i4 + i]) + "(decimal)");
            }
        }
        if (i5 != 0) {
            if (i5 == 1) {
                throw new Base64DecoderException("single trailing character at offset " + (i2 - 1));
            }
            int i7 = i5 + 1;
            bArr4[i5] = EQUALS_SIGN;
            iDecode4to32 += decode4to3(bArr4, 0, bArr3, iDecode4to32, bArr2);
        }
        byte[] bArr5 = new byte[iDecode4to32];
        System.arraycopy(bArr3, 0, bArr5, 0, iDecode4to32);
        return bArr5;
    }
}
