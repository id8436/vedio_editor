package org.joda.time.format;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadablePartial;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.PreciseDateTimeField;

/* JADX INFO: loaded from: classes3.dex */
public class DateTimeFormatterBuilder {
    private ArrayList<Object> iElementPairs = new ArrayList<>();
    private Object iFormatter;

    public DateTimeFormatter toFormatter() {
        Object formatter = getFormatter();
        InternalPrinter internalPrinter = isPrinter(formatter) ? (InternalPrinter) formatter : null;
        InternalParser internalParser = isParser(formatter) ? (InternalParser) formatter : null;
        if (internalPrinter != null || internalParser != null) {
            return new DateTimeFormatter(internalPrinter, internalParser);
        }
        throw new UnsupportedOperationException("Both printing and parsing not supported");
    }

    public DateTimePrinter toPrinter() {
        Object formatter = getFormatter();
        if (isPrinter(formatter)) {
            return InternalPrinterDateTimePrinter.of((InternalPrinter) formatter);
        }
        throw new UnsupportedOperationException("Printing is not supported");
    }

    public DateTimeParser toParser() {
        Object formatter = getFormatter();
        if (isParser(formatter)) {
            return InternalParserDateTimeParser.of((InternalParser) formatter);
        }
        throw new UnsupportedOperationException("Parsing is not supported");
    }

    public boolean canBuildFormatter() {
        return isFormatter(getFormatter());
    }

    public boolean canBuildPrinter() {
        return isPrinter(getFormatter());
    }

    public boolean canBuildParser() {
        return isParser(getFormatter());
    }

    public void clear() {
        this.iFormatter = null;
        this.iElementPairs.clear();
    }

    public DateTimeFormatterBuilder append(DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter == null) {
            throw new IllegalArgumentException("No formatter supplied");
        }
        return append0(dateTimeFormatter.getPrinter0(), dateTimeFormatter.getParser0());
    }

    public DateTimeFormatterBuilder append(DateTimePrinter dateTimePrinter) {
        checkPrinter(dateTimePrinter);
        return append0(DateTimePrinterInternalPrinter.of(dateTimePrinter), null);
    }

    public DateTimeFormatterBuilder append(DateTimeParser dateTimeParser) {
        checkParser(dateTimeParser);
        return append0(null, DateTimeParserInternalParser.of(dateTimeParser));
    }

    public DateTimeFormatterBuilder append(DateTimePrinter dateTimePrinter, DateTimeParser dateTimeParser) {
        checkPrinter(dateTimePrinter);
        checkParser(dateTimeParser);
        return append0(DateTimePrinterInternalPrinter.of(dateTimePrinter), DateTimeParserInternalParser.of(dateTimeParser));
    }

    public DateTimeFormatterBuilder append(DateTimePrinter dateTimePrinter, DateTimeParser[] dateTimeParserArr) {
        int i = 0;
        if (dateTimePrinter != null) {
            checkPrinter(dateTimePrinter);
        }
        if (dateTimeParserArr == null) {
            throw new IllegalArgumentException("No parsers supplied");
        }
        int length = dateTimeParserArr.length;
        if (length == 1) {
            if (dateTimeParserArr[0] == null) {
                throw new IllegalArgumentException("No parser supplied");
            }
            return append0(DateTimePrinterInternalPrinter.of(dateTimePrinter), DateTimeParserInternalParser.of(dateTimeParserArr[0]));
        }
        InternalParser[] internalParserArr = new InternalParser[length];
        while (i < length - 1) {
            InternalParser internalParserOf = DateTimeParserInternalParser.of(dateTimeParserArr[i]);
            internalParserArr[i] = internalParserOf;
            if (internalParserOf != null) {
                i++;
            } else {
                throw new IllegalArgumentException("Incomplete parser array");
            }
        }
        internalParserArr[i] = DateTimeParserInternalParser.of(dateTimeParserArr[i]);
        return append0(DateTimePrinterInternalPrinter.of(dateTimePrinter), new MatchingParser(internalParserArr));
    }

    public DateTimeFormatterBuilder appendOptional(DateTimeParser dateTimeParser) {
        checkParser(dateTimeParser);
        return append0(null, new MatchingParser(new InternalParser[]{DateTimeParserInternalParser.of(dateTimeParser), null}));
    }

    private void checkParser(DateTimeParser dateTimeParser) {
        if (dateTimeParser == null) {
            throw new IllegalArgumentException("No parser supplied");
        }
    }

    private void checkPrinter(DateTimePrinter dateTimePrinter) {
        if (dateTimePrinter == null) {
            throw new IllegalArgumentException("No printer supplied");
        }
    }

    private DateTimeFormatterBuilder append0(Object obj) {
        this.iFormatter = null;
        this.iElementPairs.add(obj);
        this.iElementPairs.add(obj);
        return this;
    }

    private DateTimeFormatterBuilder append0(InternalPrinter internalPrinter, InternalParser internalParser) {
        this.iFormatter = null;
        this.iElementPairs.add(internalPrinter);
        this.iElementPairs.add(internalParser);
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(char c2) {
        return append0(new CharacterLiteral(c2));
    }

    public DateTimeFormatterBuilder appendLiteral(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Literal must not be null");
        }
        switch (str.length()) {
            case 0:
                return this;
            case 1:
                return append0(new CharacterLiteral(str.charAt(0)));
            default:
                return append0(new StringLiteral(str));
        }
    }

    public DateTimeFormatterBuilder appendDecimal(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i2 < i) {
            i2 = i;
        }
        if (i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        return i <= 1 ? append0(new UnpaddedNumber(dateTimeFieldType, i2, false)) : append0(new PaddedNumber(dateTimeFieldType, i2, false, i));
    }

    public DateTimeFormatterBuilder appendFixedDecimal(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Illegal number of digits: " + i);
        }
        return append0(new FixedNumber(dateTimeFieldType, i, false));
    }

    public DateTimeFormatterBuilder appendSignedDecimal(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i2 < i) {
            i2 = i;
        }
        if (i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        return i <= 1 ? append0(new UnpaddedNumber(dateTimeFieldType, i2, true)) : append0(new PaddedNumber(dateTimeFieldType, i2, true, i));
    }

    public DateTimeFormatterBuilder appendFixedSignedDecimal(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Illegal number of digits: " + i);
        }
        return append0(new FixedNumber(dateTimeFieldType, i, true));
    }

    public DateTimeFormatterBuilder appendText(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        return append0(new TextField(dateTimeFieldType, false));
    }

    public DateTimeFormatterBuilder appendShortText(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        return append0(new TextField(dateTimeFieldType, true));
    }

    public DateTimeFormatterBuilder appendFraction(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType == null) {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i2 < i) {
            i2 = i;
        }
        if (i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        return append0(new Fraction(dateTimeFieldType, i, i2));
    }

    public DateTimeFormatterBuilder appendFractionOfSecond(int i, int i2) {
        return appendFraction(DateTimeFieldType.secondOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder appendFractionOfMinute(int i, int i2) {
        return appendFraction(DateTimeFieldType.minuteOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder appendFractionOfHour(int i, int i2) {
        return appendFraction(DateTimeFieldType.hourOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder appendFractionOfDay(int i, int i2) {
        return appendFraction(DateTimeFieldType.dayOfYear(), i, i2);
    }

    public DateTimeFormatterBuilder appendMillisOfSecond(int i) {
        return appendDecimal(DateTimeFieldType.millisOfSecond(), i, 3);
    }

    public DateTimeFormatterBuilder appendMillisOfDay(int i) {
        return appendDecimal(DateTimeFieldType.millisOfDay(), i, 8);
    }

    public DateTimeFormatterBuilder appendSecondOfMinute(int i) {
        return appendDecimal(DateTimeFieldType.secondOfMinute(), i, 2);
    }

    public DateTimeFormatterBuilder appendSecondOfDay(int i) {
        return appendDecimal(DateTimeFieldType.secondOfDay(), i, 5);
    }

    public DateTimeFormatterBuilder appendMinuteOfHour(int i) {
        return appendDecimal(DateTimeFieldType.minuteOfHour(), i, 2);
    }

    public DateTimeFormatterBuilder appendMinuteOfDay(int i) {
        return appendDecimal(DateTimeFieldType.minuteOfDay(), i, 4);
    }

    public DateTimeFormatterBuilder appendHourOfDay(int i) {
        return appendDecimal(DateTimeFieldType.hourOfDay(), i, 2);
    }

    public DateTimeFormatterBuilder appendClockhourOfDay(int i) {
        return appendDecimal(DateTimeFieldType.clockhourOfDay(), i, 2);
    }

    public DateTimeFormatterBuilder appendHourOfHalfday(int i) {
        return appendDecimal(DateTimeFieldType.hourOfHalfday(), i, 2);
    }

    public DateTimeFormatterBuilder appendClockhourOfHalfday(int i) {
        return appendDecimal(DateTimeFieldType.clockhourOfHalfday(), i, 2);
    }

    public DateTimeFormatterBuilder appendDayOfWeek(int i) {
        return appendDecimal(DateTimeFieldType.dayOfWeek(), i, 1);
    }

    public DateTimeFormatterBuilder appendDayOfMonth(int i) {
        return appendDecimal(DateTimeFieldType.dayOfMonth(), i, 2);
    }

    public DateTimeFormatterBuilder appendDayOfYear(int i) {
        return appendDecimal(DateTimeFieldType.dayOfYear(), i, 3);
    }

    public DateTimeFormatterBuilder appendWeekOfWeekyear(int i) {
        return appendDecimal(DateTimeFieldType.weekOfWeekyear(), i, 2);
    }

    public DateTimeFormatterBuilder appendWeekyear(int i, int i2) {
        return appendSignedDecimal(DateTimeFieldType.weekyear(), i, i2);
    }

    public DateTimeFormatterBuilder appendMonthOfYear(int i) {
        return appendDecimal(DateTimeFieldType.monthOfYear(), i, 2);
    }

    public DateTimeFormatterBuilder appendYear(int i, int i2) {
        return appendSignedDecimal(DateTimeFieldType.year(), i, i2);
    }

    public DateTimeFormatterBuilder appendTwoDigitYear(int i) {
        return appendTwoDigitYear(i, false);
    }

    public DateTimeFormatterBuilder appendTwoDigitYear(int i, boolean z) {
        return append0(new TwoDigitYear(DateTimeFieldType.year(), i, z));
    }

    public DateTimeFormatterBuilder appendTwoDigitWeekyear(int i) {
        return appendTwoDigitWeekyear(i, false);
    }

    public DateTimeFormatterBuilder appendTwoDigitWeekyear(int i, boolean z) {
        return append0(new TwoDigitYear(DateTimeFieldType.weekyear(), i, z));
    }

    public DateTimeFormatterBuilder appendYearOfEra(int i, int i2) {
        return appendDecimal(DateTimeFieldType.yearOfEra(), i, i2);
    }

    public DateTimeFormatterBuilder appendYearOfCentury(int i, int i2) {
        return appendDecimal(DateTimeFieldType.yearOfCentury(), i, i2);
    }

    public DateTimeFormatterBuilder appendCenturyOfEra(int i, int i2) {
        return appendSignedDecimal(DateTimeFieldType.centuryOfEra(), i, i2);
    }

    public DateTimeFormatterBuilder appendHalfdayOfDayText() {
        return appendText(DateTimeFieldType.halfdayOfDay());
    }

    public DateTimeFormatterBuilder appendDayOfWeekText() {
        return appendText(DateTimeFieldType.dayOfWeek());
    }

    public DateTimeFormatterBuilder appendDayOfWeekShortText() {
        return appendShortText(DateTimeFieldType.dayOfWeek());
    }

    public DateTimeFormatterBuilder appendMonthOfYearText() {
        return appendText(DateTimeFieldType.monthOfYear());
    }

    public DateTimeFormatterBuilder appendMonthOfYearShortText() {
        return appendShortText(DateTimeFieldType.monthOfYear());
    }

    public DateTimeFormatterBuilder appendEraText() {
        return appendText(DateTimeFieldType.era());
    }

    public DateTimeFormatterBuilder appendTimeZoneName() {
        return append0(new TimeZoneName(0, null), null);
    }

    public DateTimeFormatterBuilder appendTimeZoneName(Map<String, DateTimeZone> map) {
        TimeZoneName timeZoneName = new TimeZoneName(0, map);
        return append0(timeZoneName, timeZoneName);
    }

    public DateTimeFormatterBuilder appendTimeZoneShortName() {
        return append0(new TimeZoneName(1, null), null);
    }

    public DateTimeFormatterBuilder appendTimeZoneShortName(Map<String, DateTimeZone> map) {
        TimeZoneName timeZoneName = new TimeZoneName(1, map);
        return append0(timeZoneName, timeZoneName);
    }

    public DateTimeFormatterBuilder appendTimeZoneId() {
        return append0(TimeZoneId.INSTANCE, TimeZoneId.INSTANCE);
    }

    public DateTimeFormatterBuilder appendTimeZoneOffset(String str, boolean z, int i, int i2) {
        return append0(new TimeZoneOffset(str, str, z, i, i2));
    }

    public DateTimeFormatterBuilder appendTimeZoneOffset(String str, String str2, boolean z, int i, int i2) {
        return append0(new TimeZoneOffset(str, str2, z, i, i2));
    }

    public DateTimeFormatterBuilder appendPattern(String str) {
        DateTimeFormat.appendPatternTo(this, str);
        return this;
    }

    private Object getFormatter() {
        Object composite = this.iFormatter;
        if (composite == null) {
            if (this.iElementPairs.size() == 2) {
                Object obj = this.iElementPairs.get(0);
                Object obj2 = this.iElementPairs.get(1);
                if (obj == null) {
                    composite = obj2;
                } else if (obj == obj2 || obj2 == null) {
                    composite = obj;
                }
            }
            if (composite == null) {
                composite = new Composite(this.iElementPairs);
            }
            this.iFormatter = composite;
        }
        return composite;
    }

    private boolean isPrinter(Object obj) {
        if (obj instanceof InternalPrinter) {
            if (obj instanceof Composite) {
                return ((Composite) obj).isPrinter();
            }
            return true;
        }
        return false;
    }

    private boolean isParser(Object obj) {
        if (obj instanceof InternalParser) {
            if (obj instanceof Composite) {
                return ((Composite) obj).isParser();
            }
            return true;
        }
        return false;
    }

    private boolean isFormatter(Object obj) {
        return isPrinter(obj) || isParser(obj);
    }

    static void appendUnknownString(Appendable appendable, int i) throws IOException {
        while (true) {
            i--;
            if (i >= 0) {
                appendable.append((char) 65533);
            } else {
                return;
            }
        }
    }

    class CharacterLiteral implements InternalParser, InternalPrinter {
        private final char iValue;

        CharacterLiteral(char c2) {
            this.iValue = c2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 1;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(this.iValue);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            appendable.append(this.iValue);
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return 1;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            char upperCase;
            char upperCase2;
            if (i >= charSequence.length()) {
                return i ^ (-1);
            }
            char cCharAt = charSequence.charAt(i);
            char c2 = this.iValue;
            if (cCharAt != c2 && (upperCase = Character.toUpperCase(cCharAt)) != (upperCase2 = Character.toUpperCase(c2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return i ^ (-1);
            }
            return i + 1;
        }
    }

    class StringLiteral implements InternalParser, InternalPrinter {
        private final String iValue;

        StringLiteral(String str) {
            this.iValue = str;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iValue.length();
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(this.iValue);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            appendable.append(this.iValue);
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iValue.length();
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            return DateTimeFormatterBuilder.csStartsWithIgnoreCase(charSequence, i, this.iValue) ? this.iValue.length() + i : i ^ (-1);
        }
    }

    abstract class NumberFormatter implements InternalParser, InternalPrinter {
        protected final DateTimeFieldType iFieldType;
        protected final int iMaxParsedDigits;
        protected final boolean iSigned;

        NumberFormatter(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            this.iFieldType = dateTimeFieldType;
            this.iMaxParsedDigits = i;
            this.iSigned = z;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iMaxParsedDigits;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            boolean z;
            int i2;
            int iCharAt;
            char cCharAt;
            int i3 = 0;
            boolean z2 = false;
            int iMin = Math.min(this.iMaxParsedDigits, charSequence.length() - i);
            boolean z3 = false;
            while (i3 < iMin) {
                char cCharAt2 = charSequence.charAt(i + i3);
                if (i3 == 0 && ((cCharAt2 == '-' || cCharAt2 == '+') && this.iSigned)) {
                    z2 = cCharAt2 == '-';
                    z3 = cCharAt2 == '+';
                    if (i3 + 1 >= iMin || (cCharAt = charSequence.charAt(i + i3 + 1)) < '0') {
                        break;
                    }
                    if (cCharAt > '9') {
                        z = z2;
                        break;
                    }
                    i3++;
                    iMin = Math.min(iMin + 1, charSequence.length() - i);
                } else {
                    if (cCharAt2 < '0') {
                        break;
                    }
                    if (cCharAt2 > '9') {
                        z = z2;
                        break;
                    }
                    i3++;
                }
            }
            z = z2;
            if (i3 == 0) {
                return i ^ (-1);
            }
            if (i3 >= 9) {
                if (z3) {
                    i2 = i + i3;
                    iCharAt = Integer.parseInt(charSequence.subSequence(i + 1, i2).toString());
                } else {
                    i2 = i + i3;
                    iCharAt = Integer.parseInt(charSequence.subSequence(i, i2).toString());
                }
            } else {
                int i4 = (z || z3) ? i + 1 : i;
                int i5 = i4 + 1;
                try {
                    int iCharAt2 = charSequence.charAt(i4) - '0';
                    i2 = i + i3;
                    iCharAt = iCharAt2;
                    for (int i6 = i5; i6 < i2; i6++) {
                        iCharAt = (charSequence.charAt(i6) + ((iCharAt << 3) + (iCharAt << 1))) - 48;
                    }
                    if (z) {
                        iCharAt = -iCharAt;
                    }
                } catch (StringIndexOutOfBoundsException e2) {
                    return i ^ (-1);
                }
            }
            dateTimeParserBucket.saveField(this.iFieldType, iCharAt);
            return i2;
        }
    }

    class UnpaddedNumber extends NumberFormatter {
        protected UnpaddedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            super(dateTimeFieldType, i, z);
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iMaxParsedDigits;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                FormatUtils.appendUnpaddedInteger(appendable, this.iFieldType.getField(chronology).get(j));
            } catch (RuntimeException e2) {
                appendable.append((char) 65533);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            if (readablePartial.isSupported(this.iFieldType)) {
                try {
                    FormatUtils.appendUnpaddedInteger(appendable, readablePartial.get(this.iFieldType));
                    return;
                } catch (RuntimeException e2) {
                    appendable.append((char) 65533);
                    return;
                }
            }
            appendable.append((char) 65533);
        }
    }

    class PaddedNumber extends NumberFormatter {
        protected final int iMinPrintedDigits;

        protected PaddedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z, int i2) {
            super(dateTimeFieldType, i, z);
            this.iMinPrintedDigits = i2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iMaxParsedDigits;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                FormatUtils.appendPaddedInteger(appendable, this.iFieldType.getField(chronology).get(j), this.iMinPrintedDigits);
            } catch (RuntimeException e2) {
                DateTimeFormatterBuilder.appendUnknownString(appendable, this.iMinPrintedDigits);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            if (readablePartial.isSupported(this.iFieldType)) {
                try {
                    FormatUtils.appendPaddedInteger(appendable, readablePartial.get(this.iFieldType), this.iMinPrintedDigits);
                    return;
                } catch (RuntimeException e2) {
                    DateTimeFormatterBuilder.appendUnknownString(appendable, this.iMinPrintedDigits);
                    return;
                }
            }
            DateTimeFormatterBuilder.appendUnknownString(appendable, this.iMinPrintedDigits);
        }
    }

    class FixedNumber extends PaddedNumber {
        protected FixedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            super(dateTimeFieldType, i, z, i);
        }

        @Override // org.joda.time.format.DateTimeFormatterBuilder.NumberFormatter, org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int i2;
            char cCharAt;
            int into = super.parseInto(dateTimeParserBucket, charSequence, i);
            if (into >= 0 && into != (i2 = this.iMaxParsedDigits + i)) {
                if (this.iSigned && ((cCharAt = charSequence.charAt(i)) == '-' || cCharAt == '+')) {
                    i2++;
                }
                if (into > i2) {
                    return (i2 + 1) ^ (-1);
                }
                if (into < i2) {
                    return into ^ (-1);
                }
                return into;
            }
            return into;
        }
    }

    class TwoDigitYear implements InternalParser, InternalPrinter {
        private final boolean iLenientParse;
        private final int iPivot;
        private final DateTimeFieldType iType;

        TwoDigitYear(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            this.iType = dateTimeFieldType;
            this.iPivot = i;
            this.iLenientParse = z;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iLenientParse ? 4 : 2;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int i2;
            int iCharAt;
            int i3;
            int length = charSequence.length() - i;
            if (!this.iLenientParse) {
                if (Math.min(2, length) < 2) {
                    return i ^ (-1);
                }
            } else {
                int i4 = 0;
                boolean z = false;
                boolean z2 = false;
                int i5 = length;
                while (i4 < i5) {
                    char cCharAt = charSequence.charAt(i + i4);
                    if (i4 == 0 && (cCharAt == '-' || cCharAt == '+')) {
                        boolean z3 = cCharAt == '-';
                        if (z3) {
                            i4++;
                            z = z3;
                            z2 = true;
                        } else {
                            i++;
                            z2 = true;
                            i5--;
                            z = z3;
                        }
                    } else {
                        if (cCharAt < '0' || cCharAt > '9') {
                            break;
                        }
                        i4++;
                    }
                }
                if (i4 == 0) {
                    return i ^ (-1);
                }
                if (z2 || i4 != 2) {
                    if (i4 >= 9) {
                        i2 = i + i4;
                        iCharAt = Integer.parseInt(charSequence.subSequence(i, i2).toString());
                    } else {
                        int i6 = z ? i + 1 : i;
                        int i7 = i6 + 1;
                        try {
                            int iCharAt2 = charSequence.charAt(i6) - '0';
                            i2 = i + i4;
                            iCharAt = iCharAt2;
                            for (int i8 = i7; i8 < i2; i8++) {
                                iCharAt = (charSequence.charAt(i8) + ((iCharAt << 3) + (iCharAt << 1))) - 48;
                            }
                            if (z) {
                                iCharAt = -iCharAt;
                            }
                        } catch (StringIndexOutOfBoundsException e2) {
                            return i ^ (-1);
                        }
                    }
                    dateTimeParserBucket.saveField(this.iType, iCharAt);
                    return i2;
                }
            }
            char cCharAt2 = charSequence.charAt(i);
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                return i ^ (-1);
            }
            int i9 = cCharAt2 - '0';
            char cCharAt3 = charSequence.charAt(i + 1);
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                return i ^ (-1);
            }
            int i10 = (((i9 << 1) + (i9 << 3)) + cCharAt3) - 48;
            int iIntValue = this.iPivot;
            if (dateTimeParserBucket.getPivotYear() != null) {
                iIntValue = dateTimeParserBucket.getPivotYear().intValue();
            }
            int i11 = iIntValue - 50;
            if (i11 >= 0) {
                i3 = i11 % 100;
            } else {
                i3 = ((i11 + 1) % 100) + 99;
            }
            dateTimeParserBucket.saveField(this.iType, (((i10 < i3 ? 100 : 0) + i11) - i3) + i10);
            return i + 2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            int twoDigitYear = getTwoDigitYear(j, chronology);
            if (twoDigitYear < 0) {
                appendable.append((char) 65533);
                appendable.append((char) 65533);
            } else {
                FormatUtils.appendPaddedInteger(appendable, twoDigitYear, 2);
            }
        }

        private int getTwoDigitYear(long j, Chronology chronology) {
            try {
                int i = this.iType.getField(chronology).get(j);
                if (i < 0) {
                    i = -i;
                }
                return i % 100;
            } catch (RuntimeException e2) {
                return -1;
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            int twoDigitYear = getTwoDigitYear(readablePartial);
            if (twoDigitYear < 0) {
                appendable.append((char) 65533);
                appendable.append((char) 65533);
            } else {
                FormatUtils.appendPaddedInteger(appendable, twoDigitYear, 2);
            }
        }

        private int getTwoDigitYear(ReadablePartial readablePartial) {
            if (readablePartial.isSupported(this.iType)) {
                try {
                    int i = readablePartial.get(this.iType);
                    if (i < 0) {
                        i = -i;
                    }
                    return i % 100;
                } catch (RuntimeException e2) {
                }
            }
            return -1;
        }
    }

    class TextField implements InternalParser, InternalPrinter {
        private static Map<Locale, Map<DateTimeFieldType, Object[]>> cParseCache = new ConcurrentHashMap();
        private final DateTimeFieldType iFieldType;
        private final boolean iShort;

        TextField(DateTimeFieldType dateTimeFieldType, boolean z) {
            this.iFieldType = dateTimeFieldType;
            this.iShort = z;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iShort ? 6 : 20;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                appendable.append(print(j, chronology, locale));
            } catch (RuntimeException e2) {
                appendable.append((char) 65533);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            try {
                appendable.append(print(readablePartial, locale));
            } catch (RuntimeException e2) {
                appendable.append((char) 65533);
            }
        }

        private String print(long j, Chronology chronology, Locale locale) {
            DateTimeField field = this.iFieldType.getField(chronology);
            return this.iShort ? field.getAsShortText(j, locale) : field.getAsText(j, locale);
        }

        private String print(ReadablePartial readablePartial, Locale locale) {
            if (readablePartial.isSupported(this.iFieldType)) {
                DateTimeField field = this.iFieldType.getField(readablePartial.getChronology());
                if (this.iShort) {
                    return field.getAsShortText(readablePartial, locale);
                }
                return field.getAsText(readablePartial, locale);
            }
            return "�";
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return estimatePrintedLength();
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            Map map;
            Map map2;
            int iIntValue;
            Locale locale = dateTimeParserBucket.getLocale();
            Map<DateTimeFieldType, Object[]> map3 = cParseCache.get(locale);
            if (map3 == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                cParseCache.put(locale, concurrentHashMap);
                map = concurrentHashMap;
            } else {
                map = map3;
            }
            Object[] objArr = (Object[]) map.get(this.iFieldType);
            if (objArr == null) {
                ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(32);
                MutableDateTime.Property property = new MutableDateTime(0L, DateTimeZone.UTC).property(this.iFieldType);
                int minimumValueOverall = property.getMinimumValueOverall();
                int maximumValueOverall = property.getMaximumValueOverall();
                if (maximumValueOverall - minimumValueOverall > 32) {
                    return i ^ (-1);
                }
                iIntValue = property.getMaximumTextLength(locale);
                while (minimumValueOverall <= maximumValueOverall) {
                    property.set(minimumValueOverall);
                    concurrentHashMap2.put(property.getAsShortText(locale), Boolean.TRUE);
                    concurrentHashMap2.put(property.getAsShortText(locale).toLowerCase(locale), Boolean.TRUE);
                    concurrentHashMap2.put(property.getAsShortText(locale).toUpperCase(locale), Boolean.TRUE);
                    concurrentHashMap2.put(property.getAsText(locale), Boolean.TRUE);
                    concurrentHashMap2.put(property.getAsText(locale).toLowerCase(locale), Boolean.TRUE);
                    concurrentHashMap2.put(property.getAsText(locale).toUpperCase(locale), Boolean.TRUE);
                    minimumValueOverall++;
                }
                if ("en".equals(locale.getLanguage()) && this.iFieldType == DateTimeFieldType.era()) {
                    concurrentHashMap2.put("BCE", Boolean.TRUE);
                    concurrentHashMap2.put("bce", Boolean.TRUE);
                    concurrentHashMap2.put("CE", Boolean.TRUE);
                    concurrentHashMap2.put("ce", Boolean.TRUE);
                    iIntValue = 3;
                }
                map.put(this.iFieldType, new Object[]{concurrentHashMap2, Integer.valueOf(iIntValue)});
                map2 = concurrentHashMap2;
            } else {
                map2 = (Map) objArr[0];
                iIntValue = ((Integer) objArr[1]).intValue();
            }
            for (int iMin = Math.min(charSequence.length(), iIntValue + i); iMin > i; iMin--) {
                String string = charSequence.subSequence(i, iMin).toString();
                if (map2.containsKey(string)) {
                    dateTimeParserBucket.saveField(this.iFieldType, string, locale);
                    return iMin;
                }
            }
            return i ^ (-1);
        }
    }

    class Fraction implements InternalParser, InternalPrinter {
        private final DateTimeFieldType iFieldType;
        protected int iMaxDigits;
        protected int iMinDigits;

        protected Fraction(DateTimeFieldType dateTimeFieldType, int i, int i2) {
            this.iFieldType = dateTimeFieldType;
            i2 = i2 > 18 ? 18 : i2;
            this.iMinDigits = i;
            this.iMaxDigits = i2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iMaxDigits;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            printTo(appendable, j, chronology);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            printTo(appendable, readablePartial.getChronology().set(readablePartial, 0L), readablePartial.getChronology());
        }

        protected void printTo(Appendable appendable, long j, Chronology chronology) throws IOException {
            String string;
            DateTimeField field = this.iFieldType.getField(chronology);
            int i = this.iMinDigits;
            try {
                long jRemainder = field.remainder(j);
                if (jRemainder != 0) {
                    long[] fractionData = getFractionData(jRemainder, field);
                    long j2 = fractionData[0];
                    int i2 = (int) fractionData[1];
                    if ((2147483647L & j2) == j2) {
                        string = Integer.toString((int) j2);
                    } else {
                        string = Long.toString(j2);
                    }
                    int length = string.length();
                    while (length < i2) {
                        appendable.append('0');
                        i--;
                        i2--;
                    }
                    if (i < i2) {
                        while (i < i2 && length > 1 && string.charAt(length - 1) == '0') {
                            i2--;
                            length--;
                        }
                        if (length < string.length()) {
                            for (int i3 = 0; i3 < length; i3++) {
                                appendable.append(string.charAt(i3));
                            }
                            return;
                        }
                    }
                    appendable.append(string);
                    return;
                }
                while (true) {
                    i--;
                    if (i >= 0) {
                        appendable.append('0');
                    } else {
                        return;
                    }
                }
            } catch (RuntimeException e2) {
                DateTimeFormatterBuilder.appendUnknownString(appendable, i);
            }
        }

        private long[] getFractionData(long j, DateTimeField dateTimeField) {
            int i;
            long j2;
            long unitMillis = dateTimeField.getDurationField().getUnitMillis();
            int i2 = this.iMaxDigits;
            while (true) {
                switch (i) {
                    case 1:
                        j2 = 10;
                        break;
                    case 2:
                        j2 = 100;
                        break;
                    case 3:
                        j2 = 1000;
                        break;
                    case 4:
                        j2 = 10000;
                        break;
                    case 5:
                        j2 = 100000;
                        break;
                    case 6:
                        j2 = 1000000;
                        break;
                    case 7:
                        j2 = 10000000;
                        break;
                    case 8:
                        j2 = 100000000;
                        break;
                    case 9:
                        j2 = 1000000000;
                        break;
                    case 10:
                        j2 = 10000000000L;
                        break;
                    case 11:
                        j2 = 100000000000L;
                        break;
                    case 12:
                        j2 = 1000000000000L;
                        break;
                    case 13:
                        j2 = 10000000000000L;
                        break;
                    case 14:
                        j2 = 100000000000000L;
                        break;
                    case 15:
                        j2 = 1000000000000000L;
                        break;
                    case 16:
                        j2 = 10000000000000000L;
                        break;
                    case 17:
                        j2 = 100000000000000000L;
                        break;
                    case 18:
                        j2 = 1000000000000000000L;
                        break;
                    default:
                        j2 = 1;
                        break;
                }
                if ((unitMillis * j2) / j2 != unitMillis) {
                    i2 = i - 1;
                } else {
                    return new long[]{(j2 * j) / unitMillis, i};
                }
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iMaxDigits;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            DateTimeField field = this.iFieldType.getField(dateTimeParserBucket.getChronology());
            int iMin = Math.min(this.iMaxDigits, charSequence.length() - i);
            long j = 0;
            long unitMillis = field.getDurationField().getUnitMillis() * 10;
            int i2 = 0;
            while (i2 < iMin) {
                char cCharAt = charSequence.charAt(i + i2);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i2++;
                unitMillis /= 10;
                j += ((long) (cCharAt - '0')) * unitMillis;
            }
            long j2 = j / 10;
            if (i2 == 0) {
                return i ^ (-1);
            }
            if (j2 > 2147483647L) {
                return i ^ (-1);
            }
            dateTimeParserBucket.saveField(new PreciseDateTimeField(DateTimeFieldType.millisOfSecond(), MillisDurationField.INSTANCE, field.getDurationField()), (int) j2);
            return i2 + i;
        }
    }

    class TimeZoneOffset implements InternalParser, InternalPrinter {
        private final int iMaxFields;
        private final int iMinFields;
        private final boolean iShowSeparators;
        private final String iZeroOffsetParseText;
        private final String iZeroOffsetPrintText;

        TimeZoneOffset(String str, String str2, boolean z, int i, int i2) {
            int i3 = 4;
            this.iZeroOffsetPrintText = str;
            this.iZeroOffsetParseText = str2;
            this.iShowSeparators = z;
            if (i <= 0 || i2 < i) {
                throw new IllegalArgumentException();
            }
            if (i > 4) {
                i2 = 4;
            } else {
                i3 = i;
            }
            this.iMinFields = i3;
            this.iMaxFields = i2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            int i = (this.iMinFields + 1) << 1;
            if (this.iShowSeparators) {
                i += this.iMinFields - 1;
            }
            if (this.iZeroOffsetPrintText != null && this.iZeroOffsetPrintText.length() > i) {
                return this.iZeroOffsetPrintText.length();
            }
            return i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            if (dateTimeZone != null) {
                if (i == 0 && this.iZeroOffsetPrintText != null) {
                    appendable.append(this.iZeroOffsetPrintText);
                    return;
                }
                if (i >= 0) {
                    appendable.append('+');
                } else {
                    appendable.append('-');
                    i = -i;
                }
                int i2 = i / 3600000;
                FormatUtils.appendPaddedInteger(appendable, i2, 2);
                if (this.iMaxFields != 1) {
                    int i3 = i - (i2 * 3600000);
                    if (i3 != 0 || this.iMinFields > 1) {
                        int i4 = i3 / 60000;
                        if (this.iShowSeparators) {
                            appendable.append(':');
                        }
                        FormatUtils.appendPaddedInteger(appendable, i4, 2);
                        if (this.iMaxFields != 2) {
                            int i5 = i3 - (i4 * 60000);
                            if (i5 != 0 || this.iMinFields > 2) {
                                int i6 = i5 / 1000;
                                if (this.iShowSeparators) {
                                    appendable.append(':');
                                }
                                FormatUtils.appendPaddedInteger(appendable, i6, 2);
                                if (this.iMaxFields != 3) {
                                    int i7 = i5 - (i6 * 1000);
                                    if (i7 != 0 || this.iMinFields > 3) {
                                        if (this.iShowSeparators) {
                                            appendable.append('.');
                                        }
                                        FormatUtils.appendPaddedInteger(appendable, i7, 3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return estimatePrintedLength();
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0131  */
        @Override // org.joda.time.format.InternalParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parseInto(org.joda.time.format.DateTimeParserBucket r10, java.lang.CharSequence r11, int r12) {
            /*
                Method dump skipped, instruction units count: 353
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormatterBuilder.TimeZoneOffset.parseInto(org.joda.time.format.DateTimeParserBucket, java.lang.CharSequence, int):int");
        }

        private int digitCount(CharSequence charSequence, int i, int i2) {
            int i3 = 0;
            for (int iMin = Math.min(charSequence.length() - i, i2); iMin > 0; iMin--) {
                char cCharAt = charSequence.charAt(i + i3);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i3++;
            }
            return i3;
        }
    }

    class TimeZoneName implements InternalParser, InternalPrinter {
        static final int LONG_NAME = 0;
        static final int SHORT_NAME = 1;
        private final Map<String, DateTimeZone> iParseLookup;
        private final int iType;

        TimeZoneName(int i, Map<String, DateTimeZone> map) {
            this.iType = i;
            this.iParseLookup = map;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iType == 1 ? 4 : 20;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(print(j - ((long) i), dateTimeZone, locale));
        }

        private String print(long j, DateTimeZone dateTimeZone, Locale locale) {
            if (dateTimeZone == null) {
                return "";
            }
            switch (this.iType) {
                case 0:
                    return dateTimeZone.getName(j, locale);
                case 1:
                    return dateTimeZone.getShortName(j, locale);
                default:
                    return "";
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iType == 1 ? 4 : 20;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            Map<String, DateTimeZone> map = this.iParseLookup;
            Map<String, DateTimeZone> defaultTimeZoneNames = map != null ? map : DateTimeUtils.getDefaultTimeZoneNames();
            String str = null;
            for (String str2 : defaultTimeZoneNames.keySet()) {
                if (!DateTimeFormatterBuilder.csStartsWith(charSequence, i, str2) || (str != null && str2.length() <= str.length())) {
                    str2 = str;
                }
                str = str2;
            }
            if (str == null) {
                return i ^ (-1);
            }
            dateTimeParserBucket.setZone(defaultTimeZoneNames.get(str));
            return str.length() + i;
        }
    }

    enum TimeZoneId implements InternalParser, InternalPrinter {
        INSTANCE;

        private static final List<String> ALL_IDS = new ArrayList(DateTimeZone.getAvailableIDs());
        static final int MAX_LENGTH;

        static {
            int iMax = 0;
            Collections.sort(ALL_IDS);
            Iterator<String> it = ALL_IDS.iterator();
            while (true) {
                int i = iMax;
                if (it.hasNext()) {
                    iMax = Math.max(i, it.next().length());
                } else {
                    MAX_LENGTH = i;
                    return;
                }
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return MAX_LENGTH;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(dateTimeZone != null ? dateTimeZone.getID() : "");
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return MAX_LENGTH;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            String str = null;
            int iPrefixedStartPosition = prefixedStartPosition(charSequence, i);
            while (iPrefixedStartPosition < ALL_IDS.size()) {
                String str2 = ALL_IDS.get(iPrefixedStartPosition);
                if (!DateTimeFormatterBuilder.csStartsWith(charSequence, i, str2)) {
                    break;
                }
                if (str != null && str2.length() <= str.length()) {
                    str2 = str;
                }
                iPrefixedStartPosition++;
                str = str2;
            }
            if (str == null) {
                return i ^ (-1);
            }
            dateTimeParserBucket.setZone(DateTimeZone.forID(str));
            return str.length() + i;
        }

        private static int prefixedStartPosition(CharSequence charSequence, int i) {
            int i2;
            int i3;
            int i4 = 0;
            int size = ALL_IDS.size() - 1;
            while (i4 <= size) {
                int i5 = (i4 + size) >>> 1;
                int iCsCompare = DateTimeFormatterBuilder.csCompare(charSequence, i, ALL_IDS.get(i5));
                if (iCsCompare > 0) {
                    i3 = i5 - 1;
                    i2 = i4;
                } else {
                    if (iCsCompare >= 0) {
                        return i5;
                    }
                    int i6 = size;
                    i2 = i5 + 1;
                    i3 = i6;
                }
                i4 = i2;
                size = i3;
            }
            return i4;
        }
    }

    class Composite implements InternalParser, InternalPrinter {
        private final int iParsedLengthEstimate;
        private final InternalParser[] iParsers;
        private final int iPrintedLengthEstimate;
        private final InternalPrinter[] iPrinters;

        Composite(List<Object> list) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            decompose(list, arrayList, arrayList2);
            if (arrayList.contains(null) || arrayList.isEmpty()) {
                this.iPrinters = null;
                this.iPrintedLengthEstimate = 0;
            } else {
                int size = arrayList.size();
                this.iPrinters = new InternalPrinter[size];
                int iEstimatePrintedLength = 0;
                for (int i = 0; i < size; i++) {
                    InternalPrinter internalPrinter = (InternalPrinter) arrayList.get(i);
                    iEstimatePrintedLength += internalPrinter.estimatePrintedLength();
                    this.iPrinters[i] = internalPrinter;
                }
                this.iPrintedLengthEstimate = iEstimatePrintedLength;
            }
            if (arrayList2.contains(null) || arrayList2.isEmpty()) {
                this.iParsers = null;
                this.iParsedLengthEstimate = 0;
                return;
            }
            int size2 = arrayList2.size();
            this.iParsers = new InternalParser[size2];
            int iEstimateParsedLength = 0;
            for (int i2 = 0; i2 < size2; i2++) {
                InternalParser internalParser = (InternalParser) arrayList2.get(i2);
                iEstimateParsedLength += internalParser.estimateParsedLength();
                this.iParsers[i2] = internalParser;
            }
            this.iParsedLengthEstimate = iEstimateParsedLength;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.iPrintedLengthEstimate;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            InternalPrinter[] internalPrinterArr = this.iPrinters;
            if (internalPrinterArr == null) {
                throw new UnsupportedOperationException();
            }
            Locale locale2 = locale == null ? Locale.getDefault() : locale;
            for (InternalPrinter internalPrinter : internalPrinterArr) {
                internalPrinter.printTo(appendable, j, chronology, i, dateTimeZone, locale2);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            InternalPrinter[] internalPrinterArr = this.iPrinters;
            if (internalPrinterArr == null) {
                throw new UnsupportedOperationException();
            }
            if (locale == null) {
                locale = Locale.getDefault();
            }
            for (InternalPrinter internalPrinter : internalPrinterArr) {
                internalPrinter.printTo(appendable, readablePartial, locale);
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iParsedLengthEstimate;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            InternalParser[] internalParserArr = this.iParsers;
            if (internalParserArr == null) {
                throw new UnsupportedOperationException();
            }
            int length = internalParserArr.length;
            for (int i2 = 0; i2 < length && i >= 0; i2++) {
                i = internalParserArr[i2].parseInto(dateTimeParserBucket, charSequence, i);
            }
            return i;
        }

        boolean isPrinter() {
            return this.iPrinters != null;
        }

        boolean isParser() {
            return this.iParsers != null;
        }

        private void decompose(List<Object> list, List<Object> list2, List<Object> list3) {
            int size = list.size();
            for (int i = 0; i < size; i += 2) {
                Object obj = list.get(i);
                if (obj instanceof Composite) {
                    addArrayToList(list2, ((Composite) obj).iPrinters);
                } else {
                    list2.add(obj);
                }
                Object obj2 = list.get(i + 1);
                if (obj2 instanceof Composite) {
                    addArrayToList(list3, ((Composite) obj2).iParsers);
                } else {
                    list3.add(obj2);
                }
            }
        }

        private void addArrayToList(List<Object> list, Object[] objArr) {
            if (objArr != null) {
                for (Object obj : objArr) {
                    list.add(obj);
                }
            }
        }
    }

    class MatchingParser implements InternalParser {
        private final int iParsedLengthEstimate;
        private final InternalParser[] iParsers;

        MatchingParser(InternalParser[] internalParserArr) {
            int iEstimateParsedLength;
            this.iParsers = internalParserArr;
            int i = 0;
            int length = internalParserArr.length;
            while (true) {
                int i2 = length - 1;
                if (i2 >= 0) {
                    InternalParser internalParser = internalParserArr[i2];
                    if (internalParser == null || (iEstimateParsedLength = internalParser.estimateParsedLength()) <= i) {
                        iEstimateParsedLength = i;
                    }
                    i = iEstimateParsedLength;
                    length = i2;
                } else {
                    this.iParsedLengthEstimate = i;
                    return;
                }
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.iParsedLengthEstimate;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        
            if (r4 != r13) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x001a, code lost:
        
            if (r1 == false) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        
            if (r2 == null) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
        
            r11.restoreState(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
        
            return r0 ^ (-1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        
            if (r4 > r13) goto L12;
         */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0058  */
        @Override // org.joda.time.format.InternalParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parseInto(org.joda.time.format.DateTimeParserBucket r11, java.lang.CharSequence r12, int r13) {
            /*
                r10 = this;
                r5 = 0
                org.joda.time.format.InternalParser[] r7 = r10.iParsers
                int r8 = r7.length
                java.lang.Object r9 = r11.saveState()
                r2 = 0
                r6 = r5
                r0 = r13
                r4 = r13
            Lc:
                if (r6 >= r8) goto L5b
                r1 = r7[r6]
                if (r1 != 0) goto L23
                if (r4 > r13) goto L15
            L14:
                return r13
            L15:
                r1 = 1
            L16:
                if (r4 > r13) goto L1c
                if (r4 != r13) goto L55
                if (r1 == 0) goto L55
            L1c:
                if (r2 == 0) goto L21
                r11.restoreState(r2)
            L21:
                r13 = r4
                goto L14
            L23:
                int r3 = r1.parseInto(r11, r12, r13)
                if (r3 < r13) goto L4b
                if (r3 <= r4) goto L58
                int r1 = r12.length()
                if (r3 >= r1) goto L3b
                int r1 = r6 + 1
                if (r1 >= r8) goto L3b
                int r1 = r6 + 1
                r1 = r7[r1]
                if (r1 != 0) goto L3d
            L3b:
                r13 = r3
                goto L14
            L3d:
                java.lang.Object r1 = r11.saveState()
                r2 = r3
            L42:
                r11.restoreState(r9)
                int r3 = r6 + 1
                r6 = r3
                r4 = r2
                r2 = r1
                goto Lc
            L4b:
                if (r3 >= 0) goto L58
                r1 = r3 ^ (-1)
                if (r1 <= r0) goto L58
                r0 = r1
                r1 = r2
                r2 = r4
                goto L42
            L55:
                r13 = r0 ^ (-1)
                goto L14
            L58:
                r1 = r2
                r2 = r4
                goto L42
            L5b:
                r1 = r5
                goto L16
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormatterBuilder.MatchingParser.parseInto(org.joda.time.format.DateTimeParserBucket, java.lang.CharSequence, int):int");
        }
    }

    static int csCompare(CharSequence charSequence, int i, String str) {
        int length = charSequence.length() - i;
        int length2 = str.length();
        int iMin = Math.min(length, length2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iCharAt = str.charAt(i2) - charSequence.charAt(i + i2);
            if (iCharAt != 0) {
                return iCharAt;
            }
        }
        return length2 - length;
    }

    static boolean csStartsWith(CharSequence charSequence, int i, String str) {
        int length = str.length();
        if (charSequence.length() - i < length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i + i2) != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    static boolean csStartsWithIgnoreCase(CharSequence charSequence, int i, String str) {
        char upperCase;
        char upperCase2;
        int length = str.length();
        if (charSequence.length() - i < length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = charSequence.charAt(i + i2);
            char cCharAt2 = str.charAt(i2);
            if (cCharAt != cCharAt2 && (upperCase = Character.toUpperCase(cCharAt)) != (upperCase2 = Character.toUpperCase(cCharAt2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
        }
        return true;
    }
}
