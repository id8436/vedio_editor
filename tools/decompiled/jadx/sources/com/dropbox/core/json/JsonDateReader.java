package com.dropbox.core.json;

import com.d.a.a.i;
import com.d.a.a.j;
import com.d.a.a.k;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class JsonDateReader {
    public static final JsonReader<Date> Dropbox = new JsonReader<Date>() { // from class: com.dropbox.core.json.JsonDateReader.1
        @Override // com.dropbox.core.json.JsonReader
        public Date read(k kVar) throws JsonReadException, IOException {
            i iVarF = kVar.f();
            try {
                Date dropboxDate = JsonDateReader.parseDropboxDate(kVar.h(), kVar.j(), kVar.i());
                kVar.a();
                return dropboxDate;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            } catch (ParseException e3) {
                throw new JsonReadException("bad date: \"" + e3.getMessage() + " at offset " + e3.getErrorOffset(), iVarF);
            }
        }
    };
    public static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    public static final JsonReader<Date> DropboxV2 = new JsonReader<Date>() { // from class: com.dropbox.core.json.JsonDateReader.2
        @Override // com.dropbox.core.json.JsonReader
        public Date read(k kVar) throws JsonReadException, IOException {
            i iVarF = kVar.f();
            try {
                Date dropbox8601Date = JsonDateReader.parseDropbox8601Date(kVar.h(), kVar.j(), kVar.i());
                kVar.a();
                return dropbox8601Date;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            } catch (ParseException e3) {
                throw new JsonReadException("bad date: \"" + e3.getMessage() + " at offset " + e3.getErrorOffset(), iVarF);
            }
        }
    };

    public static Date parseDropboxDate(char[] cArr, int i, int i2) throws ParseException {
        if (i2 != 31) {
            throw new ParseException("expecting date to be 31 characters, got " + i2, 0);
        }
        if (cArr.length < i + 31 || i < 0) {
            throw new IllegalArgumentException("range is not within 'b'");
        }
        if ((cArr[i + 30] != '0') | (cArr[i + 4] != ' ') | (cArr[i + 3] != ',') | (cArr[i + 7] != ' ') | (cArr[i + 11] != ' ') | (cArr[i + 16] != ' ') | (cArr[i + 19] != ':') | (cArr[i + 22] != ':') | (cArr[i + 25] != ' ') | (cArr[i + 26] != '+') | (cArr[i + 27] != '0') | (cArr[i + 28] != '0') | (cArr[i + 29] != '0')) {
            if (cArr[i + 3] != ',') {
                throw new ParseException("expecting ','", 3);
            }
            if (cArr[i + 4] != ' ') {
                throw new ParseException("expecting ' '", 4);
            }
            if (cArr[i + 7] != ' ') {
                throw new ParseException("expecting ' '", 7);
            }
            if (cArr[i + 11] != ' ') {
                throw new ParseException("expecting ' '", 11);
            }
            if (cArr[i + 16] != ' ') {
                throw new ParseException("expecting ' '", 16);
            }
            if (cArr[i + 19] != ':') {
                throw new ParseException("expecting ':'", 19);
            }
            if (cArr[i + 22] != ':') {
                throw new ParseException("expecting ':'", 22);
            }
            if (cArr[i + 25] != ' ') {
                throw new ParseException("expecting ' '", 25);
            }
            if (cArr[i + 26] != '+') {
                throw new ParseException("expecting '+'", 26);
            }
            if (cArr[i + 27] != '0') {
                throw new ParseException("expecting '0'", 27);
            }
            if (cArr[i + 28] != '0') {
                throw new ParseException("expecting '0'", 28);
            }
            if (cArr[i + 29] != '0') {
                throw new ParseException("expecting '0'", 29);
            }
            if (cArr[i + 30] != '0') {
                throw new ParseException("expecting '0'", 30);
            }
            throw new AssertionError("unreachable");
        }
        if (!isValidDayOfWeek(cArr[i], cArr[i + 1], cArr[i + 2])) {
            throw new ParseException("invalid day of week", i);
        }
        int monthIndex = getMonthIndex(cArr[i + 8], cArr[i + 9], cArr[i + 10]);
        if (monthIndex == -1) {
            throw new ParseException("invalid month", 8);
        }
        char c2 = cArr[i + 5];
        char c3 = cArr[i + 6];
        if (!isDigit(c2) || !isDigit(c3)) {
            throw new ParseException("invalid day of month", 5);
        }
        int i3 = ((c2 * '\n') + c3) - 528;
        char c4 = cArr[i + 12];
        char c5 = cArr[i + 13];
        char c6 = cArr[i + 14];
        char c7 = cArr[i + 15];
        if ((!isDigit(c7)) | (!isDigit(c5)) | (!isDigit(c4)) | (!isDigit(c6))) {
            throw new ParseException("invalid year", 12);
        }
        int i4 = ((((c4 * 1000) + (c5 * 'd')) + (c6 * '\n')) + c7) - 53328;
        char c8 = cArr[i + 17];
        char c9 = cArr[i + 18];
        if ((!isDigit(c8)) | (!isDigit(c9))) {
            throw new ParseException("invalid hour", 17);
        }
        int i5 = ((c8 * '\n') + c9) - 528;
        char c10 = cArr[i + 20];
        char c11 = cArr[i + 21];
        if ((!isDigit(c10)) | (!isDigit(c11))) {
            throw new ParseException("invalid minute", 20);
        }
        int i6 = ((c10 * '\n') + c11) - 528;
        if ((!isDigit(cArr[i + 23])) | (isDigit(cArr[i + 24]) ? false : true)) {
            throw new ParseException("invalid second", 23);
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(i4, monthIndex, i3, i5, i6, ((r8 * '\n') + r9) - 528);
        gregorianCalendar.setTimeZone(UTC);
        return gregorianCalendar.getTime();
    }

    private static boolean isDigit(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean isValidDayOfWeek(char c2, char c3, char c4) {
        switch (c2) {
            case 'F':
                return (c4 == 'i') & (c3 == 'r');
            case 'M':
                return (c4 == 'n') & (c3 == 'o');
            case 'S':
                if ((c4 == 'n') && (c3 == 'u')) {
                    return true;
                }
                return (c4 == 't') & (c3 == 'a');
            case 'T':
                if ((c4 == 'e') && (c3 == 'u')) {
                    return true;
                }
                return (c4 == 'u') & (c3 == 'h');
            case 'W':
                return (c4 == 'd') & (c3 == 'e');
            default:
                return false;
        }
    }

    public static int getMonthIndex(char c2, char c3, char c4) {
        switch (c2) {
            case 'A':
                if ((c4 == 'r') && (c3 == 'p')) {
                    return 3;
                }
                return (c3 == 'u') & (c4 == 'g') ? 7 : -1;
            case 'B':
            case 'C':
            case 'E':
            case 'G':
            case 'H':
            case 'I':
            case 'K':
            case 'L':
            case 'P':
            case 'Q':
            case 'R':
            default:
                return -1;
            case 'D':
                return (c3 == 'e') & (c4 == 'c') ? 11 : -1;
            case 'F':
                return (c4 == 'b') & (c3 == 'e') ? 1 : 0;
            case 'J':
                if ((c4 == 'n') && (c3 == 'a')) {
                    return 0;
                }
                if (c3 != 'u') {
                    return -1;
                }
                if (c4 == 'n') {
                    return 5;
                }
                return c4 == 'l' ? 6 : -1;
            case 'M':
                if (c3 != 'a') {
                    return -1;
                }
                if (c4 == 'r') {
                    return 2;
                }
                return c4 == 'y' ? 4 : -1;
            case 'N':
                return (c3 == 'o') & (c4 == 'v') ? 10 : -1;
            case 'O':
                return (c3 == 'c') & (c4 == 't') ? 9 : -1;
            case 'S':
                return (c3 == 'e') & (c4 == 'p') ? 8 : -1;
        }
    }

    public static Date parseDropbox8601Date(char[] cArr, int i, int i2) throws ParseException {
        SimpleDateFormat simpleDateFormat;
        if (i2 != 20 && i2 != 24) {
            throw new ParseException("expecting date to be 20 or 24 characters, got " + i2, 0);
        }
        String str = new String(cArr, i, i2);
        if (i2 == 20) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        } else {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        }
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            Date date = simpleDateFormat.parse(str);
            if (date == null) {
                throw new ParseException("invalid date" + str, 0);
            }
            return date;
        } catch (IllegalArgumentException e2) {
            throw new ParseException("invalid characters in date" + str, 0);
        }
    }
}
