package org.apache.http.message;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class BasicHeaderValueParserHC4 implements HeaderValueParser {

    @Deprecated
    public static final BasicHeaderValueParserHC4 DEFAULT = new BasicHeaderValueParserHC4();
    public static final BasicHeaderValueParserHC4 INSTANCE = new BasicHeaderValueParserHC4();
    private static final char PARAM_DELIMITER = ';';
    private static final char ELEM_DELIMITER = ',';
    private static final char[] ALL_DELIMITERS = {PARAM_DELIMITER, ELEM_DELIMITER};

    public static HeaderElement[] parseElements(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseElements(charArrayBuffer, parserCursor);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement[] parseElements(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            HeaderElement headerElement = parseHeaderElement(charArrayBuffer, parserCursor);
            if (headerElement.getName().length() != 0 || headerElement.getValue() != null) {
                arrayList.add(headerElement);
            }
        }
        return (HeaderElement[]) arrayList.toArray(new HeaderElement[arrayList.size()]);
    }

    public static HeaderElement parseHeaderElement(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseHeaderElement(charArrayBuffer, parserCursor);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement parseHeaderElement(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair nameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        NameValuePair[] parameters = null;
        if (!parserCursor.atEnd() && charArrayBuffer.charAt(parserCursor.getPos() - 1) != ',') {
            parameters = parseParameters(charArrayBuffer, parserCursor);
        }
        return createHeaderElement(nameValuePair.getName(), nameValuePair.getValue(), parameters);
    }

    protected HeaderElement createHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        return new BasicHeaderElement(str, str2, nameValuePairArr);
    }

    public static NameValuePair[] parseParameters(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseParameters(charArrayBuffer, parserCursor);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair[] parseParameters(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
        if (parserCursor.atEnd()) {
            return new NameValuePair[0];
        }
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
            if (charArrayBuffer.charAt(parserCursor.getPos() - 1) == ',') {
                break;
            }
        }
        return (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]);
    }

    public static NameValuePair parseNameValuePair(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseNameValuePair(charArrayBuffer, parserCursor);
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        return parseNameValuePair(charArrayBuffer, parserCursor, ALL_DELIMITERS);
    }

    private static boolean isOneOf(char c2, char[] cArr) {
        if (cArr == null) {
            return false;
        }
        for (char c3 : cArr) {
            if (c2 == c3) {
                return true;
            }
        }
        return false;
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, char[] cArr) {
        boolean z;
        String strSubstringTrimmed;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            if (pos >= upperBound) {
                z = false;
                break;
            }
            char cCharAt = charArrayBuffer.charAt(pos);
            if (cCharAt == '=') {
                z = false;
                break;
            }
            if (isOneOf(cCharAt, cArr)) {
                z = true;
                break;
            }
            pos++;
        }
        if (pos == upperBound) {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z = true;
        } else {
            String strSubstringTrimmed2 = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
            strSubstringTrimmed = strSubstringTrimmed2;
        }
        if (z) {
            parserCursor.updatePos(pos);
            return createNameValuePair(strSubstringTrimmed, null);
        }
        boolean z5 = false;
        boolean z6 = false;
        int i = pos;
        while (true) {
            if (i < upperBound) {
                char cCharAt2 = charArrayBuffer.charAt(i);
                if (cCharAt2 != '\"' || z5) {
                    z2 = z6;
                } else {
                    z2 = !z6;
                }
                if (!z2 && !z5 && isOneOf(cCharAt2, cArr)) {
                    break;
                }
                if (z5) {
                    z3 = false;
                } else {
                    z3 = z2 && cCharAt2 == '\\';
                }
                i++;
                z5 = z3;
                z6 = z2;
            } else {
                z4 = z;
                break;
            }
        }
        int i2 = pos;
        while (i2 < i && HTTP.isWhitespace(charArrayBuffer.charAt(i2))) {
            i2++;
        }
        int i3 = i;
        while (i3 > i2 && HTTP.isWhitespace(charArrayBuffer.charAt(i3 - 1))) {
            i3--;
        }
        if (i3 - i2 >= 2 && charArrayBuffer.charAt(i2) == '\"' && charArrayBuffer.charAt(i3 - 1) == '\"') {
            i2++;
            i3--;
        }
        String strSubstring = charArrayBuffer.substring(i2, i3);
        parserCursor.updatePos(z4 ? i + 1 : i);
        return createNameValuePair(strSubstringTrimmed, strSubstring);
    }

    protected NameValuePair createNameValuePair(String str, String str2) {
        return new BasicNameValuePair(str, str2);
    }
}
