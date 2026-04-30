package com.dropbox.core.util;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtil {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String Base64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    private static final char[] HexDigits;
    public static final Charset UTF8;
    public static final String UrlSafeBase64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

    static {
        $assertionsDisabled = !StringUtil.class.desiredAssertionStatus();
        UTF8 = Charset.forName("UTF-8");
        HexDigits = new char[]{'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        if (!$assertionsDisabled && Base64Digits.length() != 64) {
            throw new AssertionError(Base64Digits.length());
        }
        if (!$assertionsDisabled && UrlSafeBase64Digits.length() != 64) {
            throw new AssertionError(UrlSafeBase64Digits.length());
        }
    }

    public static char hexDigit(int i) {
        return HexDigits[i];
    }

    public static String utf8ToString(byte[] bArr) throws CharacterCodingException {
        return utf8ToString(bArr, 0, bArr.length);
    }

    public static String utf8ToString(byte[] bArr, int i, int i2) throws CharacterCodingException {
        return UTF8.newDecoder().decode(ByteBuffer.wrap(bArr, i, i2)).toString();
    }

    public static byte[] stringToUtf8(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e2);
        }
    }

    public static String javaQuotedLiteral(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        sb.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 0:
                    sb.append("\\000");
                    break;
                case '\t':
                    sb.append("\\r");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\t");
                    break;
                case '\"':
                    sb.append("\\\"");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                default:
                    if (cCharAt >= ' ' && cCharAt <= '~') {
                        sb.append(cCharAt);
                    } else {
                        sb.append("\\u");
                        sb.append(hexDigit((cCharAt >> '\f') & 15));
                        sb.append(hexDigit((cCharAt >> '\b') & 15));
                        sb.append(hexDigit((cCharAt >> 4) & 15));
                        sb.append(hexDigit(cCharAt & 15));
                    }
                    break;
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static String jq(String str) {
        return javaQuotedLiteral(str);
    }

    public static String binaryToHex(byte[] bArr) {
        return binaryToHex(bArr, 0, bArr.length);
    }

    public static String binaryToHex(byte[] bArr, int i, int i2) {
        if (!$assertionsDisabled && (i >= bArr.length || i < 0)) {
            throw new AssertionError(i + ", " + bArr.length);
        }
        int i3 = i + i2;
        if (!$assertionsDisabled && (i3 > bArr.length || i3 < 0)) {
            throw new AssertionError(i + ", " + i2 + ", " + bArr.length);
        }
        char[] cArr = new char[i2 * 2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = bArr[i];
            int i5 = i4 + 1;
            cArr[i4] = hexDigit((b2 >>> 4) & 15);
            i4 = i5 + 1;
            cArr[i5] = hexDigit(b2 & Ascii.SI);
            i++;
        }
        return new String(cArr);
    }

    public static boolean secureStringEquals(String str, String str2) {
        if (str.length() != str2.length()) {
            return false;
        }
        int iCharAt = 0;
        for (int i = 0; i < str.length(); i++) {
            iCharAt |= str.charAt(i) ^ str2.charAt(i);
        }
        return iCharAt == 0;
    }

    public static String base64Encode(byte[] bArr) {
        return base64EncodeGeneric(Base64Digits, bArr);
    }

    public static String urlSafeBase64Encode(byte[] bArr) {
        return base64EncodeGeneric(UrlSafeBase64Digits, bArr);
    }

    public static String base64EncodeGeneric(String str, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("'data' can't be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("'digits' can't be null");
        }
        if (str.length() != 64) {
            throw new IllegalArgumentException("'digits' must be 64 characters long: " + jq(str));
        }
        StringBuilder sb = new StringBuilder(((bArr.length + 2) / 3) * 4);
        int i = 0;
        while (i + 3 <= bArr.length) {
            int i2 = i + 1;
            int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
            int i4 = i2 + 1;
            int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            i = i4 + 1;
            int i6 = bArr[i4] & UnsignedBytes.MAX_VALUE;
            int i7 = i3 >>> 2;
            sb.append(str.charAt(i7));
            sb.append(str.charAt(((i3 & 3) << 4) | (i5 >>> 4)));
            sb.append(str.charAt(((i5 & 15) << 2) | (i6 >>> 6)));
            sb.append(str.charAt(i6 & 63));
        }
        int length = bArr.length - i;
        if (length != 0) {
            if (length == 1) {
                int i8 = i + 1;
                int i9 = bArr[i] & UnsignedBytes.MAX_VALUE;
                sb.append(str.charAt(i9 >>> 2));
                sb.append(str.charAt((i9 & 3) << 4));
                sb.append("==");
            } else if (length == 2) {
                int i10 = i + 1;
                int i11 = bArr[i] & UnsignedBytes.MAX_VALUE;
                int i12 = i10 + 1;
                int i13 = bArr[i10] & UnsignedBytes.MAX_VALUE;
                sb.append(str.charAt(i11 >>> 2));
                sb.append(str.charAt(((i11 & 3) << 4) | (i13 >>> 4)));
                sb.append(str.charAt((i13 & 15) << 2));
                sb.append('=');
            } else {
                throw new AssertionError("data.length: " + bArr.length + ", i: " + i);
            }
        }
        return sb.toString();
    }
}
