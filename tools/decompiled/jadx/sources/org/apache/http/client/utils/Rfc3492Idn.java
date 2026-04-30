package org.apache.http.client.utils;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = i / damp;
        } else {
            i3 = i / 2;
        }
        int i4 = (i3 / i2) + i3;
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return i5 + ((i4 * 36) / (i4 + 38));
    }

    private int digit(char c2) {
        if (c2 >= 'A' && c2 <= 'Z') {
            return c2 - 'A';
        }
        if (c2 >= 'a' && c2 <= 'z') {
            return c2 - 'a';
        }
        if (c2 >= '0' && c2 <= '9') {
            return (c2 - '0') + 26;
        }
        throw new IllegalArgumentException("illegal digit: " + c2);
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (sb.length() > 0) {
                sb.append('.');
            }
            if (strNextToken.startsWith(ACE_PREFIX)) {
                strNextToken = decode(strNextToken.substring(4));
            }
            sb.append(strNextToken);
        }
        return sb.toString();
    }

    protected String decode(String str) {
        int length;
        int i;
        int i2;
        int iAdapt = 72;
        StringBuilder sb = new StringBuilder(str.length());
        int iLastIndexOf = str.lastIndexOf(45);
        if (iLastIndexOf == -1) {
            length = 128;
            i = 0;
        } else {
            sb.append(str.subSequence(0, iLastIndexOf));
            str = str.substring(iLastIndexOf + 1);
            length = 128;
            i = 0;
        }
        while (str.length() > 0) {
            int i3 = 36;
            int i4 = 1;
            int i5 = i;
            while (str.length() != 0) {
                char cCharAt = str.charAt(0);
                str = str.substring(1);
                int iDigit = digit(cCharAt);
                i5 += iDigit * i4;
                if (i3 <= iAdapt + 1) {
                    i2 = 1;
                } else if (i3 >= iAdapt + 26) {
                    i2 = 26;
                } else {
                    i2 = i3 - iAdapt;
                }
                if (iDigit < i2) {
                    break;
                }
                i4 *= 36 - i2;
                i3 += 36;
            }
            iAdapt = adapt(i5 - i, sb.length() + 1, i == 0);
            length += i5 / (sb.length() + 1);
            int length2 = i5 % (sb.length() + 1);
            sb.insert(length2, (char) length);
            i = length2 + 1;
        }
        return sb.toString();
    }
}
