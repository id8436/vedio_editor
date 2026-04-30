package javax.mail.internet;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.mail.internet.HeaderTokenizer;

/* JADX INFO: loaded from: classes3.dex */
public class ParameterList {
    private static boolean decodeParameters;
    private static boolean decodeParametersStrict;
    private static boolean encodeParameters;
    private static final char[] hex;
    private Map list = new LinkedHashMap();

    /* JADX INFO: renamed from: javax.mail.internet.ParameterList$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    static {
        encodeParameters = false;
        decodeParameters = false;
        decodeParametersStrict = false;
        try {
            String property = System.getProperty("mail.mime.encodeparameters");
            encodeParameters = property != null && property.equalsIgnoreCase("true");
            String property2 = System.getProperty("mail.mime.decodeparameters");
            decodeParameters = property2 != null && property2.equalsIgnoreCase("true");
            String property3 = System.getProperty("mail.mime.decodeparameters.strict");
            decodeParametersStrict = property3 != null && property3.equalsIgnoreCase("true");
        } catch (SecurityException e2) {
        }
        hex = new char[]{'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    class Value {
        String encodedValue;
        String value;

        private Value() {
        }

        Value(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    class ParamEnum implements Enumeration {
        private Iterator it;

        ParamEnum(Iterator it) {
            this.it = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.it.hasNext();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return this.it.next();
        }
    }

    public ParameterList() {
    }

    public ParameterList(String str) throws ParseException {
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(str, HeaderTokenizer.MIME);
        while (true) {
            HeaderTokenizer.Token next = headerTokenizer.next();
            int type = next.getType();
            if (type != -4) {
                if (((char) type) == ';') {
                    HeaderTokenizer.Token next2 = headerTokenizer.next();
                    if (next2.getType() == -4) {
                        return;
                    }
                    if (next2.getType() != -1) {
                        throw new ParseException(new StringBuffer().append("Expected parameter name, got \"").append(next2.getValue()).append("\"").toString());
                    }
                    String lowerCase = next2.getValue().toLowerCase();
                    HeaderTokenizer.Token next3 = headerTokenizer.next();
                    if (((char) next3.getType()) != '=') {
                        throw new ParseException(new StringBuffer().append("Expected '=', got \"").append(next3.getValue()).append("\"").toString());
                    }
                    HeaderTokenizer.Token next4 = headerTokenizer.next();
                    int type2 = next4.getType();
                    if (type2 != -1 && type2 != -2) {
                        throw new ParseException(new StringBuffer().append("Expected parameter value, got \"").append(next4.getValue()).append("\"").toString());
                    }
                    String value = next4.getValue();
                    if (decodeParameters && lowerCase.endsWith("*")) {
                        this.list.put(lowerCase.substring(0, lowerCase.length() - 1), decodeValue(value));
                    } else {
                        this.list.put(lowerCase, value);
                    }
                } else {
                    throw new ParseException(new StringBuffer().append("Expected ';', got \"").append(next.getValue()).append("\"").toString());
                }
            } else {
                return;
            }
        }
    }

    public int size() {
        return this.list.size();
    }

    public String get(String str) {
        Object obj = this.list.get(str.trim().toLowerCase());
        if (obj instanceof Value) {
            return ((Value) obj).value;
        }
        return (String) obj;
    }

    public void set(String str, String str2) {
        this.list.put(str.trim().toLowerCase(), str2);
    }

    public void set(String str, String str2, String str3) {
        if (encodeParameters) {
            Value valueEncodeValue = encodeValue(str2, str3);
            if (valueEncodeValue != null) {
                this.list.put(str.trim().toLowerCase(), valueEncodeValue);
                return;
            } else {
                set(str, str2);
                return;
            }
        }
        set(str, str2);
    }

    public void remove(String str) {
        this.list.remove(str.trim().toLowerCase());
    }

    public Enumeration getNames() {
        return new ParamEnum(this.list.keySet().iterator());
    }

    public String toString() {
        return toString(0);
    }

    public String toString(int i) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        for (String string : this.list.keySet()) {
            Object obj = this.list.get(string);
            if (obj instanceof Value) {
                str = ((Value) obj).encodedValue;
                string = new StringBuffer().append(string).append('*').toString();
            } else {
                str = (String) obj;
            }
            String strQuote = quote(str);
            stringBuffer.append("; ");
            int i2 = i + 2;
            if (string.length() + strQuote.length() + 1 + i2 > 76) {
                stringBuffer.append("\r\n\t");
                i2 = 8;
            }
            stringBuffer.append(string).append('=');
            int length = string.length() + 1 + i2;
            if (strQuote.length() + length > 76) {
                String strFold = MimeUtility.fold(length, strQuote);
                stringBuffer.append(strFold);
                int iLastIndexOf = strFold.lastIndexOf(10);
                i = length + (iLastIndexOf >= 0 ? (strFold.length() - iLastIndexOf) - 1 : strFold.length());
            } else {
                stringBuffer.append(strQuote);
                i = length + strQuote.length();
            }
        }
        return stringBuffer.toString();
    }

    private String quote(String str) {
        return MimeUtility.quote(str, HeaderTokenizer.MIME);
    }

    private Value encodeValue(String str, String str2) {
        if (MimeUtility.checkAscii(str) == 1) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes(MimeUtility.javaCharset(str2));
            StringBuffer stringBuffer = new StringBuffer(bytes.length + str2.length() + 2);
            stringBuffer.append(str2).append("''");
            for (byte b2 : bytes) {
                char c2 = (char) (b2 & UnsignedBytes.MAX_VALUE);
                if (c2 <= ' ' || c2 >= 127 || c2 == '*' || c2 == '\'' || c2 == '%' || HeaderTokenizer.MIME.indexOf(c2) >= 0) {
                    stringBuffer.append('%').append(hex[c2 >> 4]).append(hex[c2 & 15]);
                } else {
                    stringBuffer.append(c2);
                }
            }
            Value value = new Value(null);
            value.value = str;
            value.encodedValue = stringBuffer.toString();
            return value;
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    private Value decodeValue(String str) throws ParseException {
        Value value = new Value(null);
        value.encodedValue = str;
        value.value = str;
        try {
            int iIndexOf = str.indexOf(39);
            if (iIndexOf <= 0) {
                if (decodeParametersStrict) {
                    throw new ParseException(new StringBuffer().append("Missing charset in encoded value: ").append(str).toString());
                }
            } else {
                String strSubstring = str.substring(0, iIndexOf);
                int iIndexOf2 = str.indexOf(39, iIndexOf + 1);
                if (iIndexOf2 < 0) {
                    if (decodeParametersStrict) {
                        throw new ParseException(new StringBuffer().append("Missing language in encoded value: ").append(str).toString());
                    }
                } else {
                    str.substring(iIndexOf + 1, iIndexOf2);
                    String strSubstring2 = str.substring(iIndexOf2 + 1);
                    byte[] bArr = new byte[strSubstring2.length()];
                    int i = 0;
                    int i2 = 0;
                    while (i2 < strSubstring2.length()) {
                        char cCharAt = strSubstring2.charAt(i2);
                        if (cCharAt == '%') {
                            cCharAt = (char) Integer.parseInt(strSubstring2.substring(i2 + 1, i2 + 3), 16);
                            i2 += 2;
                        }
                        bArr[i] = (byte) cCharAt;
                        i2++;
                        i++;
                    }
                    value.value = new String(bArr, 0, i, MimeUtility.javaCharset(strSubstring));
                }
            }
        } catch (UnsupportedEncodingException e2) {
            if (decodeParametersStrict) {
                throw new ParseException(e2.toString());
            }
        } catch (NumberFormatException e3) {
            if (decodeParametersStrict) {
                throw new ParseException(e3.toString());
            }
        } catch (StringIndexOutOfBoundsException e4) {
            if (decodeParametersStrict) {
                throw new ParseException(e4.toString());
            }
        }
        return value;
    }
}
