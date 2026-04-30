package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class NetscapeDraftHeaderParserHC4 {
    public static final NetscapeDraftHeaderParserHC4 DEFAULT = new NetscapeDraftHeaderParserHC4();

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair nameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
        }
        return new BasicHeaderElement(nameValuePair.getName(), nameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
    }

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        String strSubstringTrimmed;
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            if (pos < upperBound) {
                char cCharAt = charArrayBuffer.charAt(pos);
                if (cCharAt == '=') {
                    break;
                }
                if (cCharAt == ';') {
                    z3 = true;
                    break;
                }
                pos++;
            } else {
                break;
            }
        }
        if (pos == upperBound) {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z = true;
        } else {
            String strSubstringTrimmed2 = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
            strSubstringTrimmed = strSubstringTrimmed2;
            z = z3;
        }
        if (z) {
            parserCursor.updatePos(pos);
            return new BasicNameValuePair(strSubstringTrimmed, null);
        }
        int i = pos;
        while (true) {
            if (i >= upperBound) {
                z2 = z;
                break;
            }
            if (charArrayBuffer.charAt(i) == ';') {
                break;
            }
            i++;
        }
        while (pos < i && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i2 = i;
        while (i2 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i2 - 1))) {
            i2--;
        }
        String strSubstring = charArrayBuffer.substring(pos, i2);
        parserCursor.updatePos(z2 ? i + 1 : i);
        return new BasicNameValuePair(strSubstringTrimmed, strSubstring);
    }
}
