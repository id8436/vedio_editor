package org.mortbay.util;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.base.Ascii;
import com.google.gdata.data.Category;
import java.io.UnsupportedEncodingException;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes3.dex */
public class StringUtil {
    public static final String CRLF = "\r\n";
    public static final String __ISO_8859_1;
    public static final String __LINE_SEPARATOR = System.getProperty("line.separator", IOUtils.LINE_SEPARATOR_UNIX);
    public static final String __UTF16 = "UTF-16";
    public static final String __UTF8 = "UTF-8";
    public static final String __UTF8Alt = "UTF8";
    private static char[] lowercases;

    static {
        String property = System.getProperty("ISO_8859_1");
        if (property == null) {
            try {
                new String(new byte[]{20}, "ISO-8859-1");
                property = "ISO-8859-1";
            } catch (UnsupportedEncodingException e2) {
                property = "ISO8859_1";
            }
        }
        __ISO_8859_1 = property;
        lowercases = new char[]{0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', CharUtils.CR, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', IOUtils.DIR_SEPARATOR_UNIX, '0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', ':', ';', '<', '=', '>', '?', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '[', IOUtils.DIR_SEPARATOR_WINDOWS, ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', Category.SCHEME_PREFIX, '|', Category.SCHEME_SUFFIX, '~', Ascii.MAX};
    }

    public static String asciiToLowerCase(String str) {
        char[] cArr;
        char c2;
        int length = str.length();
        while (true) {
            int i = length;
            length = i - 1;
            if (i <= 0) {
                cArr = null;
                break;
            }
            char cCharAt = str.charAt(length);
            if (cCharAt <= 127 && cCharAt != (c2 = lowercases[cCharAt])) {
                char[] charArray = str.toCharArray();
                charArray[length] = c2;
                cArr = charArray;
                break;
            }
        }
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                break;
            }
            if (cArr[i2] <= 127) {
                cArr[i2] = lowercases[cArr[i2]];
                length = i2;
            } else {
                length = i2;
            }
        }
        return cArr == null ? str : new String(cArr);
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        if (str2 == null) {
            return true;
        }
        if (str == null || str.length() < str2.length()) {
            return false;
        }
        for (int i = 0; i < str2.length(); i++) {
            char cCharAt = str.charAt(i);
            char cCharAt2 = str2.charAt(i);
            if (cCharAt != cCharAt2) {
                if (cCharAt <= 127) {
                    cCharAt = lowercases[cCharAt];
                }
                if (cCharAt2 <= 127) {
                    cCharAt2 = lowercases[cCharAt2];
                }
                if (cCharAt != cCharAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        int length;
        int length2;
        if (str2 == null) {
            return true;
        }
        if (str != null && (length = str.length()) >= (length2 = str2.length())) {
            while (true) {
                int i = length2 - 1;
                if (length2 <= 0) {
                    return true;
                }
                int i2 = length - 1;
                char cCharAt = str.charAt(i2);
                char cCharAt2 = str2.charAt(i);
                if (cCharAt != cCharAt2) {
                    if (cCharAt <= 127) {
                        cCharAt = lowercases[cCharAt];
                    }
                    if (cCharAt2 <= 127) {
                        cCharAt2 = lowercases[cCharAt2];
                    }
                    if (cCharAt != cCharAt2) {
                        return false;
                    }
                }
                length2 = i;
                length = i2;
            }
        }
        return false;
    }

    public static int indexFrom(String str, String str2) {
        for (int i = 0; i < str.length(); i++) {
            if (str2.indexOf(str.charAt(i)) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static String replace(String str, String str2, String str3) {
        int length = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf != -1) {
            StringBuffer stringBuffer = new StringBuffer(str.length() + str3.length());
            synchronized (stringBuffer) {
                do {
                    stringBuffer.append(str.substring(length, iIndexOf));
                    stringBuffer.append(str3);
                    length = str2.length() + iIndexOf;
                    iIndexOf = str.indexOf(str2, length);
                } while (iIndexOf != -1);
                if (length < str.length()) {
                    stringBuffer.append(str.substring(length, str.length()));
                }
                str = stringBuffer.toString();
            }
        }
        return str;
    }

    public static String unquote(String str) {
        return QuotedStringTokenizer.unquote(str);
    }

    public static void append(StringBuffer stringBuffer, String str, int i, int i2) {
        synchronized (stringBuffer) {
            int i3 = i + i2;
            while (i < i3) {
                if (i >= str.length()) {
                    break;
                }
                stringBuffer.append(str.charAt(i));
                i++;
            }
        }
    }

    public static void append(StringBuffer stringBuffer, byte b2, int i) {
        int i2 = b2 & 255;
        int i3 = ((i2 / i) % i) + 48;
        if (i3 > 57) {
            i3 = ((i3 - 48) - 10) + 97;
        }
        stringBuffer.append((char) i3);
        int i4 = (i2 % i) + 48;
        if (i4 > 57) {
            i4 = ((i4 - 48) - 10) + 97;
        }
        stringBuffer.append((char) i4);
    }

    public static void append2digits(StringBuffer stringBuffer, int i) {
        if (i < 100) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    public static String nonNull(String str) {
        if (str == null) {
            return "";
        }
        return str;
    }

    public static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (cArr[i + i3] != str.charAt(i3)) {
                return false;
            }
        }
        return true;
    }

    public static String toUTF8String(byte[] bArr, int i, int i2) {
        String str;
        try {
            if (i2 < 32) {
                Utf8StringBuffer utf8StringBuffer = new Utf8StringBuffer(i2);
                utf8StringBuffer.append(bArr, i, i2);
                str = utf8StringBuffer.toString();
            } else {
                str = new String(bArr, i, i2, "UTF-8");
            }
            return str;
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String toString(byte[] bArr, int i, int i2, String str) {
        if (str == null || isUTF8(str)) {
            return toUTF8String(bArr, i, i2);
        }
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean isUTF8(String str) {
        return str == "UTF-8" || "UTF-8".equalsIgnoreCase(str) || __UTF8Alt.equalsIgnoreCase(str);
    }

    public static String printable(String str) {
        if (str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isISOControl(cCharAt)) {
                stringBuffer.append(cCharAt);
            }
        }
        return stringBuffer.toString();
    }
}
