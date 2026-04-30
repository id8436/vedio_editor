package com.google.gdata.data;

import com.google.gdata.util.ParseException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes3.dex */
public class DateTime implements Comparable<Object> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final TimeZone GMT;
    public static final Pattern datePattern;
    public static final Pattern dateTimeChoicePattern;
    private static final SimpleDateFormat dateTimeFormat822;
    public static final Pattern dateTimePattern;
    protected boolean dateOnly;
    protected Integer tzShift;
    protected long value;

    static {
        $assertionsDisabled = !DateTime.class.desiredAssertionStatus();
        dateTimePattern = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
        datePattern = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
        dateTimeChoicePattern = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)([Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?)?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
        dateTimeFormat822 = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.ENGLISH);
        GMT = TimeZone.getTimeZone("GMT");
        dateTimeFormat822.setTimeZone(GMT);
    }

    public DateTime() {
        this.value = 0L;
        this.dateOnly = false;
        this.tzShift = null;
    }

    public DateTime(long j) {
        this.value = 0L;
        this.dateOnly = false;
        this.tzShift = null;
        this.value = j;
    }

    public DateTime(Date date) {
        this.value = 0L;
        this.dateOnly = false;
        this.tzShift = null;
        this.value = date.getTime();
    }

    public DateTime(long j, int i) {
        this.value = 0L;
        this.dateOnly = false;
        this.tzShift = null;
        this.value = j;
        this.tzShift = new Integer(i);
    }

    public DateTime(Date date, TimeZone timeZone) {
        this.value = 0L;
        this.dateOnly = false;
        this.tzShift = null;
        this.value = date.getTime();
        this.tzShift = Integer.valueOf(timeZone.getOffset(date.getTime()) / 60000);
    }

    public static DateTime now() {
        return new DateTime(new Date(), GMT);
    }

    public long getValue() {
        return this.value;
    }

    public void setValue(long j) {
        this.value = j;
    }

    public boolean isDateOnly() {
        return this.dateOnly;
    }

    public void setDateOnly(boolean z) {
        this.dateOnly = z;
    }

    public Integer getTzShift() {
        return this.tzShift;
    }

    public void setTzShift(Integer num) {
        this.tzShift = num;
    }

    public int hashCode() {
        return Long.valueOf(this.value).hashCode();
    }

    public boolean equals(Object obj) {
        return obj instanceof DateTime ? this.value == ((DateTime) obj).value : (obj instanceof Date) && this.value == ((Date) obj).getTime();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof DateTime) {
            return new Long(this.value).compareTo(new Long(((DateTime) obj).value));
        }
        if (obj instanceof Date) {
            return new Long(this.value).compareTo(new Long(((Date) obj).getTime()));
        }
        throw new RuntimeException("Invalid type.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        long jLongValue = this.value;
        if (this.tzShift != null) {
            jLongValue += this.tzShift.longValue() * DateUtils.MILLIS_PER_MINUTE;
        }
        gregorianCalendar.setTimeInMillis(jLongValue);
        try {
            appendInt(sb, gregorianCalendar.get(1), 4);
            sb.append('-');
            appendInt(sb, gregorianCalendar.get(2) + 1, 2);
            sb.append('-');
            appendInt(sb, gregorianCalendar.get(5), 2);
            if (!this.dateOnly) {
                sb.append('T');
                appendInt(sb, gregorianCalendar.get(11), 2);
                sb.append(':');
                appendInt(sb, gregorianCalendar.get(12), 2);
                sb.append(':');
                appendInt(sb, gregorianCalendar.get(13), 2);
                if (gregorianCalendar.isSet(14)) {
                    sb.append('.');
                    appendInt(sb, gregorianCalendar.get(14), 3);
                }
            }
            if (this.tzShift != null) {
                if (this.tzShift.intValue() == 0) {
                    sb.append('Z');
                } else {
                    int iIntValue = this.tzShift.intValue();
                    if (this.tzShift.intValue() > 0) {
                        sb.append('+');
                    } else {
                        sb.append('-');
                        iIntValue = -iIntValue;
                    }
                    appendInt(sb, iIntValue / 60, 2);
                    sb.append(':');
                    appendInt(sb, iIntValue % 60, 2);
                }
            }
            return sb.toString();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String toStringRfc822() {
        String str;
        if (!$assertionsDisabled && this.dateOnly) {
            throw new AssertionError();
        }
        synchronized (dateTimeFormat822) {
            str = dateTimeFormat822.format(Long.valueOf(this.value));
        }
        return str;
    }

    public static DateTime parseRfc822(String str) throws ParseException {
        Date date;
        synchronized (dateTimeFormat822) {
            try {
                date = dateTimeFormat822.parse(str);
            } catch (java.text.ParseException e2) {
                throw new ParseException(e2);
            }
        }
        return new DateTime(date);
    }

    public String toUiString() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        long jLongValue = this.value;
        if (this.tzShift != null) {
            jLongValue += this.tzShift.longValue() * DateUtils.MILLIS_PER_MINUTE;
        }
        gregorianCalendar.setTimeInMillis(jLongValue);
        try {
            appendInt(sb, gregorianCalendar.get(1), 4);
            sb.append('-');
            appendInt(sb, gregorianCalendar.get(2) + 1, 2);
            sb.append('-');
            appendInt(sb, gregorianCalendar.get(5), 2);
            if (!this.dateOnly) {
                sb.append(' ');
                appendInt(sb, gregorianCalendar.get(11), 2);
                sb.append(':');
                appendInt(sb, gregorianCalendar.get(12), 2);
            }
            return sb.toString();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static DateTime parseDateTime(String str) throws NumberFormatException {
        Matcher matcher = str == null ? null : dateTimePattern.matcher(str);
        if (str == null || !matcher.matches()) {
            throw new NumberFormatException("Invalid date/time format.");
        }
        DateTime dateTime = new DateTime();
        dateTime.dateOnly = false;
        if (matcher.group(9) != null) {
            if (matcher.group(9).equalsIgnoreCase("Z")) {
                dateTime.tzShift = new Integer(0);
            } else {
                dateTime.tzShift = new Integer((Integer.valueOf(matcher.group(12)).intValue() * 60) + Integer.valueOf(matcher.group(13)).intValue());
                if (matcher.group(11).equals("-")) {
                    dateTime.tzShift = new Integer(-dateTime.tzShift.intValue());
                }
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.valueOf(matcher.group(1)).intValue(), Integer.valueOf(matcher.group(2)).intValue() - 1, Integer.valueOf(matcher.group(3)).intValue(), Integer.valueOf(matcher.group(4)).intValue(), Integer.valueOf(matcher.group(5)).intValue(), Integer.valueOf(matcher.group(6)).intValue());
        if (matcher.group(8) != null && matcher.group(8).length() > 0) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        dateTime.value = gregorianCalendar.getTimeInMillis();
        if (dateTime.tzShift != null) {
            dateTime.value -= (long) (dateTime.tzShift.intValue() * 60000);
        }
        return dateTime;
    }

    public static DateTime parseDate(String str) throws NumberFormatException {
        Matcher matcher = str == null ? null : datePattern.matcher(str);
        if (str == null || !matcher.matches()) {
            throw new NumberFormatException("Invalid date format.");
        }
        DateTime dateTime = new DateTime();
        dateTime.dateOnly = true;
        if (matcher.group(4) != null) {
            if (matcher.group(4).equalsIgnoreCase("Z")) {
                dateTime.tzShift = new Integer(0);
            } else {
                dateTime.tzShift = new Integer((Integer.valueOf(matcher.group(7)).intValue() * 60) + Integer.valueOf(matcher.group(8)).intValue());
                if (matcher.group(6).equals("-")) {
                    dateTime.tzShift = new Integer(-dateTime.tzShift.intValue());
                }
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.valueOf(matcher.group(1)).intValue(), Integer.valueOf(matcher.group(2)).intValue() - 1, Integer.valueOf(matcher.group(3)).intValue());
        dateTime.value = gregorianCalendar.getTimeInMillis();
        if (dateTime.tzShift != null) {
            dateTime.value -= (long) (dateTime.tzShift.intValue() * 60000);
        }
        return dateTime;
    }

    public static DateTime parseDateTimeChoice(String str) throws NumberFormatException {
        try {
            return parseDateTime(str);
        } catch (NumberFormatException e2) {
            try {
                return parseDate(str);
            } catch (NumberFormatException e3) {
                throw e3;
            }
        }
    }

    private static void appendInt(StringBuilder sb, int i, int i2) {
        if (i < 0) {
            sb.append('-');
            i = -i;
        }
        char[] cArr = new char[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            cArr[i3] = (char) ((i % 10) + 48);
            i /= 10;
        }
        sb.append(cArr);
    }
}
