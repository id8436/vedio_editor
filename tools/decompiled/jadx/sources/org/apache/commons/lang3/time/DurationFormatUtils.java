package org.apache.commons.lang3.time;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes3.dex */
public class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
    static final Object y = "y";
    static final Object M = "M";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Object f4915d = "d";
    static final Object H = "H";
    static final Object m = "m";
    static final Object s = "s";
    static final Object S = "S";

    public static String formatDurationHMS(long j) {
        return formatDuration(j, "H:mm:ss.SSS");
    }

    public static String formatDurationISO(long j) {
        return formatDuration(j, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDuration(long j, String str) {
        return formatDuration(j, str, true);
    }

    public static String formatDuration(long j, String str, boolean z) {
        Token[] tokenArrLexx = lexx(str);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        if (Token.containsTokenWithValue(tokenArrLexx, f4915d)) {
            i = (int) (j / DateUtils.MILLIS_PER_DAY);
            j -= ((long) i) * DateUtils.MILLIS_PER_DAY;
        }
        if (Token.containsTokenWithValue(tokenArrLexx, H)) {
            i2 = (int) (j / DateUtils.MILLIS_PER_HOUR);
            j -= ((long) i2) * DateUtils.MILLIS_PER_HOUR;
        }
        if (Token.containsTokenWithValue(tokenArrLexx, m)) {
            i3 = (int) (j / DateUtils.MILLIS_PER_MINUTE);
            j -= ((long) i3) * DateUtils.MILLIS_PER_MINUTE;
        }
        if (Token.containsTokenWithValue(tokenArrLexx, s)) {
            i4 = (int) (j / 1000);
            j -= ((long) i4) * 1000;
        }
        if (Token.containsTokenWithValue(tokenArrLexx, S)) {
            i5 = (int) j;
        }
        return format(tokenArrLexx, 0, 0, i, i2, i3, i4, i5, z);
    }

    public static String formatDurationWords(long j, boolean z, boolean z2) {
        String duration = formatDuration(j, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z) {
            String str = " " + duration;
            duration = StringUtils.replaceOnce(str, " 0 days", "");
            if (duration.length() != str.length()) {
                String strReplaceOnce = StringUtils.replaceOnce(duration, " 0 hours", "");
                if (strReplaceOnce.length() != duration.length()) {
                    duration = StringUtils.replaceOnce(strReplaceOnce, " 0 minutes", "");
                    if (duration.length() != duration.length()) {
                        duration = StringUtils.replaceOnce(duration, " 0 seconds", "");
                    }
                }
            } else {
                duration = str;
            }
            if (duration.length() != 0) {
                duration = duration.substring(1);
            }
        }
        if (z2) {
            String strReplaceOnce2 = StringUtils.replaceOnce(duration, " 0 seconds", "");
            if (strReplaceOnce2.length() != duration.length()) {
                duration = StringUtils.replaceOnce(strReplaceOnce2, " 0 minutes", "");
                if (duration.length() != strReplaceOnce2.length()) {
                    String strReplaceOnce3 = StringUtils.replaceOnce(duration, " 0 hours", "");
                    if (strReplaceOnce3.length() != duration.length()) {
                        duration = StringUtils.replaceOnce(strReplaceOnce3, " 0 days", "");
                    }
                } else {
                    duration = strReplaceOnce2;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(" " + duration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriodISO(long j, long j2) {
        return formatPeriod(j, j2, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str) {
        return formatPeriod(j, j2, str, true, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str, boolean z, TimeZone timeZone) {
        int actualMaximum;
        int i;
        Token[] tokenArrLexx = lexx(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j2));
        int i2 = calendar2.get(14) - calendar.get(14);
        int i3 = calendar2.get(13) - calendar.get(13);
        int i4 = calendar2.get(12) - calendar.get(12);
        int i5 = calendar2.get(11) - calendar.get(11);
        int actualMaximum2 = calendar2.get(5) - calendar.get(5);
        int i6 = calendar2.get(2) - calendar.get(2);
        int i7 = calendar2.get(1) - calendar.get(1);
        while (i2 < 0) {
            i2 += 1000;
            i3--;
        }
        while (i3 < 0) {
            i3 += 60;
            i4--;
        }
        while (i4 < 0) {
            i4 += 60;
            i5--;
        }
        while (i5 < 0) {
            i5 += 24;
            actualMaximum2--;
        }
        if (Token.containsTokenWithValue(tokenArrLexx, M)) {
            actualMaximum = actualMaximum2;
            i = i6;
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i--;
                calendar.add(2, 1);
            }
            while (i < 0) {
                i += 12;
                i7--;
            }
            if (!Token.containsTokenWithValue(tokenArrLexx, y) && i7 != 0) {
                while (i7 != 0) {
                    i += i7 * 12;
                    i7 = 0;
                }
            }
        } else {
            if (!Token.containsTokenWithValue(tokenArrLexx, y)) {
                int i8 = calendar2.get(1);
                if (i6 < 0) {
                    i8--;
                }
                while (calendar.get(1) != i8) {
                    int actualMaximum3 = actualMaximum2 + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum3++;
                    }
                    calendar.add(1, 1);
                    actualMaximum2 = actualMaximum3 + calendar.get(6);
                }
                i7 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                actualMaximum2 += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            actualMaximum = actualMaximum2;
            i = 0;
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i--;
                calendar.add(2, 1);
            }
        }
        if (!Token.containsTokenWithValue(tokenArrLexx, f4915d)) {
            i5 += actualMaximum * 24;
            actualMaximum = 0;
        }
        if (!Token.containsTokenWithValue(tokenArrLexx, H)) {
            i4 += i5 * 60;
            i5 = 0;
        }
        if (!Token.containsTokenWithValue(tokenArrLexx, m)) {
            i3 += i4 * 60;
            i4 = 0;
        }
        if (!Token.containsTokenWithValue(tokenArrLexx, s)) {
            i2 += i3 * 1000;
            i3 = 0;
        }
        return format(tokenArrLexx, i7, i, actualMaximum, i5, i4, i3, i2, z);
    }

    static String format(Token[] tokenArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        int i8;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = false;
        int i9 = i7;
        for (Token token : tokenArr) {
            Object value = token.getValue();
            int count = token.getCount();
            if (value instanceof StringBuffer) {
                stringBuffer.append(value.toString());
            } else if (value == y) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i), count, '0') : Integer.toString(i));
                z2 = false;
            } else if (value == M) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i2), count, '0') : Integer.toString(i2));
                z2 = false;
            } else if (value == f4915d) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i3), count, '0') : Integer.toString(i3));
                z2 = false;
            } else if (value == H) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i4), count, '0') : Integer.toString(i4));
                z2 = false;
            } else if (value == m) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i5), count, '0') : Integer.toString(i5));
                z2 = false;
            } else if (value == s) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i6), count, '0') : Integer.toString(i6));
                z2 = true;
            } else if (value == S) {
                if (z2) {
                    int i10 = i9 + 1000;
                    stringBuffer.append((z ? StringUtils.leftPad(Integer.toString(i10), count, '0') : Integer.toString(i10)).substring(1));
                    i8 = i10;
                } else {
                    stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i9), count, '0') : Integer.toString(i9));
                    i8 = i9;
                }
                i9 = i8;
                z2 = false;
            }
        }
        return stringBuffer.toString();
    }

    static Token[] lexx(String str) {
        Object obj;
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList(charArray.length);
        Token token = null;
        StringBuffer stringBuffer = null;
        boolean z = false;
        for (char c2 : charArray) {
            if (z && c2 != '\'') {
                stringBuffer.append(c2);
            } else {
                switch (c2) {
                    case '\'':
                        if (z) {
                            obj = null;
                            stringBuffer = null;
                            z = false;
                        } else {
                            stringBuffer = new StringBuffer();
                            arrayList.add(new Token(stringBuffer));
                            z = true;
                            obj = null;
                        }
                        break;
                    case 'H':
                        obj = H;
                        break;
                    case 'M':
                        obj = M;
                        break;
                    case 'S':
                        obj = S;
                        break;
                    case 'd':
                        obj = f4915d;
                        break;
                    case 'm':
                        obj = m;
                        break;
                    case 's':
                        obj = s;
                        break;
                    case 'y':
                        obj = y;
                        break;
                    default:
                        if (stringBuffer == null) {
                            stringBuffer = new StringBuffer();
                            arrayList.add(new Token(stringBuffer));
                        }
                        stringBuffer.append(c2);
                        obj = null;
                        break;
                }
                if (obj != null) {
                    if (token != null && token.getValue() == obj) {
                        token.increment();
                    } else {
                        token = new Token(obj);
                        arrayList.add(token);
                    }
                    stringBuffer = null;
                }
            }
        }
        return (Token[]) arrayList.toArray(new Token[arrayList.size()]);
    }

    class Token {
        private int count;
        private final Object value;

        static boolean containsTokenWithValue(Token[] tokenArr, Object obj) {
            for (Token token : tokenArr) {
                if (token.getValue() == obj) {
                    return true;
                }
            }
            return false;
        }

        Token(Object obj) {
            this.value = obj;
            this.count = 1;
        }

        Token(Object obj, int i) {
            this.value = obj;
            this.count = i;
        }

        void increment() {
            this.count++;
        }

        int getCount() {
            return this.count;
        }

        Object getValue() {
            return this.value;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            if (this.value.getClass() != token.value.getClass() || this.count != token.count) {
                return false;
            }
            if (this.value instanceof StringBuffer) {
                return this.value.toString().equals(token.value.toString());
            }
            if (this.value instanceof Number) {
                return this.value.equals(token.value);
            }
            return this.value == token.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return StringUtils.repeat(this.value.toString(), this.count);
        }
    }
}
