package org.apache.http.client.utils;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicHeaderValueParserHC4;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class URLEncodedUtilsHC4 {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final int RADIX = 16;
    private static final char QP_SEP_A = '&';
    private static final char QP_SEP_S = ';';
    private static final char[] QP_SEPS = {QP_SEP_A, QP_SEP_S};
    private static final String QP_SEP_PATTERN = "[" + new String(QP_SEPS) + "]";
    private static final BitSet UNRESERVED = new BitSet(256);
    private static final BitSet PUNCT = new BitSet(256);
    private static final BitSet USERINFO = new BitSet(256);
    private static final BitSet PATHSAFE = new BitSet(256);
    private static final BitSet URIC = new BitSet(256);
    private static final BitSet RESERVED = new BitSet(256);
    private static final BitSet URLENCODER = new BitSet(256);

    public static List<NameValuePair> parse(URI uri, String str) {
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery), QP_SEP_PATTERN, str);
        return arrayList;
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        String string;
        ContentType contentType = ContentType.get(httpEntity);
        if (contentType == null || !contentType.getMimeType().equalsIgnoreCase("application/x-www-form-urlencoded") || (string = EntityUtilsHC4.toString(httpEntity, Consts.ASCII)) == null || string.length() <= 0) {
            return Collections.emptyList();
        }
        Charset charset = contentType.getCharset();
        if (charset == null) {
            charset = Charset.forName("ISO-8859-1");
        }
        return parse(string, charset, QP_SEPS);
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType == null) {
            return false;
        }
        HeaderElement[] elements = contentType.getElements();
        if (elements.length > 0) {
            return elements[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
        }
        return false;
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        parse(list, scanner, QP_SEP_PATTERN, str);
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str, String str2) {
        String strDecodeFormFields;
        scanner.useDelimiter(str);
        while (scanner.hasNext()) {
            String strDecodeFormFields2 = null;
            String next = scanner.next();
            int iIndexOf = next.indexOf("=");
            if (iIndexOf != -1) {
                strDecodeFormFields = decodeFormFields(next.substring(0, iIndexOf).trim(), str2);
                strDecodeFormFields2 = decodeFormFields(next.substring(iIndexOf + 1).trim(), str2);
            } else {
                strDecodeFormFields = decodeFormFields(next.trim(), str2);
            }
            list.add(new BasicNameValuePair(strDecodeFormFields, strDecodeFormFields2));
        }
    }

    static {
        for (int i = 97; i <= 122; i++) {
            UNRESERVED.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            UNRESERVED.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            UNRESERVED.set(i3);
        }
        UNRESERVED.set(95);
        UNRESERVED.set(45);
        UNRESERVED.set(46);
        UNRESERVED.set(42);
        URLENCODER.or(UNRESERVED);
        UNRESERVED.set(33);
        UNRESERVED.set(126);
        UNRESERVED.set(39);
        UNRESERVED.set(40);
        UNRESERVED.set(41);
        PUNCT.set(44);
        PUNCT.set(59);
        PUNCT.set(58);
        PUNCT.set(36);
        PUNCT.set(38);
        PUNCT.set(43);
        PUNCT.set(61);
        USERINFO.or(UNRESERVED);
        USERINFO.or(PUNCT);
        PATHSAFE.or(UNRESERVED);
        PATHSAFE.set(47);
        PATHSAFE.set(59);
        PATHSAFE.set(58);
        PATHSAFE.set(64);
        PATHSAFE.set(38);
        PATHSAFE.set(61);
        PATHSAFE.set(43);
        PATHSAFE.set(36);
        PATHSAFE.set(44);
        RESERVED.set(59);
        RESERVED.set(47);
        RESERVED.set(63);
        RESERVED.set(58);
        RESERVED.set(64);
        RESERVED.set(38);
        RESERVED.set(61);
        RESERVED.set(43);
        RESERVED.set(36);
        RESERVED.set(44);
        RESERVED.set(91);
        RESERVED.set(93);
        URIC.or(RESERVED);
        URIC.or(UNRESERVED);
    }

    public static List<NameValuePair> parse(String str, Charset charset) {
        return parse(str, charset, QP_SEPS);
    }

    public static List<NameValuePair> parse(String str, Charset charset, char... cArr) {
        if (str == null) {
            return Collections.emptyList();
        }
        BasicHeaderValueParserHC4 basicHeaderValueParserHC4 = BasicHeaderValueParserHC4.INSTANCE;
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, charArrayBuffer.length());
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            NameValuePair nameValuePair = basicHeaderValueParserHC4.parseNameValuePair(charArrayBuffer, parserCursor, cArr);
            if (nameValuePair.getName().length() > 0) {
                arrayList.add(new BasicNameValuePair(decodeFormFields(nameValuePair.getName(), charset), decodeFormFields(nameValuePair.getValue(), charset)));
            }
        }
        return arrayList;
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        return format(list, QP_SEP_A, str);
    }

    public static String format(List<? extends NameValuePair> list, char c2, String str) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String strEncodeFormFields = encodeFormFields(nameValuePair.getName(), str);
            String strEncodeFormFields2 = encodeFormFields(nameValuePair.getValue(), str);
            if (sb.length() > 0) {
                sb.append(c2);
            }
            sb.append(strEncodeFormFields);
            if (strEncodeFormFields2 != null) {
                sb.append("=");
                sb.append(strEncodeFormFields2);
            }
        }
        return sb.toString();
    }

    public static String format(Iterable<? extends NameValuePair> iterable, Charset charset) {
        return format(iterable, QP_SEP_A, charset);
    }

    public static String format(Iterable<? extends NameValuePair> iterable, char c2, Charset charset) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : iterable) {
            String strEncodeFormFields = encodeFormFields(nameValuePair.getName(), charset);
            String strEncodeFormFields2 = encodeFormFields(nameValuePair.getValue(), charset);
            if (sb.length() > 0) {
                sb.append(c2);
            }
            sb.append(strEncodeFormFields);
            if (strEncodeFormFields2 != null) {
                sb.append("=");
                sb.append(strEncodeFormFields2);
            }
        }
        return sb.toString();
    }

    private static String urlEncode(String str, Charset charset, BitSet bitSet, boolean z) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ByteBuffer byteBufferEncode = charset.encode(str);
        while (byteBufferEncode.hasRemaining()) {
            int i = byteBufferEncode.get() & UnsignedBytes.MAX_VALUE;
            if (bitSet.get(i)) {
                sb.append((char) i);
            } else if (z && i == 32) {
                sb.append('+');
            } else {
                sb.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(i & 15, 16));
                sb.append(upperCase);
                sb.append(upperCase2);
            }
        }
        return sb.toString();
    }

    private static String urlDecode(String str, Charset charset, boolean z) {
        if (str == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length());
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        while (charBufferWrap.hasRemaining()) {
            char c2 = charBufferWrap.get();
            if (c2 == '%' && charBufferWrap.remaining() >= 2) {
                char c3 = charBufferWrap.get();
                char c4 = charBufferWrap.get();
                int iDigit = Character.digit(c3, 16);
                int iDigit2 = Character.digit(c4, 16);
                if (iDigit != -1 && iDigit2 != -1) {
                    byteBufferAllocate.put((byte) ((iDigit << 4) + iDigit2));
                } else {
                    byteBufferAllocate.put(ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS);
                    byteBufferAllocate.put((byte) c3);
                    byteBufferAllocate.put((byte) c4);
                }
            } else if (z && c2 == '+') {
                byteBufferAllocate.put((byte) 32);
            } else {
                byteBufferAllocate.put((byte) c2);
            }
        }
        byteBufferAllocate.flip();
        return charset.decode(byteBufferAllocate).toString();
    }

    private static String decodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlDecode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, true);
    }

    private static String decodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlDecode(str, charset, true);
    }

    private static String encodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlEncode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, URLENCODER, true);
    }

    private static String encodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlEncode(str, charset, URLENCODER, true);
    }

    static String encUserInfo(String str, Charset charset) {
        return urlEncode(str, charset, USERINFO, false);
    }

    static String encUric(String str, Charset charset) {
        return urlEncode(str, charset, URIC, false);
    }

    static String encPath(String str, Charset charset) {
        return urlEncode(str, charset, PATHSAFE, false);
    }
}
