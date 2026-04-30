package org.mortbay.util;

import java.io.UnsupportedEncodingException;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class URIUtil implements Cloneable {
    public static final String HTTP = "http";
    public static final String HTTPS = "https";
    public static final String HTTPS_COLON = "https:";
    public static final String HTTP_COLON = "http:";
    public static final String SLASH = "/";
    public static final String __CHARSET = System.getProperty("org.mortbay.util.URI.charset", "UTF-8");

    private URIUtil() {
    }

    public static String encodePath(String str) {
        StringBuffer stringBufferEncodePath;
        return (str == null || str.length() == 0 || (stringBufferEncodePath = encodePath(null, str)) == null) ? str : stringBufferEncodePath.toString();
    }

    public static StringBuffer encodePath(StringBuffer stringBuffer, String str) {
        if (stringBuffer == null) {
            int i = 0;
            while (true) {
                if (i < str.length()) {
                    switch (str.charAt(i)) {
                        case ' ':
                        case '\"':
                        case '#':
                        case '%':
                        case '\'':
                        case ';':
                        case '<':
                        case '>':
                        case '?':
                            stringBuffer = new StringBuffer(str.length() << 1);
                            break;
                        default:
                            i++;
                            break;
                    }
                }
            }
            if (stringBuffer == null) {
                return null;
            }
        }
        synchronized (stringBuffer) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                switch (cCharAt) {
                    case ' ':
                        stringBuffer.append("%20");
                        break;
                    case '\"':
                        stringBuffer.append("%22");
                        break;
                    case '#':
                        stringBuffer.append("%23");
                        break;
                    case '%':
                        stringBuffer.append("%25");
                        break;
                    case '\'':
                        stringBuffer.append("%27");
                        break;
                    case ';':
                        stringBuffer.append("%3B");
                        break;
                    case '<':
                        stringBuffer.append("%3C");
                        break;
                    case '>':
                        stringBuffer.append("%3E");
                        break;
                    case '?':
                        stringBuffer.append("%3F");
                        break;
                    default:
                        stringBuffer.append(cCharAt);
                        break;
                }
            }
        }
        return stringBuffer;
    }

    public static StringBuffer encodeString(StringBuffer stringBuffer, String str, String str2) {
        if (stringBuffer == null) {
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '%' || str2.indexOf(cCharAt) >= 0) {
                    stringBuffer = new StringBuffer(str.length() << 1);
                    break;
                }
            }
            if (stringBuffer == null) {
                return null;
            }
        }
        synchronized (stringBuffer) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == '%' || str2.indexOf(cCharAt2) >= 0) {
                    stringBuffer.append('%');
                    StringUtil.append(stringBuffer, (byte) (cCharAt2 & 255), 16);
                } else {
                    stringBuffer.append(cCharAt2);
                }
            }
        }
        return stringBuffer;
    }

    public static String decodePath(String str) {
        String str2;
        String str3;
        int i;
        byte[] bArr;
        int i2;
        int i3;
        char[] cArr;
        int i4;
        byte[] bArr2 = null;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i5 = 0;
        int i6 = 0;
        int length2 = 0;
        char[] cArr2 = null;
        while (i5 < length) {
            char cCharAt = str.charAt(i5);
            if (cCharAt == '%' && i5 + 2 < length) {
                if (cArr2 == null) {
                    cArr2 = new char[length];
                    bArr2 = new byte[length];
                    str.getChars(0, i5, cArr2, 0);
                }
                int i7 = i6 + 1;
                bArr2[i6] = (byte) (TypeUtil.parseInt(str, i5 + 1, 2, 16) & 255);
                cArr = cArr2;
                i4 = i7;
                i3 = length2;
                byte[] bArr3 = bArr2;
                i2 = i5 + 2;
                bArr = bArr3;
            } else if (bArr2 == null) {
                i3 = length2 + 1;
                int i8 = i5;
                bArr = bArr2;
                i2 = i8;
                int i9 = i6;
                cArr = cArr2;
                i4 = i9;
            } else {
                if (i6 > 0) {
                    try {
                        str3 = new String(bArr2, 0, i6, __CHARSET);
                    } catch (UnsupportedEncodingException e2) {
                        str3 = new String(bArr2, 0, i6);
                    }
                    str3.getChars(0, str3.length(), cArr2, length2);
                    length2 += str3.length();
                    i = 0;
                } else {
                    i = i6;
                }
                cArr2[length2] = cCharAt;
                int i10 = i5;
                bArr = bArr2;
                i2 = i10;
                int i11 = i;
                i3 = length2 + 1;
                cArr = cArr2;
                i4 = i11;
            }
            int i12 = i2 + 1;
            length2 = i3;
            int i13 = i4;
            cArr2 = cArr;
            i6 = i13;
            bArr2 = bArr;
            i5 = i12;
        }
        if (cArr2 != null) {
            if (i6 > 0) {
                try {
                    str2 = new String(bArr2, 0, i6, __CHARSET);
                } catch (UnsupportedEncodingException e3) {
                    str2 = new String(bArr2, 0, i6);
                }
                str2.getChars(0, str2.length(), cArr2, length2);
                length2 += str2.length();
            }
            return new String(cArr2, 0, length2);
        }
        return str;
    }

    public static String decodePath(byte[] bArr, int i, int i2) {
        byte b2;
        int i3;
        byte[] bArr2 = null;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            byte b3 = bArr[i4 + i];
            if (b3 == 37 && i4 + 2 < i2) {
                byte b4 = (byte) (TypeUtil.parseInt(bArr, i4 + i + 1, 2, 16) & 255);
                i4 += 2;
                b2 = b4;
            } else if (bArr2 == null) {
                i3 = i5 + 1;
                i5 = i3;
                i4++;
                bArr2 = bArr2;
            } else {
                b2 = b3;
            }
            if (bArr2 == null) {
                bArr2 = new byte[i2];
                for (int i6 = 0; i6 < i5; i6++) {
                    bArr2[i6] = bArr[i6 + i];
                }
            }
            i3 = i5 + 1;
            bArr2[i5] = b2;
            i5 = i3;
            i4++;
            bArr2 = bArr2;
        }
        return bArr2 == null ? StringUtil.toString(bArr, i, i2, __CHARSET) : StringUtil.toString(bArr2, 0, i5, __CHARSET);
    }

    public static String addPaths(String str, String str2) {
        if (str == null || str.length() == 0) {
            return (str == null || str2 != null) ? str2 : str;
        }
        if (str2 != null && str2.length() != 0) {
            int iIndexOf = str.indexOf(59);
            if (iIndexOf < 0) {
                iIndexOf = str.indexOf(63);
            }
            if (iIndexOf == 0) {
                return new StringBuffer().append(str2).append(str).toString();
            }
            if (iIndexOf < 0) {
                iIndexOf = str.length();
            }
            StringBuffer stringBuffer = new StringBuffer(str.length() + str2.length() + 2);
            stringBuffer.append(str);
            if (stringBuffer.charAt(iIndexOf - 1) == '/') {
                if (str2.startsWith(SLASH)) {
                    stringBuffer.deleteCharAt(iIndexOf - 1);
                    stringBuffer.insert(iIndexOf - 1, str2);
                } else {
                    stringBuffer.insert(iIndexOf, str2);
                }
            } else if (str2.startsWith(SLASH)) {
                stringBuffer.insert(iIndexOf, str2);
            } else {
                stringBuffer.insert(iIndexOf, IOUtils.DIR_SEPARATOR_UNIX);
                stringBuffer.insert(iIndexOf + 1, str2);
            }
            return stringBuffer.toString();
        }
        return str;
    }

    public static String parentPath(String str) {
        int iLastIndexOf;
        if (str == null || SLASH.equals(str) || (iLastIndexOf = str.lastIndexOf(47, str.length() - 2)) < 0) {
            return null;
        }
        return str.substring(0, iLastIndexOf + 1);
    }

    public static String stripPath(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(59);
        return iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0166 A[PHI: r3
  0x0166: PHI (r3v11 int) = (r3v1 int), (r3v2 int), (r3v1 int), (r3v8 int), (r3v1 int) binds: [B:47:0x008e, B:49:0x0092, B:90:0x010e, B:92:0x0112, B:19:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0173 A[PHI: r2 r3 r6
  0x0173: PHI (r2v5 int) = (r2v1 int), (r2v1 int), (r2v1 int), (r2v2 int), (r2v2 int), (r2v1 int), (r2v1 int), (r2v1 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]
  0x0173: PHI (r3v6 int) = (r3v2 int), (r3v2 int), (r3v2 int), (r3v1 int), (r3v1 int), (r3v8 int), (r3v8 int), (r3v8 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]
  0x0173: PHI (r6v22 int) = (r6v6 int), (r6v6 int), (r6v6 int), (r6v10 int), (r6v10 int), (r6v27 int), (r6v27 int), (r6v27 int) binds: [B:52:0x0097, B:54:0x009d, B:56:0x00a5, B:74:0x00da, B:76:0x00e0, B:95:0x0117, B:97:0x011d, B:99:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String canonicalPath(java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.URIUtil.canonicalPath(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String compactPath(java.lang.String r8) {
        /*
            r5 = 2
            r1 = 0
            if (r8 == 0) goto La
            int r0 = r8.length()
            if (r0 != 0) goto Lb
        La:
            return r8
        Lb:
            int r4 = r8.length()
            r2 = r1
            r0 = r1
        L11:
            if (r2 >= r4) goto L22
            char r3 = r8.charAt(r2)
            switch(r3) {
                case 47: goto L1e;
                case 63: goto La;
                default: goto L1a;
            }
        L1a:
            r0 = r1
        L1b:
            int r2 = r2 + 1
            goto L11
        L1e:
            int r0 = r0 + 1
            if (r0 != r5) goto L1b
        L22:
            if (r0 < r5) goto La
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            int r3 = r8.length()
            r5.<init>(r3)
            char[] r6 = r8.toCharArray()
            r5.append(r6, r1, r2)
            r3 = r0
        L35:
            if (r2 >= r4) goto L4b
            char r7 = r8.charAt(r2)
            switch(r7) {
                case 47: goto L50;
                case 63: goto L46;
                default: goto L3e;
            }
        L3e:
            r5.append(r7)
            r0 = r1
        L42:
            int r2 = r2 + 1
            r3 = r0
            goto L35
        L46:
            int r0 = r4 - r2
            r5.append(r6, r2, r0)
        L4b:
            java.lang.String r8 = r5.toString()
            goto La
        L50:
            int r0 = r3 + 1
            if (r3 != 0) goto L42
            r5.append(r7)
            goto L42
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.URIUtil.compactPath(java.lang.String):java.lang.String");
    }

    public static boolean hasScheme(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ':') {
                return true;
            }
            if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                if (i <= 0) {
                    return false;
                }
                if ((cCharAt < '0' || cCharAt > '9') && cCharAt != '.' && cCharAt != '+' && cCharAt != '-') {
                    return false;
                }
            }
        }
        return false;
    }
}
