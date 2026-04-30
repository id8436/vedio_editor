package org.mortbay.jetty.security;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import java.io.UnsupportedEncodingException;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class B64Code {
    static byte[] code2nibble = null;
    static final char[] nibble2code = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', '+', IOUtils.DIR_SEPARATOR_UNIX};
    static final char pad = '=';

    static {
        code2nibble = null;
        code2nibble = new byte[256];
        for (int i = 0; i < 256; i++) {
            code2nibble[i] = -1;
        }
        for (byte b2 = 0; b2 < 64; b2 = (byte) (b2 + 1)) {
            code2nibble[(byte) nibble2code[b2]] = b2;
        }
        code2nibble[61] = 0;
    }

    public static String encode(String str) {
        try {
            return encode(str, null);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        if (str2 == null) {
            bytes = str.getBytes(StringUtil.__ISO_8859_1);
        } else {
            bytes = str.getBytes(str2);
        }
        return new String(encode(bytes));
    }

    public static char[] encode(byte[] bArr) {
        int i = 0;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i2 = (length / 3) * 3;
        int i3 = 0;
        while (i < i2) {
            int i4 = i + 1;
            byte b2 = bArr[i];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            i = i5 + 1;
            byte b4 = bArr[i5];
            int i6 = i3 + 1;
            cArr[i3] = nibble2code[(b2 >>> 2) & 63];
            int i7 = i6 + 1;
            cArr[i6] = nibble2code[((b2 << 4) & 63) | ((b3 >>> 4) & 15)];
            int i8 = i7 + 1;
            cArr[i7] = nibble2code[((b3 << 2) & 63) | ((b4 >>> 6) & 3)];
            i3 = i8 + 1;
            cArr[i8] = nibble2code[b4 & 63];
        }
        if (length != i) {
            switch (length % 3) {
                case 1:
                    int i9 = i + 1;
                    byte b5 = bArr[i];
                    int i10 = i3 + 1;
                    cArr[i3] = nibble2code[(b5 >>> 2) & 63];
                    int i11 = i10 + 1;
                    cArr[i10] = nibble2code[(b5 << 4) & 63];
                    int i12 = i11 + 1;
                    cArr[i11] = pad;
                    int i13 = i12 + 1;
                    cArr[i12] = pad;
                    break;
                case 2:
                    int i14 = i + 1;
                    byte b6 = bArr[i];
                    int i15 = i14 + 1;
                    byte b7 = bArr[i14];
                    int i16 = i3 + 1;
                    cArr[i3] = nibble2code[(b6 >>> 2) & 63];
                    int i17 = i16 + 1;
                    cArr[i16] = nibble2code[((b6 << 4) & 63) | ((b7 >>> 4) & 15)];
                    int i18 = i17 + 1;
                    cArr[i17] = nibble2code[(b7 << 2) & 63];
                    int i19 = i18 + 1;
                    cArr[i18] = pad;
                    break;
            }
            return cArr;
        }
        return cArr;
    }

    public static String decode(String str) {
        try {
            return decode(str, StringUtil.__ISO_8859_1);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    public static String decode(String str, String str2) throws UnsupportedEncodingException {
        byte[] bArrDecode = decode(str.toCharArray());
        return str2 == null ? new String(bArrDecode) : new String(bArrDecode, str2);
    }

    public static byte[] decode(char[] cArr) {
        int i;
        int i2 = 0;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Input block size is not 4");
        }
        int i3 = length - 1;
        while (i3 >= 0 && cArr[i3] == '=') {
            i3--;
        }
        if (i3 < 0) {
            return new byte[0];
        }
        int i4 = ((i3 + 1) * 3) / 4;
        byte[] bArr = new byte[i4];
        int i5 = (i4 / 3) * 3;
        int i6 = 0;
        while (i6 < i5) {
            try {
                int i7 = i2 + 1;
                try {
                    byte b2 = code2nibble[cArr[i2]];
                    int i8 = i7 + 1;
                    byte b3 = code2nibble[cArr[i7]];
                    int i9 = i8 + 1;
                    byte b4 = code2nibble[cArr[i8]];
                    i2 = i9 + 1;
                    byte b5 = code2nibble[cArr[i9]];
                    if (b2 < 0 || b3 < 0 || b4 < 0 || b5 < 0) {
                        throw new IllegalArgumentException("Not B64 encoded");
                    }
                    int i10 = i6 + 1;
                    bArr[i6] = (byte) ((b2 << 2) | (b3 >>> 4));
                    int i11 = i10 + 1;
                    bArr[i10] = (byte) ((b3 << 4) | (b4 >>> 2));
                    bArr[i11] = (byte) ((b4 << 6) | b5);
                    i6 = i11 + 1;
                } catch (IndexOutOfBoundsException e2) {
                    i = i7;
                }
            } catch (IndexOutOfBoundsException e3) {
                i = i2;
            }
        }
        if (i4 != i6) {
            switch (i4 % 3) {
                case 1:
                    int i12 = i2 + 1;
                    byte b6 = code2nibble[cArr[i2]];
                    int i13 = i12 + 1;
                    byte b7 = code2nibble[cArr[i12]];
                    if (b6 < 0 || b7 < 0) {
                        throw new IllegalArgumentException("Not B64 encoded");
                    }
                    int i14 = i6 + 1;
                    bArr[i6] = (byte) ((b7 >>> 4) | (b6 << 2));
                    return bArr;
                case 2:
                    int i15 = i2 + 1;
                    try {
                        byte b8 = code2nibble[cArr[i2]];
                        int i16 = i15 + 1;
                        byte b9 = code2nibble[cArr[i15]];
                        int i17 = i16 + 1;
                        byte b10 = code2nibble[cArr[i16]];
                        if (b8 < 0 || b9 < 0 || b10 < 0) {
                            throw new IllegalArgumentException("Not B64 encoded");
                        }
                        int i18 = i6 + 1;
                        bArr[i6] = (byte) ((b8 << 2) | (b9 >>> 4));
                        int i19 = i18 + 1;
                        bArr[i18] = (byte) ((b10 >>> 2) | (b9 << 4));
                        return bArr;
                    } catch (IndexOutOfBoundsException e4) {
                        i = i15;
                    }
                    break;
                default:
                    return bArr;
            }
            throw new IllegalArgumentException(new StringBuffer().append("char ").append(i).append(" was not B64 encoded").toString());
        }
        return bArr;
    }
}
