package org.apache.commons.lang3.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.Validate;

/* JADX INFO: loaded from: classes3.dex */
public class FastDateFormat extends Format {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;
    private static final FormatCache<FastDateFormat> cache = new FormatCache<FastDateFormat>() { // from class: org.apache.commons.lang3.time.FastDateFormat.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.apache.commons.lang3.time.FormatCache
        public FastDateFormat createInstance(String str, TimeZone timeZone, Locale locale) {
            return new FastDateFormat(str, timeZone, locale);
        }
    };
    private static ConcurrentMap<TimeZoneDisplayKey, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);

    interface NumberRule extends Rule {
        void appendTo(StringBuffer stringBuffer, int i);
    }

    interface Rule {
        void appendTo(StringBuffer stringBuffer, Calendar calendar);

        int estimateLength();
    }

    public static FastDateFormat getInstance() {
        return (FastDateFormat) cache.getDateTimeInstance(3, 3, null, null);
    }

    public static FastDateFormat getInstance(String str) {
        return (FastDateFormat) cache.getInstance(str, null, null);
    }

    public static FastDateFormat getInstance(String str, TimeZone timeZone) {
        return (FastDateFormat) cache.getInstance(str, timeZone, null);
    }

    public static FastDateFormat getInstance(String str, Locale locale) {
        return (FastDateFormat) cache.getInstance(str, null, locale);
    }

    public static FastDateFormat getInstance(String str, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) cache.getInstance(str, timeZone, locale);
    }

    public static FastDateFormat getDateInstance(int i) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), null, null, null);
    }

    public static FastDateFormat getDateInstance(int i, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), null, null, locale);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timeZone) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), null, timeZone, null);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), null, timeZone, locale);
    }

    public static FastDateFormat getTimeInstance(int i) {
        return (FastDateFormat) cache.getDateTimeInstance(null, Integer.valueOf(i), null, null);
    }

    public static FastDateFormat getTimeInstance(int i, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(null, Integer.valueOf(i), null, locale);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timeZone) {
        return (FastDateFormat) cache.getDateTimeInstance(null, Integer.valueOf(i), timeZone, null);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(null, Integer.valueOf(i), timeZone, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), Integer.valueOf(i2), null, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), Integer.valueOf(i2), null, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2, TimeZone timeZone) {
        return getDateTimeInstance(i, i2, timeZone, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2, TimeZone timeZone, Locale locale) {
        return (FastDateFormat) cache.getDateTimeInstance(Integer.valueOf(i), Integer.valueOf(i2), timeZone, locale);
    }

    static String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z, i, locale);
        String str = cTimeZoneDisplayCache.get(timeZoneDisplayKey);
        if (str == null) {
            String displayName = timeZone.getDisplayName(z, i, locale);
            String strPutIfAbsent = cTimeZoneDisplayCache.putIfAbsent(timeZoneDisplayKey, displayName);
            return strPutIfAbsent != null ? strPutIfAbsent : displayName;
        }
        return str;
    }

    protected FastDateFormat(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    private void init() {
        List<Rule> pattern = parsePattern();
        this.mRules = (Rule[]) pattern.toArray(new Rule[pattern.size()]);
        int iEstimateLength = 0;
        int length = this.mRules.length;
        while (true) {
            length--;
            if (length >= 0) {
                iEstimateLength += this.mRules[length].estimateLength();
            } else {
                this.mMaxLengthEstimate = iEstimateLength;
                return;
            }
        }
    }

    protected List<Rule> parsePattern() {
        Rule stringLiteral;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int[] iArr = new int[1];
        int i = 0;
        while (i < length) {
            iArr[0] = i;
            String token = parseToken(this.mPattern, iArr);
            int i2 = iArr[0];
            int length2 = token.length();
            if (length2 != 0) {
                switch (token.charAt(0)) {
                    case '\'':
                        String strSubstring = token.substring(1);
                        if (strSubstring.length() == 1) {
                            stringLiteral = new CharacterLiteral(strSubstring.charAt(0));
                        } else {
                            stringLiteral = new StringLiteral(strSubstring);
                        }
                        break;
                    case 'D':
                        stringLiteral = selectNumberRule(6, length2);
                        break;
                    case 'E':
                        stringLiteral = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                        break;
                    case 'F':
                        stringLiteral = selectNumberRule(8, length2);
                        break;
                    case 'G':
                        stringLiteral = new TextField(0, eras);
                        break;
                    case 'H':
                        stringLiteral = selectNumberRule(11, length2);
                        break;
                    case 'K':
                        stringLiteral = selectNumberRule(10, length2);
                        break;
                    case 'M':
                        if (length2 >= 4) {
                            stringLiteral = new TextField(2, months);
                        } else if (length2 == 3) {
                            stringLiteral = new TextField(2, shortMonths);
                        } else if (length2 == 2) {
                            stringLiteral = TwoDigitMonthField.INSTANCE;
                        } else {
                            stringLiteral = UnpaddedMonthField.INSTANCE;
                        }
                        break;
                    case 'S':
                        stringLiteral = selectNumberRule(14, length2);
                        break;
                    case 'W':
                        stringLiteral = selectNumberRule(4, length2);
                        break;
                    case 'Z':
                        if (length2 == 1) {
                            stringLiteral = TimeZoneNumberRule.INSTANCE_NO_COLON;
                        } else {
                            stringLiteral = TimeZoneNumberRule.INSTANCE_COLON;
                        }
                        break;
                    case 'a':
                        stringLiteral = new TextField(9, amPmStrings);
                        break;
                    case 'd':
                        stringLiteral = selectNumberRule(5, length2);
                        break;
                    case 'h':
                        stringLiteral = new TwelveHourField(selectNumberRule(10, length2));
                        break;
                    case 'k':
                        stringLiteral = new TwentyFourHourField(selectNumberRule(11, length2));
                        break;
                    case 'm':
                        stringLiteral = selectNumberRule(12, length2);
                        break;
                    case 's':
                        stringLiteral = selectNumberRule(13, length2);
                        break;
                    case 'w':
                        stringLiteral = selectNumberRule(3, length2);
                        break;
                    case 'y':
                        if (length2 == 2) {
                            stringLiteral = TwoDigitYearField.INSTANCE;
                        } else {
                            if (length2 < 4) {
                                length2 = 4;
                            }
                            stringLiteral = selectNumberRule(1, length2);
                        }
                        break;
                    case 'z':
                        if (length2 >= 4) {
                            stringLiteral = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
                        } else {
                            stringLiteral = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                        }
                        break;
                    default:
                        throw new IllegalArgumentException("Illegal pattern component: " + token);
                }
                arrayList.add(stringLiteral);
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
        return arrayList;
    }

    protected String parseToken(String str, int[] iArr) {
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

    protected NumberRule selectNumberRule(int i, int i2) {
        switch (i2) {
            case 1:
                return new UnpaddedNumberField(i);
            case 2:
                return new TwoDigitNumberField(i);
            default:
                return new PaddedNumberField(i, i2);
        }
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        throw new IllegalArgumentException("Unknown class: " + (obj == null ? "<null>" : obj.getClass().getName()));
    }

    public String format(long j) {
        return format(new Date(j));
    }

    public String format(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.mTimeZone, this.mLocale);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return format(new Date(j), stringBuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.mTimeZone, this.mLocale);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, stringBuffer);
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return applyRules(calendar, stringBuffer);
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        for (Rule rule : this.mRules) {
            rule.appendTo(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        parsePosition.setIndex(0);
        parsePosition.setErrorIndex(0);
        return null;
    }

    public String getPattern() {
        return this.mPattern;
    }

    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDateFormat)) {
            return false;
        }
        FastDateFormat fastDateFormat = (FastDateFormat) obj;
        return this.mPattern.equals(fastDateFormat.mPattern) && this.mTimeZone.equals(fastDateFormat.mTimeZone) && this.mLocale.equals(fastDateFormat.mLocale);
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    public String toString() {
        return "FastDateFormat[" + this.mPattern + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init();
    }

    class CharacterLiteral implements Rule {
        private final char mValue;

        CharacterLiteral(char c2) {
            this.mValue = c2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 1;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }
    }

    class StringLiteral implements Rule {
        private final String mValue;

        StringLiteral(String str) {
            this.mValue = str;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return this.mValue.length();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }
    }

    class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        TextField(int i, String[] strArr) {
            this.mField = i;
            this.mValues = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            int i = 0;
            int length = this.mValues.length;
            while (true) {
                int i2 = length - 1;
                if (i2 >= 0) {
                    int length2 = this.mValues[i2].length();
                    if (length2 <= i) {
                        length2 = i;
                    }
                    i = length2;
                    length = i2;
                } else {
                    return i;
                }
            }
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValues[calendar.get(this.mField)]);
        }
    }

    class UnpaddedNumberField implements NumberRule {
        private final int mField;

        UnpaddedNumberField(int i) {
            this.mField = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            } else {
                stringBuffer.append(Integer.toString(i));
            }
        }
    }

    class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        UnpaddedMonthField() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }
    }

    class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        PaddedNumberField(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i;
            this.mSize = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            int length;
            if (i < 100) {
                int i2 = this.mSize;
                while (true) {
                    i2--;
                    if (i2 >= 2) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append((char) ((i / 10) + 48));
                        stringBuffer.append((char) ((i % 10) + 48));
                        return;
                    }
                }
            } else {
                if (i < 1000) {
                    length = 3;
                } else {
                    Validate.isTrue(i > -1, "Negative values should not be possible", i);
                    length = Integer.toString(i).length();
                }
                int i3 = this.mSize;
                while (true) {
                    i3--;
                    if (i3 >= length) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append(Integer.toString(i));
                        return;
                    }
                }
            }
        }
    }

    class TwoDigitNumberField implements NumberRule {
        private final int mField;

        TwoDigitNumberField(int i) {
            this.mField = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            } else {
                stringBuffer.append(Integer.toString(i));
            }
        }
    }

    class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        TwoDigitYearField() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(1) % 100);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        TwoDigitMonthField() {
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(stringBuffer, leastMaximum);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }
    }

    class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(stringBuffer, maximum);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }
    }

    class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final String mStandard;
        private final TimeZone mTimeZone;

        TimeZoneNameRule(TimeZone timeZone, Locale locale, int i) {
            this.mTimeZone = timeZone;
            this.mStandard = FastDateFormat.getTimeZoneDisplay(timeZone, false, i, locale);
            this.mDaylight = FastDateFormat.getTimeZoneDisplay(timeZone, true, i, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return Math.max(this.mStandard.length(), this.mDaylight.length());
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            if (this.mTimeZone.useDaylightTime() && calendar.get(16) != 0) {
                stringBuffer.append(this.mDaylight);
            } else {
                stringBuffer.append(this.mStandard);
            }
        }
    }

    class TimeZoneNumberRule implements Rule {
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        TimeZoneNumberRule(boolean z) {
            this.mColon = z;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public int estimateLength() {
            return 5;
        }

        @Override // org.apache.commons.lang3.time.FastDateFormat.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append('-');
                i = -i;
            } else {
                stringBuffer.append('+');
            }
            int i2 = i / 3600000;
            stringBuffer.append((char) ((i2 / 10) + 48));
            stringBuffer.append((char) ((i2 % 10) + 48));
            if (this.mColon) {
                stringBuffer.append(':');
            }
            int i3 = (i / 60000) - (i2 * 60);
            stringBuffer.append((char) ((i3 / 10) + 48));
            stringBuffer.append((char) ((i3 % 10) + 48));
        }
    }

    class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        TimeZoneDisplayKey(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.mTimeZone = timeZone;
            this.mStyle = z ? i | Integer.MIN_VALUE : i;
            this.mLocale = locale;
        }

        public int hashCode() {
            return (((this.mStyle * 31) + this.mLocale.hashCode()) * 31) + this.mTimeZone.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeZoneDisplayKey)) {
                return false;
            }
            TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
            return this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale);
        }
    }
}
