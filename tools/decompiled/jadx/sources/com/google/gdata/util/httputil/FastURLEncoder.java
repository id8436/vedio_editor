package com.google.gdata.util.httputil;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.BitSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class FastURLEncoder {

    @Deprecated
    public static final BitSet CPLUSPLUS_COMPAT_SAFE_OCTETS;
    private static boolean verifyAgainstJava = false;
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final BitSet DEFAULT_SAFE_OCTETS = new BitSet(256);

    static {
        for (int i = 48; i <= 57; i++) {
            DEFAULT_SAFE_OCTETS.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            DEFAULT_SAFE_OCTETS.set(i2);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            DEFAULT_SAFE_OCTETS.set(i3);
        }
        DEFAULT_SAFE_OCTETS.set(45);
        DEFAULT_SAFE_OCTETS.set(95);
        DEFAULT_SAFE_OCTETS.set(46);
        DEFAULT_SAFE_OCTETS.set(42);
        CPLUSPLUS_COMPAT_SAFE_OCTETS = new BitSet(256);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(33);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(41);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(40);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(42);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(44);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(45);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(46);
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(47);
        for (int i4 = 48; i4 <= 57; i4++) {
            CPLUSPLUS_COMPAT_SAFE_OCTETS.set(i4);
        }
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(58);
        for (int i5 = 65; i5 <= 90; i5++) {
            CPLUSPLUS_COMPAT_SAFE_OCTETS.set(i5);
        }
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(95);
        for (int i6 = 97; i6 <= 122; i6++) {
            CPLUSPLUS_COMPAT_SAFE_OCTETS.set(i6);
        }
        CPLUSPLUS_COMPAT_SAFE_OCTETS.set(126);
    }

    private FastURLEncoder() {
    }

    @VisibleForTesting
    static void setVerifyAgainstJava(boolean z) {
        verifyAgainstJava = z;
    }

    @VisibleForTesting
    static boolean getVerifyAgainstJava() {
        return verifyAgainstJava;
    }

    @Deprecated
    public static String encode(String str, String str2, BitSet bitSet, boolean z) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        try {
            if (encode(str, str2, bitSet, z, sb)) {
                return sb.toString();
            }
            return str;
        } catch (UnsupportedEncodingException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }

    @Deprecated
    public static boolean encode(String str, String str2, BitSet bitSet, boolean z, Appendable appendable) throws IOException {
        byte[] bytes = str.getBytes(str2);
        int i = 0;
        boolean z2 = false;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            int i3 = bytes[i2];
            if (i3 < 0) {
                i3 += 256;
            }
            if (bitSet.get(i3)) {
                appendable.append((char) i3);
                i++;
            } else if (z && i3 == 32) {
                appendable.append('+');
                i++;
                z2 = true;
            } else {
                appendable.append('%');
                appendable.append(HEX_DIGITS[i3 >> 4]);
                appendable.append(HEX_DIGITS[i3 & 15]);
                i += 3;
            }
        }
        return z2 || i != str.length();
    }

    @Deprecated
    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        String strEncode = encode(str, str2, DEFAULT_SAFE_OCTETS, true);
        if (verifyAgainstJava) {
            String strEncode2 = URLEncoder.encode(str, str2);
            if (!strEncode2.equals(strEncode)) {
                Logger.getLogger(FastURLEncoder.class.getName()).log(Level.SEVERE, "FastURLEncoder does not match java. Java: '" + strEncode2 + "'  FastURLEncoder: '" + strEncode + "'");
                return strEncode2;
            }
        }
        return strEncode;
    }

    @Deprecated
    public static void encode(String str, String str2, Appendable appendable) throws IOException {
        encode(str, str2, DEFAULT_SAFE_OCTETS, true, appendable);
    }

    @Deprecated
    public static String encode(String str) {
        try {
            return encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    @Deprecated
    public static void encode(String str, Appendable appendable) throws IOException {
        try {
            encode(str, "UTF-8", appendable);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    @Deprecated
    public static String encode(String str, BitSet bitSet, boolean z) {
        try {
            return encode(str, "UTF-8", bitSet, z);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    @Deprecated
    public static BitSet createSafeOctetBitSet() {
        return (BitSet) DEFAULT_SAFE_OCTETS.clone();
    }
}
