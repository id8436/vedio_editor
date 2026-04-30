package org.joda.time.format;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

/* JADX INFO: loaded from: classes3.dex */
public class DateTimeFormat {
    static final int DATE = 0;
    static final int DATETIME = 2;
    static final int FULL = 0;
    static final int LONG = 1;
    static final int MEDIUM = 2;
    static final int NONE = 4;
    private static final int PATTERN_CACHE_SIZE = 500;
    static final int SHORT = 3;
    static final int TIME = 1;
    private static final ConcurrentHashMap<String, DateTimeFormatter> cPatternCache = new ConcurrentHashMap<>();
    private static final AtomicReferenceArray<DateTimeFormatter> cStyleCache = new AtomicReferenceArray<>(25);

    public static DateTimeFormatter forPattern(String str) {
        return createFormatterForPattern(str);
    }

    public static DateTimeFormatter forStyle(String str) {
        return createFormatterForStyle(str);
    }

    public static String patternForStyle(String str, Locale locale) {
        DateTimeFormatter dateTimeFormatterCreateFormatterForStyle = createFormatterForStyle(str);
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return ((StyleFormatter) dateTimeFormatterCreateFormatterForStyle.getPrinter0()).getPattern(locale);
    }

    public static DateTimeFormatter shortDate() {
        return createFormatterForStyleIndex(3, 4);
    }

    public static DateTimeFormatter shortTime() {
        return createFormatterForStyleIndex(4, 3);
    }

    public static DateTimeFormatter shortDateTime() {
        return createFormatterForStyleIndex(3, 3);
    }

    public static DateTimeFormatter mediumDate() {
        return createFormatterForStyleIndex(2, 4);
    }

    public static DateTimeFormatter mediumTime() {
        return createFormatterForStyleIndex(4, 2);
    }

    public static DateTimeFormatter mediumDateTime() {
        return createFormatterForStyleIndex(2, 2);
    }

    public static DateTimeFormatter longDate() {
        return createFormatterForStyleIndex(1, 4);
    }

    public static DateTimeFormatter longTime() {
        return createFormatterForStyleIndex(4, 1);
    }

    public static DateTimeFormatter longDateTime() {
        return createFormatterForStyleIndex(1, 1);
    }

    public static DateTimeFormatter fullDate() {
        return createFormatterForStyleIndex(0, 4);
    }

    public static DateTimeFormatter fullTime() {
        return createFormatterForStyleIndex(4, 0);
    }

    public static DateTimeFormatter fullDateTime() {
        return createFormatterForStyleIndex(0, 0);
    }

    static void appendPatternTo(DateTimeFormatterBuilder dateTimeFormatterBuilder, String str) {
        parsePatternTo(dateTimeFormatterBuilder, str);
    }

    protected DateTimeFormat() {
    }

    private static void parsePatternTo(DateTimeFormatterBuilder dateTimeFormatterBuilder, String str) {
        int length = str.length();
        int[] iArr = new int[1];
        int i = 0;
        while (i < length) {
            iArr[0] = i;
            String token = parseToken(str, iArr);
            int i2 = iArr[0];
            int length2 = token.length();
            if (length2 != 0) {
                char cCharAt = token.charAt(0);
                switch (cCharAt) {
                    case '\'':
                        String strSubstring = token.substring(1);
                        if (strSubstring.length() == 1) {
                            dateTimeFormatterBuilder.appendLiteral(strSubstring.charAt(0));
                        } else {
                            dateTimeFormatterBuilder.appendLiteral(new String(strSubstring));
                        }
                        break;
                    case 'C':
                        dateTimeFormatterBuilder.appendCenturyOfEra(length2, length2);
                        break;
                    case 'D':
                        dateTimeFormatterBuilder.appendDayOfYear(length2);
                        break;
                    case 'E':
                        if (length2 >= 4) {
                            dateTimeFormatterBuilder.appendDayOfWeekText();
                        } else {
                            dateTimeFormatterBuilder.appendDayOfWeekShortText();
                        }
                        break;
                    case 'G':
                        dateTimeFormatterBuilder.appendEraText();
                        break;
                    case 'H':
                        dateTimeFormatterBuilder.appendHourOfDay(length2);
                        break;
                    case 'K':
                        dateTimeFormatterBuilder.appendHourOfHalfday(length2);
                        break;
                    case 'M':
                        if (length2 >= 3) {
                            if (length2 >= 4) {
                                dateTimeFormatterBuilder.appendMonthOfYearText();
                            } else {
                                dateTimeFormatterBuilder.appendMonthOfYearShortText();
                            }
                        } else {
                            dateTimeFormatterBuilder.appendMonthOfYear(length2);
                        }
                        break;
                    case 'S':
                        dateTimeFormatterBuilder.appendFractionOfSecond(length2, length2);
                        break;
                    case 'Y':
                    case 'x':
                    case 'y':
                        if (length2 == 2) {
                            boolean z = true;
                            if (i2 + 1 < length) {
                                iArr[0] = iArr[0] + 1;
                                if (isNumericToken(parseToken(str, iArr))) {
                                    z = false;
                                }
                                iArr[0] = iArr[0] - 1;
                            }
                            switch (cCharAt) {
                                case 'x':
                                    dateTimeFormatterBuilder.appendTwoDigitWeekyear(new DateTime().getWeekyear() - 30, z);
                                    break;
                                default:
                                    dateTimeFormatterBuilder.appendTwoDigitYear(new DateTime().getYear() - 30, z);
                                    break;
                            }
                        } else {
                            if (i2 + 1 < length) {
                                iArr[0] = iArr[0] + 1;
                                i = isNumericToken(parseToken(str, iArr)) ? length2 : 9;
                                iArr[0] = iArr[0] - 1;
                            }
                            switch (cCharAt) {
                                case 'Y':
                                    dateTimeFormatterBuilder.appendYearOfEra(length2, i);
                                    break;
                                case 'x':
                                    dateTimeFormatterBuilder.appendWeekyear(length2, i);
                                    break;
                                case 'y':
                                    dateTimeFormatterBuilder.appendYear(length2, i);
                                    break;
                            }
                        }
                        break;
                    case 'Z':
                        if (length2 == 1) {
                            dateTimeFormatterBuilder.appendTimeZoneOffset(null, "Z", false, 2, 2);
                        } else if (length2 == 2) {
                            dateTimeFormatterBuilder.appendTimeZoneOffset(null, "Z", true, 2, 2);
                        } else {
                            dateTimeFormatterBuilder.appendTimeZoneId();
                        }
                        break;
                    case 'a':
                        dateTimeFormatterBuilder.appendHalfdayOfDayText();
                        break;
                    case 'd':
                        dateTimeFormatterBuilder.appendDayOfMonth(length2);
                        break;
                    case 'e':
                        dateTimeFormatterBuilder.appendDayOfWeek(length2);
                        break;
                    case 'h':
                        dateTimeFormatterBuilder.appendClockhourOfHalfday(length2);
                        break;
                    case 'k':
                        dateTimeFormatterBuilder.appendClockhourOfDay(length2);
                        break;
                    case 'm':
                        dateTimeFormatterBuilder.appendMinuteOfHour(length2);
                        break;
                    case 's':
                        dateTimeFormatterBuilder.appendSecondOfMinute(length2);
                        break;
                    case 'w':
                        dateTimeFormatterBuilder.appendWeekOfWeekyear(length2);
                        break;
                    case 'z':
                        if (length2 >= 4) {
                            dateTimeFormatterBuilder.appendTimeZoneName();
                        } else {
                            dateTimeFormatterBuilder.appendTimeZoneShortName(null);
                        }
                        break;
                    default:
                        throw new IllegalArgumentException("Illegal pattern component: " + token);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i);
        if ((cCharAt >= 'A' && cCharAt <= 'Z') || (cCharAt >= 'a' && cCharAt <= 'z')) {
            sb.append(cCharAt);
            while (i + 1 < length && str.charAt(i + 1) == cCharAt) {
                sb.append(cCharAt);
                i++;
            }
        } else {
            sb.append('\'');
            boolean z = false;
            while (i < length) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 == '\'') {
                    if (i + 1 < length && str.charAt(i + 1) == '\'') {
                        i++;
                        sb.append(cCharAt2);
                    } else {
                        z = !z;
                    }
                } else {
                    if (!z && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i--;
                        break;
                    }
                    sb.append(cCharAt2);
                }
                i++;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    private static boolean isNumericToken(String str) {
        int length = str.length();
        if (length <= 0) {
            return false;
        }
        switch (str.charAt(0)) {
            case 'C':
            case 'D':
            case 'F':
            case 'H':
            case 'K':
            case 'S':
            case 'W':
            case 'Y':
            case 'c':
            case 'd':
            case 'e':
            case 'h':
            case 'k':
            case 'm':
            case 's':
            case 'w':
            case 'x':
            case 'y':
                return true;
            case 'M':
                return length <= 2;
            default:
                return false;
        }
    }

    private static DateTimeFormatter createFormatterForPattern(String str) {
        DateTimeFormatter dateTimeFormatterPutIfAbsent;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Invalid pattern specification");
        }
        DateTimeFormatter dateTimeFormatter = cPatternCache.get(str);
        if (dateTimeFormatter == null) {
            DateTimeFormatterBuilder dateTimeFormatterBuilder = new DateTimeFormatterBuilder();
            parsePatternTo(dateTimeFormatterBuilder, str);
            DateTimeFormatter formatter = dateTimeFormatterBuilder.toFormatter();
            return (cPatternCache.size() >= 500 || (dateTimeFormatterPutIfAbsent = cPatternCache.putIfAbsent(str, formatter)) == null) ? formatter : dateTimeFormatterPutIfAbsent;
        }
        return dateTimeFormatter;
    }

    private static DateTimeFormatter createFormatterForStyle(String str) {
        if (str == null || str.length() != 2) {
            throw new IllegalArgumentException("Invalid style specification: " + str);
        }
        int iSelectStyle = selectStyle(str.charAt(0));
        int iSelectStyle2 = selectStyle(str.charAt(1));
        if (iSelectStyle == 4 && iSelectStyle2 == 4) {
            throw new IllegalArgumentException("Style '--' is invalid");
        }
        return createFormatterForStyleIndex(iSelectStyle, iSelectStyle2);
    }

    private static DateTimeFormatter createFormatterForStyleIndex(int i, int i2) {
        int i3 = (i << 2) + i + i2;
        if (i3 >= cStyleCache.length()) {
            return createDateTimeFormatter(i, i2);
        }
        DateTimeFormatter dateTimeFormatter = cStyleCache.get(i3);
        if (dateTimeFormatter == null) {
            DateTimeFormatter dateTimeFormatterCreateDateTimeFormatter = createDateTimeFormatter(i, i2);
            if (!cStyleCache.compareAndSet(i3, null, dateTimeFormatterCreateDateTimeFormatter)) {
                return cStyleCache.get(i3);
            }
            return dateTimeFormatterCreateDateTimeFormatter;
        }
        return dateTimeFormatter;
    }

    private static DateTimeFormatter createDateTimeFormatter(int i, int i2) {
        int i3 = 2;
        if (i == 4) {
            i3 = 1;
        } else if (i2 == 4) {
            i3 = 0;
        }
        StyleFormatter styleFormatter = new StyleFormatter(i, i2, i3);
        return new DateTimeFormatter(styleFormatter, styleFormatter);
    }

    private static int selectStyle(char c2) {
        switch (c2) {
            case '-':
                return 4;
            case 'F':
                return 0;
            case 'L':
                return 1;
            case 'M':
                return 2;
            case 'S':
                return 3;
            default:
                throw new IllegalArgumentException("Invalid style character: " + c2);
        }
    }

    class StyleFormatter implements InternalParser, InternalPrinter {
        private static final ConcurrentHashMap<StyleFormatterCacheKey, DateTimeFormatter> cCache = new ConcurrentHashMap<>();
        private final int iDateStyle;
        private final int iTimeStyle;
        private final int iType;

        StyleFormatter(int i, int i2, int i3) {
            this.iDateStyle = i;
            this.iTimeStyle = i2;
            this.iType = i3;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 40;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            getFormatter(locale).getPrinter0().printTo(appendable, j, chronology, i, dateTimeZone, locale);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            getFormatter(locale).getPrinter0().printTo(appendable, readablePartial, locale);
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return 40;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            return getFormatter(dateTimeParserBucket.getLocale()).getParser0().parseInto(dateTimeParserBucket, charSequence, i);
        }

        private DateTimeFormatter getFormatter(Locale locale) {
            if (locale == null) {
                locale = Locale.getDefault();
            }
            StyleFormatterCacheKey styleFormatterCacheKey = new StyleFormatterCacheKey(this.iType, this.iDateStyle, this.iTimeStyle, locale);
            DateTimeFormatter dateTimeFormatter = cCache.get(styleFormatterCacheKey);
            if (dateTimeFormatter == null) {
                DateTimeFormatter dateTimeFormatterForPattern = DateTimeFormat.forPattern(getPattern(locale));
                DateTimeFormatter dateTimeFormatterPutIfAbsent = cCache.putIfAbsent(styleFormatterCacheKey, dateTimeFormatterForPattern);
                return dateTimeFormatterPutIfAbsent != null ? dateTimeFormatterPutIfAbsent : dateTimeFormatterForPattern;
            }
            return dateTimeFormatter;
        }

        String getPattern(Locale locale) {
            DateFormat dateTimeInstance = null;
            switch (this.iType) {
                case 0:
                    dateTimeInstance = DateFormat.getDateInstance(this.iDateStyle, locale);
                    break;
                case 1:
                    dateTimeInstance = DateFormat.getTimeInstance(this.iTimeStyle, locale);
                    break;
                case 2:
                    dateTimeInstance = DateFormat.getDateTimeInstance(this.iDateStyle, this.iTimeStyle, locale);
                    break;
            }
            if (!(dateTimeInstance instanceof SimpleDateFormat)) {
                throw new IllegalArgumentException("No datetime pattern for locale: " + locale);
            }
            return ((SimpleDateFormat) dateTimeInstance).toPattern();
        }
    }

    class StyleFormatterCacheKey {
        private final int combinedTypeAndStyle;
        private final Locale locale;

        public StyleFormatterCacheKey(int i, int i2, int i3, Locale locale) {
            this.locale = locale;
            this.combinedTypeAndStyle = (i2 << 4) + i + (i3 << 8);
        }

        public int hashCode() {
            return (this.locale == null ? 0 : this.locale.hashCode()) + ((this.combinedTypeAndStyle + 31) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof StyleFormatterCacheKey)) {
                StyleFormatterCacheKey styleFormatterCacheKey = (StyleFormatterCacheKey) obj;
                if (this.combinedTypeAndStyle != styleFormatterCacheKey.combinedTypeAndStyle) {
                    return false;
                }
                return this.locale == null ? styleFormatterCacheKey.locale == null : this.locale.equals(styleFormatterCacheKey.locale);
            }
            return false;
        }
    }
}
