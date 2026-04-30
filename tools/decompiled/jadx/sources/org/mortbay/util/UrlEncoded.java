package org.mortbay.util;

import android.support.v7.widget.ActivityChooserView;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class UrlEncoded extends MultiMap {
    public static final String ENCODING = System.getProperty("org.mortbay.util.UrlEncoding.charset", "UTF-8");

    public UrlEncoded(UrlEncoded urlEncoded) {
        super(urlEncoded);
    }

    public UrlEncoded() {
        super(6);
    }

    public UrlEncoded(String str) {
        super(6);
        decode(str, ENCODING);
    }

    public UrlEncoded(String str, String str2) {
        super(6);
        decode(str, str2);
    }

    public void decode(String str) {
        decodeTo(str, this, ENCODING);
    }

    public void decode(String str, String str2) {
        decodeTo(str, this, str2);
    }

    public String encode() {
        return encode(ENCODING, false);
    }

    public String encode(String str) {
        return encode(str, false);
    }

    public synchronized String encode(String str, boolean z) {
        return encode(this, str, z);
    }

    public static String encode(MultiMap multiMap, String str, boolean z) {
        String string;
        if (str == null) {
            str = ENCODING;
        }
        StringBuffer stringBuffer = new StringBuffer(128);
        synchronized (stringBuffer) {
            Iterator it = multiMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String string2 = entry.getKey().toString();
                Object value = entry.getValue();
                int size = LazyList.size(value);
                if (size == 0) {
                    stringBuffer.append(encodeString(string2, str));
                    if (z) {
                        stringBuffer.append('=');
                    }
                } else {
                    for (int i = 0; i < size; i++) {
                        if (i > 0) {
                            stringBuffer.append('&');
                        }
                        Object obj = LazyList.get(value, i);
                        stringBuffer.append(encodeString(string2, str));
                        if (obj != null) {
                            String string3 = obj.toString();
                            if (string3.length() > 0) {
                                stringBuffer.append('=');
                                stringBuffer.append(encodeString(string3, str));
                            } else if (z) {
                                stringBuffer.append('=');
                            }
                        } else if (z) {
                            stringBuffer.append('=');
                        }
                    }
                }
                if (it.hasNext()) {
                    stringBuffer.append('&');
                }
            }
            string = stringBuffer.toString();
        }
        return string;
    }

    public static void decodeTo(String str, MultiMap multiMap, String str2) {
        String strDecodeString;
        String strDecodeString2;
        if (str2 == null) {
            str2 = ENCODING;
        }
        synchronized (multiMap) {
            int i = -1;
            boolean z = false;
            String str3 = null;
            for (int i2 = 0; i2 < str.length(); i2++) {
                switch (str.charAt(i2)) {
                    case '%':
                        z = true;
                        break;
                    case '&':
                        int i3 = (i2 - i) - 1;
                        if (i3 == 0) {
                            strDecodeString2 = "";
                        } else {
                            strDecodeString2 = z ? decodeString(str, i + 1, i3, str2) : str.substring(i + 1, i2);
                        }
                        if (str3 != null) {
                            multiMap.add(str3, strDecodeString2);
                        } else if (strDecodeString2 != null && strDecodeString2.length() > 0) {
                            multiMap.add(strDecodeString2, "");
                        }
                        z = false;
                        i = i2;
                        str3 = null;
                        break;
                    case '+':
                        z = true;
                        break;
                    case '=':
                        if (str3 == null) {
                            String strDecodeString3 = z ? decodeString(str, i + 1, (i2 - i) - 1, str2) : str.substring(i + 1, i2);
                            i = i2;
                            str3 = strDecodeString3;
                            z = false;
                        }
                        break;
                }
            }
            if (str3 != null) {
                int length = (str.length() - i) - 1;
                if (length == 0) {
                    strDecodeString = "";
                } else {
                    strDecodeString = z ? decodeString(str, i + 1, length, str2) : str.substring(i + 1);
                }
                multiMap.add(str3, strDecodeString);
            } else if (i < str.length()) {
                multiMap.add(z ? decodeString(str, i + 1, (str.length() - i) - 1, str2) : str.substring(i + 1), "");
            }
        }
    }

    public static void decodeUtf8To(byte[] bArr, int i, int i2, MultiMap multiMap) {
        decodeUtf8To(bArr, i, i2, multiMap, new Utf8StringBuffer());
    }

    public static void decodeUtf8To(byte[] bArr, int i, int i2, MultiMap multiMap, Utf8StringBuffer utf8StringBuffer) {
        synchronized (multiMap) {
            int i3 = i + i2;
            int i4 = i;
            String string = null;
            while (i4 < i3) {
                byte b2 = bArr[i4];
                switch ((char) (b2 & UnsignedBytes.MAX_VALUE)) {
                    case '%':
                        if (i4 + 2 < i3) {
                            int i5 = i4 + 1;
                            int iConvertHexDigit = TypeUtil.convertHexDigit(bArr[i5]) << 4;
                            i4 = i5 + 1;
                            utf8StringBuffer.append((byte) (iConvertHexDigit + TypeUtil.convertHexDigit(bArr[i4])));
                        }
                        break;
                    case '&':
                        String string2 = utf8StringBuffer.length() == 0 ? "" : utf8StringBuffer.toString();
                        utf8StringBuffer.reset();
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        string = null;
                        break;
                    case '+':
                        utf8StringBuffer.append((byte) 32);
                        break;
                    case '=':
                        if (string != null) {
                            utf8StringBuffer.append(b2);
                        } else {
                            string = utf8StringBuffer.toString();
                            utf8StringBuffer.reset();
                        }
                        break;
                    default:
                        utf8StringBuffer.append(b2);
                        break;
                }
                i4++;
            }
            if (string != null) {
                String string3 = utf8StringBuffer.length() == 0 ? "" : utf8StringBuffer.toString();
                utf8StringBuffer.reset();
                multiMap.add(string, string3);
            } else if (utf8StringBuffer.length() > 0) {
                multiMap.add(utf8StringBuffer.toString(), "");
            }
        }
    }

    public static void decode88591To(InputStream inputStream, MultiMap multiMap, int i) throws IOException {
        synchronized (multiMap) {
            StringBuffer stringBuffer = new StringBuffer();
            int i2 = 0;
            Object string = null;
            while (true) {
                int i3 = inputStream.read();
                if (i3 >= 0) {
                    switch ((char) i3) {
                        case '%':
                            int i4 = inputStream.read();
                            int i5 = inputStream.read();
                            if (i4 >= 0 && i5 >= 0) {
                                stringBuffer.append((char) ((TypeUtil.convertHexDigit((byte) i4) << 4) + TypeUtil.convertHexDigit((byte) i5)));
                            }
                            break;
                        case '&':
                            String string2 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                            stringBuffer.setLength(0);
                            if (string != null) {
                                multiMap.add(string, string2);
                            } else if (string2 != null && string2.length() > 0) {
                                multiMap.add(string2, "");
                            }
                            string = null;
                            break;
                        case '+':
                            stringBuffer.append(' ');
                            break;
                        case '=':
                            if (string != null) {
                                stringBuffer.append((char) i3);
                            } else {
                                string = stringBuffer.toString();
                                stringBuffer.setLength(0);
                            }
                            break;
                        default:
                            stringBuffer.append((char) i3);
                            break;
                    }
                    if (i >= 0) {
                        int i6 = i2 + 1;
                        if (i6 > i) {
                            throw new IllegalStateException("Form too large");
                        }
                        i2 = i6;
                    }
                } else if (string != null) {
                    Object string3 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                    stringBuffer.setLength(0);
                    multiMap.add(string, string3);
                } else if (stringBuffer.length() > 0) {
                    multiMap.add(stringBuffer.toString(), "");
                }
            }
        }
    }

    public static void decodeUtf8To(InputStream inputStream, MultiMap multiMap, int i) throws IOException {
        synchronized (multiMap) {
            Utf8StringBuffer utf8StringBuffer = new Utf8StringBuffer();
            int i2 = 0;
            Object string = null;
            while (true) {
                int i3 = inputStream.read();
                if (i3 >= 0) {
                    switch ((char) i3) {
                        case '%':
                            int i4 = inputStream.read();
                            int i5 = inputStream.read();
                            if (i4 >= 0 && i5 >= 0) {
                                utf8StringBuffer.append((byte) ((TypeUtil.convertHexDigit((byte) i4) << 4) + TypeUtil.convertHexDigit((byte) i5)));
                            }
                            break;
                        case '&':
                            String string2 = utf8StringBuffer.length() == 0 ? "" : utf8StringBuffer.toString();
                            utf8StringBuffer.reset();
                            if (string != null) {
                                multiMap.add(string, string2);
                            } else if (string2 != null && string2.length() > 0) {
                                multiMap.add(string2, "");
                            }
                            string = null;
                            break;
                        case '+':
                            utf8StringBuffer.append((byte) 32);
                            break;
                        case '=':
                            if (string != null) {
                                utf8StringBuffer.append((byte) i3);
                            } else {
                                string = utf8StringBuffer.toString();
                                utf8StringBuffer.reset();
                            }
                            break;
                        default:
                            utf8StringBuffer.append((byte) i3);
                            break;
                    }
                    if (i >= 0) {
                        int i6 = i2 + 1;
                        if (i6 > i) {
                            throw new IllegalStateException("Form too large");
                        }
                        i2 = i6;
                    }
                } else if (string != null) {
                    Object string3 = utf8StringBuffer.length() == 0 ? "" : utf8StringBuffer.toString();
                    utf8StringBuffer.reset();
                    multiMap.add(string, string3);
                } else if (utf8StringBuffer.length() > 0) {
                    multiMap.add(utf8StringBuffer.toString(), "");
                }
            }
        }
    }

    public static void decodeUtf16To(InputStream inputStream, MultiMap multiMap, int i) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-16");
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        if (i < 0) {
            i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        while (true) {
            int i3 = inputStreamReader.read();
            if (i3 <= 0) {
                break;
            }
            int i4 = i2 + 1;
            if (i2 >= i) {
                break;
            }
            stringBuffer.append((char) i3);
            i2 = i4;
        }
        decodeTo(stringBuffer.toString(), multiMap, ENCODING);
    }

    public static void decodeTo(InputStream inputStream, MultiMap multiMap, String str, int i) throws IOException {
        if (str == null || "UTF-8".equalsIgnoreCase(str)) {
            decodeUtf8To(inputStream, multiMap, i);
            return;
        }
        if (StringUtil.__ISO_8859_1.equals(str)) {
            decode88591To(inputStream, multiMap, i);
            return;
        }
        if ("UTF-16".equalsIgnoreCase(str)) {
            decodeUtf16To(inputStream, multiMap, i);
            return;
        }
        synchronized (multiMap) {
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2();
            int i2 = 0;
            char c2 = 0;
            byte bConvertHexDigit = 0;
            Object obj = null;
            while (true) {
                int i3 = inputStream.read();
                if (i3 > 0) {
                    switch ((char) i3) {
                        case '%':
                            c2 = 2;
                            break;
                        case '&':
                            String string = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                            byteArrayOutputStream2.setCount(0);
                            if (obj != null) {
                                multiMap.add(obj, string);
                            } else if (string != null && string.length() > 0) {
                                multiMap.add(string, "");
                            }
                            obj = null;
                            break;
                        case '+':
                            byteArrayOutputStream2.write(32);
                            break;
                        case '=':
                            if (obj != null) {
                                byteArrayOutputStream2.write(i3);
                            } else {
                                Object string2 = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                                byteArrayOutputStream2.setCount(0);
                                obj = string2;
                            }
                            break;
                        default:
                            if (c2 == 2) {
                                bConvertHexDigit = TypeUtil.convertHexDigit((byte) i3);
                                c2 = 1;
                            } else if (c2 == 1) {
                                byteArrayOutputStream2.write(TypeUtil.convertHexDigit((byte) i3) + (bConvertHexDigit << 4));
                                c2 = 0;
                            } else {
                                byteArrayOutputStream2.write(i3);
                            }
                            break;
                    }
                    int i4 = i2 + 1;
                    if (i >= 0 && i4 > i) {
                        throw new IllegalStateException("Form too large");
                    }
                    i2 = i4;
                } else {
                    int size = byteArrayOutputStream2.size();
                    if (obj != null) {
                        Object string3 = size == 0 ? "" : byteArrayOutputStream2.toString(str);
                        byteArrayOutputStream2.setCount(0);
                        multiMap.add(obj, string3);
                    } else if (size > 0) {
                        multiMap.add(byteArrayOutputStream2.toString(str), "");
                    }
                }
            }
        }
    }

    public static String decodeString(String str, int i, int i2, String str2) {
        Utf8StringBuffer utf8StringBuffer;
        int i3;
        char cCharAt;
        Utf8StringBuffer utf8StringBuffer2;
        int i4;
        int i5;
        int i6;
        if (str2 == null || StringUtil.isUTF8(str2)) {
            Utf8StringBuffer utf8StringBuffer3 = null;
            int i7 = 0;
            while (i7 < i2) {
                char cCharAt2 = str.charAt(i + i7);
                if (cCharAt2 < 0 || cCharAt2 > 255) {
                    if (utf8StringBuffer3 == null) {
                        Utf8StringBuffer utf8StringBuffer4 = new Utf8StringBuffer(i2);
                        utf8StringBuffer4.getStringBuffer().append(str.substring(i, i + i7 + 1));
                        int i8 = i7;
                        utf8StringBuffer = utf8StringBuffer4;
                        i3 = i8;
                    } else {
                        utf8StringBuffer3.getStringBuffer().append(cCharAt2);
                        int i9 = i7;
                        utf8StringBuffer = utf8StringBuffer3;
                        i3 = i9;
                    }
                } else if (cCharAt2 == '+') {
                    if (utf8StringBuffer3 == null) {
                        utf8StringBuffer3 = new Utf8StringBuffer(i2);
                        utf8StringBuffer3.getStringBuffer().append(str.substring(i, i + i7));
                    }
                    utf8StringBuffer3.getStringBuffer().append(' ');
                    int i10 = i7;
                    utf8StringBuffer = utf8StringBuffer3;
                    i3 = i10;
                } else if (cCharAt2 == '%' && i7 + 2 < i2) {
                    if (utf8StringBuffer3 == null) {
                        Utf8StringBuffer utf8StringBuffer5 = new Utf8StringBuffer(i2);
                        utf8StringBuffer5.getStringBuffer().append(str.substring(i, i + i7));
                        cCharAt = cCharAt2;
                        utf8StringBuffer2 = utf8StringBuffer5;
                        i4 = i7;
                    } else {
                        cCharAt = cCharAt2;
                        utf8StringBuffer2 = utf8StringBuffer3;
                        i4 = i7;
                    }
                    while (cCharAt == '%' && i4 + 2 < i2) {
                        try {
                            utf8StringBuffer2.append((byte) TypeUtil.parseInt(str, i + i4 + 1, 2, 16));
                            i4 += 3;
                        } catch (NumberFormatException e2) {
                            utf8StringBuffer2.getStringBuffer().append('%');
                            while (true) {
                                i4++;
                                char cCharAt3 = str.charAt(i4 + i);
                                if (cCharAt3 == '%') {
                                    break;
                                }
                                StringBuffer stringBuffer = utf8StringBuffer2.getStringBuffer();
                                if (cCharAt3 == '+') {
                                    cCharAt3 = ' ';
                                }
                                stringBuffer.append(cCharAt3);
                            }
                        }
                        if (i4 < i2) {
                            cCharAt = str.charAt(i + i4);
                        }
                    }
                    i3 = i4 - 1;
                    utf8StringBuffer = utf8StringBuffer2;
                } else {
                    if (utf8StringBuffer3 != null) {
                        utf8StringBuffer3.getStringBuffer().append(cCharAt2);
                    }
                    int i11 = i7;
                    utf8StringBuffer = utf8StringBuffer3;
                    i3 = i11;
                }
                int i12 = i3 + 1;
                utf8StringBuffer3 = utf8StringBuffer;
                i7 = i12;
            }
            if (utf8StringBuffer3 == null) {
                if (i != 0 || str.length() != i2) {
                    return str.substring(i, i + i2);
                }
                return str;
            }
            return utf8StringBuffer3.toString();
        }
        StringBuffer stringBuffer2 = null;
        int i13 = 0;
        while (i13 < i2) {
            try {
                char cCharAt4 = str.charAt(i + i13);
                if (cCharAt4 < 0 || cCharAt4 > 255) {
                    if (stringBuffer2 == null) {
                        stringBuffer2 = new StringBuffer(i2);
                        stringBuffer2.append(str.substring(i, i + i13 + 1));
                    } else {
                        stringBuffer2.append(cCharAt4);
                    }
                } else if (cCharAt4 == '+') {
                    if (stringBuffer2 == null) {
                        stringBuffer2 = new StringBuffer(i2);
                        stringBuffer2.append(str.substring(i, i + i13));
                    }
                    stringBuffer2.append(' ');
                } else if (cCharAt4 == '%' && i13 + 2 < i2) {
                    if (stringBuffer2 == null) {
                        stringBuffer2 = new StringBuffer(i2);
                        stringBuffer2.append(str.substring(i, i + i13));
                    }
                    byte[] bArr = new byte[i2];
                    char cCharAt5 = cCharAt4;
                    int i14 = i13;
                    int i15 = 0;
                    while (cCharAt5 >= 0 && cCharAt5 <= 255) {
                        if (cCharAt5 == '%') {
                            if (i14 + 2 < i2) {
                                int i16 = i15 + 1;
                                try {
                                    bArr[i15] = (byte) TypeUtil.parseInt(str, i + i14 + 1, 2, 16);
                                    i14 += 3;
                                    i15 = i16;
                                } catch (NumberFormatException e3) {
                                    bArr[i16 - 1] = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS;
                                    i15 = i16;
                                    while (true) {
                                        i14++;
                                        char cCharAt6 = str.charAt(i14 + i);
                                        if (cCharAt6 == '%') {
                                            break;
                                        }
                                        int i17 = i15 + 1;
                                        if (cCharAt6 == '+') {
                                            cCharAt6 = ' ';
                                        }
                                        bArr[i15] = (byte) cCharAt6;
                                        i15 = i17;
                                    }
                                }
                            } else {
                                bArr[i15] = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS;
                                i14++;
                                i15++;
                            }
                        } else if (cCharAt5 == '+') {
                            bArr[i15] = 32;
                            i14++;
                            i15++;
                        } else {
                            bArr[i15] = (byte) cCharAt5;
                            i14++;
                            i15++;
                        }
                        if (i14 >= i2) {
                            int i18 = i15;
                            i5 = i14;
                            i6 = i18;
                            break;
                        }
                        cCharAt5 = str.charAt(i + i14);
                    }
                    int i19 = i15;
                    i5 = i14;
                    i6 = i19;
                    i13 = i5 - 1;
                    stringBuffer2.append(new String(bArr, 0, i6, str2));
                } else if (stringBuffer2 != null) {
                    stringBuffer2.append(cCharAt4);
                }
                i13++;
            } catch (UnsupportedEncodingException e4) {
                throw new RuntimeException(e4);
            }
        }
        if (stringBuffer2 == null) {
            if (i != 0 || str.length() != i2) {
                return str.substring(i, i + i2);
            }
            return str;
        }
        return stringBuffer2.toString();
    }

    public static String encodeString(String str) {
        return encodeString(str, ENCODING);
    }

    public static String encodeString(String str, String str2) {
        byte[] bytes;
        int i;
        int i2;
        if (str2 == null) {
            str2 = ENCODING;
        }
        try {
            bytes = str.getBytes(str2);
        } catch (UnsupportedEncodingException e2) {
            bytes = str.getBytes();
        }
        int length = bytes.length;
        byte[] bArr = new byte[bytes.length * 3];
        boolean z = true;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            byte b2 = bytes[i3];
            if (b2 == 32) {
                bArr[i4] = 43;
                i2 = i4 + 1;
                z = false;
            } else if ((b2 >= 97 && b2 <= 122) || ((b2 >= 65 && b2 <= 90) || (b2 >= 48 && b2 <= 57))) {
                i2 = i4 + 1;
                bArr[i4] = b2;
            } else {
                int i5 = i4 + 1;
                bArr[i4] = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS;
                byte b3 = (byte) ((b2 & 240) >> 4);
                if (b3 >= 10) {
                    bArr[i5] = (byte) ((b3 + 65) - 10);
                    i = i5 + 1;
                } else {
                    bArr[i5] = (byte) (b3 + 48);
                    i = i5 + 1;
                }
                byte b4 = (byte) (b2 & Ascii.SI);
                if (b4 >= 10) {
                    bArr[i] = (byte) ((b4 + 65) - 10);
                    i2 = i + 1;
                    z = false;
                } else {
                    bArr[i] = (byte) (b4 + 48);
                    i2 = i + 1;
                    z = false;
                }
            }
            i3++;
            i4 = i2;
        }
        if (!z) {
            try {
                return new String(bArr, 0, i4, str2);
            } catch (UnsupportedEncodingException e3) {
                return new String(bArr, 0, i4);
            }
        }
        return str;
    }

    @Override // org.mortbay.util.MultiMap, java.util.HashMap, java.util.AbstractMap
    public Object clone() {
        return new UrlEncoded(this);
    }
}
