package org.mortbay.util;

import com.google.common.base.Ascii;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes3.dex */
public class QuotedStringTokenizer extends StringTokenizer {
    private static final String __delim = "\t\n\r";
    private String _delim;
    private boolean _double;
    private boolean _hasToken;
    private int _i;
    private int _lastStart;
    private boolean _returnDelimiters;
    private boolean _returnQuotes;
    private boolean _single;
    private String _string;
    private StringBuffer _token;

    public QuotedStringTokenizer(String str, String str2, boolean z, boolean z2) {
        super("");
        this._delim = __delim;
        this._returnQuotes = false;
        this._returnDelimiters = false;
        this._hasToken = false;
        this._i = 0;
        this._lastStart = 0;
        this._double = true;
        this._single = true;
        this._string = str;
        if (str2 != null) {
            this._delim = str2;
        }
        this._returnDelimiters = z;
        this._returnQuotes = z2;
        if (this._delim.indexOf(39) >= 0 || this._delim.indexOf(34) >= 0) {
            throw new Error(new StringBuffer().append("Can't use quotes as delimiters: ").append(this._delim).toString());
        }
        this._token = new StringBuffer(this._string.length() > 1024 ? 512 : this._string.length() / 2);
    }

    public QuotedStringTokenizer(String str, String str2, boolean z) {
        this(str, str2, z, false);
    }

    public QuotedStringTokenizer(String str, String str2) {
        this(str, str2, false, false);
    }

    public QuotedStringTokenizer(String str) {
        this(str, null, false, false);
    }

    @Override // java.util.StringTokenizer
    public boolean hasMoreTokens() {
        if (this._hasToken) {
            return true;
        }
        this._lastStart = this._i;
        boolean z = false;
        char c2 = 0;
        while (this._i < this._string.length()) {
            String str = this._string;
            int i = this._i;
            this._i = i + 1;
            char cCharAt = str.charAt(i);
            switch (c2) {
                case 0:
                    if (this._delim.indexOf(cCharAt) >= 0) {
                        if (this._returnDelimiters) {
                            this._token.append(cCharAt);
                            this._hasToken = true;
                            return true;
                        }
                    } else if (cCharAt == '\'' && this._single) {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 2;
                    } else if (cCharAt == '\"' && this._double) {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 3;
                    } else {
                        this._token.append(cCharAt);
                        this._hasToken = true;
                        c2 = 1;
                    }
                    break;
                case 1:
                    this._hasToken = true;
                    if (this._delim.indexOf(cCharAt) >= 0) {
                        if (this._returnDelimiters) {
                            this._i--;
                        }
                        return this._hasToken;
                    }
                    if (cCharAt == '\'' && this._single) {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 2;
                    } else if (cCharAt == '\"' && this._double) {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 3;
                    } else {
                        this._token.append(cCharAt);
                    }
                    break;
                    break;
                case 2:
                    this._hasToken = true;
                    if (z) {
                        this._token.append(cCharAt);
                        z = false;
                    } else if (cCharAt == '\'') {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 1;
                    } else if (cCharAt == '\\') {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        z = true;
                    } else {
                        this._token.append(cCharAt);
                    }
                    break;
                case 3:
                    this._hasToken = true;
                    if (z) {
                        this._token.append(cCharAt);
                        z = false;
                    } else if (cCharAt == '\"') {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        c2 = 1;
                    } else if (cCharAt == '\\') {
                        if (this._returnQuotes) {
                            this._token.append(cCharAt);
                        }
                        z = true;
                    } else {
                        this._token.append(cCharAt);
                    }
                    break;
            }
        }
        return this._hasToken;
    }

    @Override // java.util.StringTokenizer
    public String nextToken() throws NoSuchElementException {
        if (!hasMoreTokens() || this._token == null) {
            throw new NoSuchElementException();
        }
        String string = this._token.toString();
        this._token.setLength(0);
        this._hasToken = false;
        return string;
    }

    @Override // java.util.StringTokenizer
    public String nextToken(String str) throws NoSuchElementException {
        this._delim = str;
        this._i = this._lastStart;
        this._token.setLength(0);
        this._hasToken = false;
        return nextToken();
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public boolean hasMoreElements() {
        return hasMoreTokens();
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        return nextToken();
    }

    @Override // java.util.StringTokenizer
    public int countTokens() {
        return -1;
    }

    public static String quote(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\\' || cCharAt == '\"' || cCharAt == '\'' || Character.isWhitespace(cCharAt) || str2.indexOf(cCharAt) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
                quote(stringBuffer, str);
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
        quote(stringBuffer, str);
        return stringBuffer.toString();
    }

    public static void quote(StringBuffer stringBuffer, String str) {
        int i = 0;
        synchronized (stringBuffer) {
            stringBuffer.append('\"');
            char[] charArray = null;
            while (true) {
                if (i < str.length()) {
                    switch (str.charAt(i)) {
                        case '\b':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\b");
                            break;
                        case '\t':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\t");
                            break;
                        case '\n':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\n");
                            break;
                        case '\f':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\f");
                            break;
                        case '\r':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\r");
                            break;
                        case '\"':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\\"");
                            break;
                        case '\\':
                            charArray = str.toCharArray();
                            stringBuffer.append(charArray, 0, i);
                            stringBuffer.append("\\\\");
                            break;
                        default:
                            i++;
                            break;
                    }
                }
            }
            if (charArray == null) {
                stringBuffer.append(str);
            } else {
                for (int i2 = i + 1; i2 < str.length(); i2++) {
                    char cCharAt = str.charAt(i2);
                    switch (cCharAt) {
                        case '\b':
                            stringBuffer.append("\\b");
                            break;
                        case '\t':
                            stringBuffer.append("\\t");
                            break;
                        case '\n':
                            stringBuffer.append("\\n");
                            break;
                        case '\f':
                            stringBuffer.append("\\f");
                            break;
                        case '\r':
                            stringBuffer.append("\\r");
                            break;
                        case '\"':
                            stringBuffer.append("\\\"");
                            break;
                        case '\\':
                            stringBuffer.append("\\\\");
                            break;
                        default:
                            stringBuffer.append(cCharAt);
                            break;
                    }
                }
            }
            stringBuffer.append('\"');
        }
    }

    public static void quoteIfNeeded(StringBuffer stringBuffer, String str) {
        synchronized (stringBuffer) {
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    i = -1;
                } else {
                    switch (str.charAt(i)) {
                        case '\b':
                        case '\t':
                        case '\n':
                        case '\f':
                        case '\r':
                        case ' ':
                        case '\"':
                        case '%':
                        case '+':
                        case ';':
                        case '=':
                        case '\\':
                            stringBuffer.append('\"');
                            for (int i2 = 0; i2 < i; i2++) {
                                stringBuffer.append(str.charAt(i2));
                            }
                            break;
                        default:
                            i++;
                            break;
                    }
                }
            }
            if (i < 0) {
                stringBuffer.append(str);
                return;
            }
            while (i < str.length()) {
                char cCharAt = str.charAt(i);
                switch (cCharAt) {
                    case '\b':
                        stringBuffer.append("\\b");
                        break;
                    case '\t':
                        stringBuffer.append("\\t");
                        break;
                    case '\n':
                        stringBuffer.append("\\n");
                        break;
                    case '\f':
                        stringBuffer.append("\\f");
                        break;
                    case '\r':
                        stringBuffer.append("\\r");
                        break;
                    case '\"':
                        stringBuffer.append("\\\"");
                        break;
                    case '\\':
                        stringBuffer.append("\\\\");
                        break;
                    default:
                        stringBuffer.append(cCharAt);
                        break;
                }
                i++;
            }
            stringBuffer.append('\"');
        }
    }

    public static String unquote(String str) {
        char cCharAt;
        String string;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (cCharAt = str.charAt(0)) != str.charAt(str.length() - 1)) {
            return str;
        }
        if (cCharAt == '\"' || cCharAt == '\'') {
            StringBuffer stringBuffer = new StringBuffer(str.length() - 2);
            synchronized (stringBuffer) {
                int i = 1;
                boolean z = false;
                while (i < str.length() - 1) {
                    char cCharAt2 = str.charAt(i);
                    if (z) {
                        switch (cCharAt2) {
                            case 'b':
                                stringBuffer.append('\b');
                                z = false;
                                break;
                            case 'f':
                                stringBuffer.append('\f');
                                z = false;
                                break;
                            case 'n':
                                stringBuffer.append('\n');
                                z = false;
                                break;
                            case 'r':
                                stringBuffer.append(CharUtils.CR);
                                z = false;
                                break;
                            case 't':
                                stringBuffer.append('\t');
                                z = false;
                                break;
                            case 'u':
                                int i2 = i + 1;
                                int i3 = i2 + 1;
                                int iConvertHexDigit = (TypeUtil.convertHexDigit((byte) str.charAt(i)) << Ascii.CAN) + (TypeUtil.convertHexDigit((byte) str.charAt(i2)) << Ascii.DLE);
                                int i4 = i3 + 1;
                                int iConvertHexDigit2 = (TypeUtil.convertHexDigit((byte) str.charAt(i3)) << 8) + iConvertHexDigit;
                                i = i4 + 1;
                                stringBuffer.append((char) (TypeUtil.convertHexDigit((byte) str.charAt(i4)) + iConvertHexDigit2));
                                z = false;
                                break;
                            default:
                                stringBuffer.append(cCharAt2);
                                z = false;
                                break;
                        }
                    } else if (cCharAt2 == '\\') {
                        z = true;
                    } else {
                        stringBuffer.append(cCharAt2);
                    }
                    i++;
                }
                string = stringBuffer.toString();
            }
            return string;
        }
        return str;
    }

    public boolean getDouble() {
        return this._double;
    }

    public void setDouble(boolean z) {
        this._double = z;
    }

    public boolean getSingle() {
        return this._single;
    }

    public void setSingle(boolean z) {
        this._single = z;
    }
}
