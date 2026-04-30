package javax.mail.internet;

import com.google.common.primitives.UnsignedBytes;
import com.l.b.a.a;
import com.l.b.a.b;
import com.l.b.a.c;
import com.l.b.a.d;
import com.l.b.a.e;
import com.l.b.a.g;
import com.l.b.a.h;
import com.l.b.a.i;
import com.l.b.a.j;
import com.l.b.a.k;
import com.l.b.a.l;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.MessagingException;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class MimeUtility {
    public static final int ALL = -1;
    static final int ALL_ASCII = 1;
    static final int MOSTLY_ASCII = 2;
    static final int MOSTLY_NONASCII = 3;
    static Class class$javax$mail$internet$MimeUtility;
    private static boolean decodeStrict;
    private static String defaultJavaCharset;
    private static String defaultMIMECharset;
    private static boolean encodeEolStrict;
    private static boolean foldEncodedWords;
    private static boolean foldText;
    private static Hashtable java2mime;
    private static Hashtable mime2java;

    private MimeUtility() {
    }

    static {
        Class clsClass$;
        InputStream eVar;
        decodeStrict = true;
        encodeEolStrict = false;
        foldEncodedWords = false;
        foldText = true;
        try {
            String property = System.getProperty("mail.mime.decodetext.strict");
            decodeStrict = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.encodeeol.strict");
            encodeEolStrict = property2 != null && property2.equalsIgnoreCase("true");
            String property3 = System.getProperty("mail.mime.foldencodedwords");
            foldEncodedWords = property3 != null && property3.equalsIgnoreCase("true");
            String property4 = System.getProperty("mail.mime.foldtext");
            foldText = property4 == null || !property4.equalsIgnoreCase("false");
        } catch (SecurityException e2) {
        }
        java2mime = new Hashtable(40);
        mime2java = new Hashtable(10);
        try {
            if (class$javax$mail$internet$MimeUtility == null) {
                clsClass$ = class$("javax.mail.internet.MimeUtility");
                class$javax$mail$internet$MimeUtility = clsClass$;
            } else {
                clsClass$ = class$javax$mail$internet$MimeUtility;
            }
            InputStream resourceAsStream = clsClass$.getResourceAsStream("/META-INF/javamail.charset.map");
            if (resourceAsStream != null) {
                try {
                    eVar = new e(resourceAsStream);
                    try {
                        loadMappings((e) eVar, java2mime);
                        loadMappings((e) eVar, mime2java);
                        try {
                            eVar.close();
                        } catch (Exception e3) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            eVar.close();
                        } catch (Exception e4) {
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    eVar = resourceAsStream;
                }
            }
        } catch (Exception e5) {
        }
        if (java2mime.isEmpty()) {
            java2mime.put("8859_1", "ISO-8859-1");
            java2mime.put("iso8859_1", "ISO-8859-1");
            java2mime.put("iso8859-1", "ISO-8859-1");
            java2mime.put("8859_2", "ISO-8859-2");
            java2mime.put("iso8859_2", "ISO-8859-2");
            java2mime.put("iso8859-2", "ISO-8859-2");
            java2mime.put("8859_3", "ISO-8859-3");
            java2mime.put("iso8859_3", "ISO-8859-3");
            java2mime.put("iso8859-3", "ISO-8859-3");
            java2mime.put("8859_4", "ISO-8859-4");
            java2mime.put("iso8859_4", "ISO-8859-4");
            java2mime.put("iso8859-4", "ISO-8859-4");
            java2mime.put("8859_5", "ISO-8859-5");
            java2mime.put("iso8859_5", "ISO-8859-5");
            java2mime.put("iso8859-5", "ISO-8859-5");
            java2mime.put("8859_6", "ISO-8859-6");
            java2mime.put("iso8859_6", "ISO-8859-6");
            java2mime.put("iso8859-6", "ISO-8859-6");
            java2mime.put("8859_7", "ISO-8859-7");
            java2mime.put("iso8859_7", "ISO-8859-7");
            java2mime.put("iso8859-7", "ISO-8859-7");
            java2mime.put("8859_8", "ISO-8859-8");
            java2mime.put("iso8859_8", "ISO-8859-8");
            java2mime.put("iso8859-8", "ISO-8859-8");
            java2mime.put("8859_9", "ISO-8859-9");
            java2mime.put("iso8859_9", "ISO-8859-9");
            java2mime.put("iso8859-9", "ISO-8859-9");
            java2mime.put("sjis", "Shift_JIS");
            java2mime.put("jis", "ISO-2022-JP");
            java2mime.put("iso2022jp", "ISO-2022-JP");
            java2mime.put("euc_jp", "euc-jp");
            java2mime.put("koi8_r", "koi8-r");
            java2mime.put("euc_cn", "euc-cn");
            java2mime.put("euc_tw", "euc-tw");
            java2mime.put("euc_kr", "euc-kr");
        }
        if (mime2java.isEmpty()) {
            mime2java.put("iso-2022-cn", "ISO2022CN");
            mime2java.put("iso-2022-kr", "ISO2022KR");
            mime2java.put("utf-8", StringUtil.__UTF8Alt);
            mime2java.put("utf8", StringUtil.__UTF8Alt);
            mime2java.put("ja_jp.iso2022-7", "ISO2022JP");
            mime2java.put("ja_jp.eucjp", "EUCJIS");
            mime2java.put("euc-kr", "KSC5601");
            mime2java.put("euckr", "KSC5601");
            mime2java.put("us-ascii", "ISO-8859-1");
            mime2java.put("x-us-ascii", "ISO-8859-1");
        }
    }

    public static String getEncoding(DataSource dataSource) {
        String str;
        try {
            ContentType contentType = new ContentType(dataSource.getContentType());
            InputStream inputStream = dataSource.getInputStream();
            switch (checkAscii(inputStream, -1, !contentType.match("text/*"))) {
                case 1:
                    str = "7bit";
                    break;
                case 2:
                    str = "quoted-printable";
                    break;
                default:
                    str = "base64";
                    break;
            }
            try {
                inputStream.close();
                return str;
            } catch (IOException e2) {
                return str;
            }
        } catch (Exception e3) {
            return "base64";
        }
    }

    public static String getEncoding(DataHandler dataHandler) {
        if (dataHandler.getName() != null) {
            return getEncoding(dataHandler.getDataSource());
        }
        try {
            if (new ContentType(dataHandler.getContentType()).match("text/*")) {
                AsciiOutputStream asciiOutputStream = new AsciiOutputStream(false, false);
                try {
                    dataHandler.writeTo(asciiOutputStream);
                } catch (IOException e2) {
                }
                switch (asciiOutputStream.getAscii()) {
                    case 1:
                        return "7bit";
                    case 2:
                        return "quoted-printable";
                    default:
                        return "base64";
                }
            }
            AsciiOutputStream asciiOutputStream2 = new AsciiOutputStream(true, encodeEolStrict);
            try {
                dataHandler.writeTo(asciiOutputStream2);
            } catch (IOException e3) {
            }
            if (asciiOutputStream2.getAscii() == 1) {
                return "7bit";
            }
            return "base64";
        } catch (Exception e4) {
            return "base64";
        }
    }

    public static InputStream decode(InputStream inputStream, String str) throws MessagingException {
        if (str.equalsIgnoreCase("base64")) {
            return new b(inputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new i(inputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new k(inputStream);
        }
        if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit")) {
            return inputStream;
        }
        throw new MessagingException(new StringBuffer().append("Unknown encoding: ").append(str).toString());
    }

    public static OutputStream encode(OutputStream outputStream, String str) throws MessagingException {
        if (str != null) {
            if (str.equalsIgnoreCase("base64")) {
                return new c(outputStream);
            }
            if (str.equalsIgnoreCase("quoted-printable")) {
                return new j(outputStream);
            }
            if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
                return new l(outputStream);
            }
            if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit")) {
                return outputStream;
            }
            throw new MessagingException(new StringBuffer().append("Unknown encoding: ").append(str).toString());
        }
        return outputStream;
    }

    public static OutputStream encode(OutputStream outputStream, String str, String str2) throws MessagingException {
        if (str != null) {
            if (str.equalsIgnoreCase("base64")) {
                return new c(outputStream);
            }
            if (str.equalsIgnoreCase("quoted-printable")) {
                return new j(outputStream);
            }
            if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
                return new l(outputStream, str2);
            }
            if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit")) {
                return outputStream;
            }
            throw new MessagingException(new StringBuffer().append("Unknown encoding: ").append(str).toString());
        }
        return outputStream;
    }

    public static String encodeText(String str) throws UnsupportedEncodingException {
        return encodeText(str, null, null);
    }

    public static String encodeText(String str, String str2, String str3) throws UnsupportedEncodingException {
        return encodeWord(str, str2, str3, false);
    }

    public static String decodeText(String str) throws UnsupportedEncodingException {
        String strDecodeInnerWords;
        boolean z;
        if (str.indexOf("=?") != -1) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", true);
            StringBuffer stringBuffer = new StringBuffer();
            StringBuffer stringBuffer2 = new StringBuffer();
            boolean z2 = false;
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                char cCharAt = strNextToken.charAt(0);
                if (cCharAt == ' ' || cCharAt == '\t' || cCharAt == '\r' || cCharAt == '\n') {
                    stringBuffer2.append(cCharAt);
                } else {
                    try {
                        String strDecodeWord = decodeWord(strNextToken);
                        if (!z2 && stringBuffer2.length() > 0) {
                            stringBuffer.append(stringBuffer2);
                        }
                        strDecodeInnerWords = strDecodeWord;
                        z = true;
                    } catch (ParseException e2) {
                        strDecodeInnerWords = !decodeStrict ? decodeInnerWords(strNextToken) : strNextToken;
                        if (stringBuffer2.length() > 0) {
                            stringBuffer.append(stringBuffer2);
                        }
                        z = false;
                    }
                    stringBuffer.append(strDecodeInnerWords);
                    stringBuffer2.setLength(0);
                    z2 = z;
                }
            }
            return stringBuffer.toString();
        }
        return str;
    }

    public static String encodeWord(String str) throws UnsupportedEncodingException {
        return encodeWord(str, null, null);
    }

    public static String encodeWord(String str, String str2, String str3) throws UnsupportedEncodingException {
        return encodeWord(str, str2, str3, true);
    }

    private static String encodeWord(String str, String str2, String str3, boolean z) throws UnsupportedEncodingException {
        String strJavaCharset;
        boolean z2;
        int iCheckAscii = checkAscii(str);
        if (iCheckAscii != 1) {
            if (str2 == null) {
                strJavaCharset = getDefaultJavaCharset();
                str2 = getDefaultMIMECharset();
            } else {
                strJavaCharset = javaCharset(str2);
            }
            if (str3 == null) {
                if (iCheckAscii != 3) {
                    str3 = "Q";
                } else {
                    str3 = "B";
                }
            }
            if (str3.equalsIgnoreCase("B")) {
                z2 = true;
            } else if (str3.equalsIgnoreCase("Q")) {
                z2 = false;
            } else {
                throw new UnsupportedEncodingException(new StringBuffer().append("Unknown transfer encoding: ").append(str3).toString());
            }
            StringBuffer stringBuffer = new StringBuffer();
            doEncode(str, z2, strJavaCharset, 68 - str2.length(), new StringBuffer().append("=?").append(str2).append("?").append(str3).append("?").toString(), true, z, stringBuffer);
            return stringBuffer.toString();
        }
        return str;
    }

    private static void doEncode(String str, boolean z, String str2, int i, String str3, boolean z2, boolean z3, StringBuffer stringBuffer) throws UnsupportedEncodingException {
        int iA;
        OutputStream hVar;
        int length;
        byte[] bytes = str.getBytes(str2);
        if (z) {
            iA = d.a(bytes);
        } else {
            iA = h.a(bytes, z3);
        }
        if (iA > i && (length = str.length()) > 1) {
            doEncode(str.substring(0, length / 2), z, str2, i, str3, z2, z3, stringBuffer);
            doEncode(str.substring(length / 2, length), z, str2, i, str3, false, z3, stringBuffer);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (z) {
            hVar = new d(byteArrayOutputStream);
        } else {
            hVar = new h(byteArrayOutputStream, z3);
        }
        try {
            hVar.write(bytes);
            hVar.close();
        } catch (IOException e2) {
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (!z2) {
            if (foldEncodedWords) {
                stringBuffer.append("\r\n ");
            } else {
                stringBuffer.append(" ");
            }
        }
        stringBuffer.append(str3);
        for (byte b2 : byteArray) {
            stringBuffer.append((char) b2);
        }
        stringBuffer.append("?=");
    }

    public static String decodeWord(String str) throws ParseException, UnsupportedEncodingException {
        String str2;
        InputStream gVar;
        if (!str.startsWith("=?")) {
            throw new ParseException();
        }
        int iIndexOf = str.indexOf(63, 2);
        if (iIndexOf == -1) {
            throw new ParseException();
        }
        String strJavaCharset = javaCharset(str.substring(2, iIndexOf));
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(63, i);
        if (iIndexOf2 == -1) {
            throw new ParseException();
        }
        String strSubstring = str.substring(i, iIndexOf2);
        int i2 = iIndexOf2 + 1;
        int iIndexOf3 = str.indexOf("?=", i2);
        if (iIndexOf3 == -1) {
            throw new ParseException();
        }
        String strSubstring2 = str.substring(i2, iIndexOf3);
        try {
            if (strSubstring2.length() > 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.a(strSubstring2));
                if (strSubstring.equalsIgnoreCase("B")) {
                    gVar = new b(byteArrayInputStream);
                } else if (strSubstring.equalsIgnoreCase("Q")) {
                    gVar = new g(byteArrayInputStream);
                } else {
                    throw new UnsupportedEncodingException(new StringBuffer().append("unknown encoding: ").append(strSubstring).toString());
                }
                int iAvailable = byteArrayInputStream.available();
                byte[] bArr = new byte[iAvailable];
                int i3 = gVar.read(bArr, 0, iAvailable);
                str2 = i3 <= 0 ? "" : new String(bArr, 0, i3, strJavaCharset);
            } else {
                str2 = "";
            }
            if (iIndexOf3 + 2 < str.length()) {
                String strSubstring3 = str.substring(iIndexOf3 + 2);
                if (!decodeStrict) {
                    strSubstring3 = decodeInnerWords(strSubstring3);
                }
                return new StringBuffer().append(str2).append(strSubstring3).toString();
            }
            return str2;
        } catch (UnsupportedEncodingException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new ParseException();
        } catch (IllegalArgumentException e4) {
            throw new UnsupportedEncodingException();
        }
    }

    private static String decodeInnerWords(String str) throws UnsupportedEncodingException {
        int i = 0;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            int iIndexOf = str.indexOf("=?", i);
            if (iIndexOf < 0) {
                break;
            }
            stringBuffer.append(str.substring(i, iIndexOf));
            int iIndexOf2 = str.indexOf("?=", iIndexOf);
            if (iIndexOf2 < 0) {
                break;
            }
            String strSubstring = str.substring(iIndexOf, iIndexOf2 + 2);
            try {
                strSubstring = decodeWord(strSubstring);
            } catch (ParseException e2) {
            }
            stringBuffer.append(strSubstring);
            i = iIndexOf2 + 2;
        }
        if (i != 0) {
            if (i < str.length()) {
                stringBuffer.append(str.substring(i));
            }
            return stringBuffer.toString();
        }
        return str;
    }

    public static String quote(String str, String str2) {
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\' || cCharAt == '\r' || cCharAt == '\n') {
                StringBuffer stringBuffer = new StringBuffer(length + 3);
                stringBuffer.append('\"');
                stringBuffer.append(str.substring(0, i));
                int i2 = i;
                char c2 = 0;
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if ((cCharAt2 == '\"' || cCharAt2 == '\\' || cCharAt2 == '\r' || cCharAt2 == '\n') && (cCharAt2 != '\n' || c2 != '\r')) {
                        stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    stringBuffer.append(cCharAt2);
                    i2++;
                    c2 = cCharAt2;
                }
                stringBuffer.append('\"');
                return stringBuffer.toString();
            }
            if (cCharAt < ' ' || cCharAt >= 127 || str2.indexOf(cCharAt) >= 0) {
                z = true;
            }
        }
        if (z) {
            StringBuffer stringBuffer2 = new StringBuffer(length + 2);
            stringBuffer2.append('\"').append(str).append('\"');
            return stringBuffer2.toString();
        }
        return str;
    }

    public static String fold(int i, String str) {
        if (foldText) {
            int length = str.length() - 1;
            while (length >= 0) {
                char cCharAt = str.charAt(length);
                if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                    break;
                }
                length--;
            }
            if (length != str.length() - 1) {
                str = str.substring(0, length + 1);
            }
            if (str.length() + i > 76) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 4);
                char cCharAt2 = 0;
                while (true) {
                    if (str.length() + i <= 76) {
                        break;
                    }
                    int i2 = -1;
                    char c2 = cCharAt2;
                    int i3 = 0;
                    while (i3 < str.length() && (i2 == -1 || i + i3 <= 76)) {
                        char cCharAt3 = str.charAt(i3);
                        if ((cCharAt3 == ' ' || cCharAt3 == '\t') && c2 != ' ' && c2 != '\t') {
                            i2 = i3;
                        }
                        i3++;
                        c2 = cCharAt3;
                    }
                    if (i2 == -1) {
                        stringBuffer.append(str);
                        str = "";
                        break;
                    }
                    stringBuffer.append(str.substring(0, i2));
                    stringBuffer.append("\r\n");
                    cCharAt2 = str.charAt(i2);
                    stringBuffer.append(cCharAt2);
                    str = str.substring(i2 + 1);
                    i = 1;
                }
                stringBuffer.append(str);
                return stringBuffer.toString();
            }
            return str;
        }
        return str;
    }

    public static String unfold(String str) {
        char cCharAt;
        if (foldText) {
            StringBuffer stringBuffer = null;
            while (true) {
                int iIndexOfAny = indexOfAny(str, "\r\n");
                if (iIndexOfAny < 0) {
                    break;
                }
                int length = str.length();
                int i = iIndexOfAny + 1;
                if (i < length && str.charAt(i - 1) == '\r' && str.charAt(i) == '\n') {
                    i++;
                }
                if (iIndexOfAny == 0 || str.charAt(iIndexOfAny - 1) != '\\') {
                    if (i < length && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\t')) {
                        int i2 = i + 1;
                        while (i2 < length) {
                            char cCharAt2 = str.charAt(i2);
                            if (cCharAt2 != ' ' && cCharAt2 != '\t') {
                                break;
                            }
                            i2++;
                        }
                        if (stringBuffer == null) {
                            stringBuffer = new StringBuffer(str.length());
                        }
                        if (iIndexOfAny != 0) {
                            stringBuffer.append(str.substring(0, iIndexOfAny));
                            stringBuffer.append(' ');
                        }
                        str = str.substring(i2);
                    } else {
                        if (stringBuffer == null) {
                            stringBuffer = new StringBuffer(str.length());
                        }
                        stringBuffer.append(str.substring(0, i));
                        str = str.substring(i);
                    }
                } else {
                    if (stringBuffer == null) {
                        stringBuffer = new StringBuffer(str.length());
                    }
                    stringBuffer.append(str.substring(0, iIndexOfAny - 1));
                    stringBuffer.append(str.substring(iIndexOfAny, i));
                    str = str.substring(i);
                }
            }
            if (stringBuffer != null) {
                stringBuffer.append(str);
                return stringBuffer.toString();
            }
            return str;
        }
        return str;
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    private static int indexOfAny(String str, String str2, int i) {
        try {
            int length = str.length();
            for (int i2 = i; i2 < length; i2++) {
                if (str2.indexOf(str.charAt(i2)) >= 0) {
                    return i2;
                }
            }
            return -1;
        } catch (StringIndexOutOfBoundsException e2) {
            return -1;
        }
    }

    public static String javaCharset(String str) {
        String str2;
        return (mime2java == null || str == null || (str2 = (String) mime2java.get(str.toLowerCase())) == null) ? str : str2;
    }

    public static String mimeCharset(String str) {
        String str2;
        return (java2mime == null || str == null || (str2 = (String) java2mime.get(str.toLowerCase())) == null) ? str : str2;
    }

    public static String getDefaultJavaCharset() {
        if (defaultJavaCharset == null) {
            String property = null;
            try {
                property = System.getProperty("mail.mime.charset");
            } catch (SecurityException e2) {
            }
            if (property != null && property.length() > 0) {
                defaultJavaCharset = javaCharset(property);
                return defaultJavaCharset;
            }
            try {
                defaultJavaCharset = System.getProperty("file.encoding", "8859_1");
            } catch (SecurityException e3) {
                defaultJavaCharset = new InputStreamReader(new InputStream() { // from class: javax.mail.internet.MimeUtility.1NullInputStream
                    @Override // java.io.InputStream
                    public int read() {
                        return 0;
                    }
                }).getEncoding();
                if (defaultJavaCharset == null) {
                    defaultJavaCharset = "8859_1";
                }
            }
        }
        return defaultJavaCharset;
    }

    static String getDefaultMIMECharset() {
        if (defaultMIMECharset == null) {
            try {
                defaultMIMECharset = System.getProperty("mail.mime.charset");
            } catch (SecurityException e2) {
            }
        }
        if (defaultMIMECharset == null) {
            defaultMIMECharset = mimeCharset(getDefaultJavaCharset());
        }
        return defaultMIMECharset;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    private static void loadMappings(e eVar, Hashtable hashtable) {
        while (true) {
            try {
                String strA = eVar.a();
                if (strA != null) {
                    if (!strA.startsWith("--") || !strA.endsWith("--")) {
                        if (strA.trim().length() != 0 && !strA.startsWith("#")) {
                            StringTokenizer stringTokenizer = new StringTokenizer(strA, " \t");
                            try {
                                String strNextToken = stringTokenizer.nextToken();
                                hashtable.put(strNextToken.toLowerCase(), stringTokenizer.nextToken());
                            } catch (NoSuchElementException e2) {
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } catch (IOException e3) {
                return;
            }
        }
    }

    static int checkAscii(String str) {
        int i = 0;
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (nonascii(str.charAt(i3))) {
                i++;
            } else {
                i2++;
            }
        }
        if (i == 0) {
            return 1;
        }
        if (i2 > i) {
            return 2;
        }
        return 3;
    }

    static int checkAscii(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (byte b2 : bArr) {
            if (nonascii(b2 & UnsignedBytes.MAX_VALUE)) {
                i++;
            } else {
                i2++;
            }
        }
        if (i == 0) {
            return 1;
        }
        if (i2 > i) {
            return 2;
        }
        return 3;
    }

    static int checkAscii(InputStream inputStream, int i, boolean z) {
        byte[] bArr;
        int i2;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        boolean z4 = encodeEolStrict && z;
        if (i == 0) {
            bArr = null;
            i2 = 0;
            i3 = 4096;
            z2 = false;
            z3 = false;
            i4 = 0;
            i5 = 0;
        } else {
            int iMin = i == -1 ? 4096 : Math.min(i, 4096);
            bArr = new byte[iMin];
            i2 = 0;
            i3 = iMin;
            z2 = false;
            z3 = false;
            i4 = 0;
            i5 = 0;
        }
        while (i != 0) {
            try {
                int i7 = inputStream.read(bArr, 0, i3);
                if (i7 == -1) {
                    break;
                }
                int i8 = i2;
                int i9 = 0;
                int i10 = 0;
                boolean z5 = z3;
                int i11 = i5;
                boolean z6 = z5;
                int i12 = i4;
                boolean z7 = z2;
                int i13 = i12;
                while (i9 < i7) {
                    try {
                        int i14 = bArr[i9] & UnsignedBytes.MAX_VALUE;
                        if (z4 && ((i10 == 13 && i14 != 10) || (i10 != 13 && i14 == 10))) {
                            z7 = true;
                        }
                        if (i14 == 13 || i14 == 10) {
                            i6 = 0;
                        } else {
                            i6 = i8 + 1;
                            if (i6 > 998) {
                                z6 = true;
                            }
                        }
                        if (nonascii(i14)) {
                            if (z) {
                                return 3;
                            }
                            i13++;
                        } else {
                            i11++;
                        }
                        i9++;
                        i8 = i6;
                        i10 = i14;
                    } catch (IOException e2) {
                        boolean z8 = z7;
                        i4 = i13;
                        z2 = z8;
                        boolean z9 = z6;
                        i5 = i11;
                        z3 = z9;
                    }
                }
                if (i != -1) {
                    i -= i7;
                    i2 = i8;
                    boolean z10 = z6;
                    i5 = i11;
                    z3 = z10;
                    int i15 = i13;
                    z2 = z7;
                    i4 = i15;
                } else {
                    i2 = i8;
                    boolean z11 = z6;
                    i5 = i11;
                    z3 = z11;
                    int i16 = i13;
                    z2 = z7;
                    i4 = i16;
                }
            } catch (IOException e3) {
            }
        }
        if (i == 0 && z) {
            return 3;
        }
        if (i4 == 0) {
            if (z2) {
                return 3;
            }
            if (z3) {
                return 2;
            }
            return 1;
        }
        if (i5 > i4) {
            return 2;
        }
        return 3;
    }

    static final boolean nonascii(int i) {
        return i >= 127 || !(i >= 32 || i == 13 || i == 10 || i == 9);
    }
}
