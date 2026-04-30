package javax.mail.internet;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class MailDateFormat extends SimpleDateFormat {
    private static final long serialVersionUID = -8148227605210628779L;
    static boolean debug = false;
    private static TimeZone tz = TimeZone.getTimeZone("GMT");
    private static Calendar cal = new GregorianCalendar(tz);

    public MailDateFormat() {
        super("EEE, d MMM yyyy HH:mm:ss 'XXXXX' (z)", Locale.US);
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        int i;
        int i2;
        int length = stringBuffer.length();
        super.format(date, stringBuffer, fieldPosition);
        int i3 = length + 25;
        while (stringBuffer.charAt(i3) != 'X') {
            i3++;
        }
        this.calendar.clear();
        this.calendar.setTime(date);
        int i4 = this.calendar.get(15) + this.calendar.get(16);
        if (i4 < 0) {
            int i5 = i3 + 1;
            stringBuffer.setCharAt(i3, '-');
            i = -i4;
            i2 = i5;
        } else {
            int i6 = i3 + 1;
            stringBuffer.setCharAt(i3, '+');
            i = i4;
            i2 = i6;
        }
        int i7 = (i / 60) / 1000;
        int i8 = i7 / 60;
        int i9 = i7 % 60;
        int i10 = i2 + 1;
        stringBuffer.setCharAt(i2, Character.forDigit(i8 / 10, 10));
        int i11 = i10 + 1;
        stringBuffer.setCharAt(i10, Character.forDigit(i8 % 10, 10));
        int i12 = i11 + 1;
        stringBuffer.setCharAt(i11, Character.forDigit(i9 / 10, 10));
        int i13 = i12 + 1;
        stringBuffer.setCharAt(i12, Character.forDigit(i9 % 10, 10));
        return stringBuffer;
    }

    @Override // java.text.SimpleDateFormat, java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        return parseDate(str.toCharArray(), parsePosition, isLenient());
    }

    private static Date parseDate(char[] cArr, ParsePosition parsePosition, boolean z) {
        int timeZone = 0;
        try {
            MailDateParser mailDateParser = new MailDateParser(cArr);
            mailDateParser.skipUntilNumber();
            int number = mailDateParser.parseNumber();
            if (!mailDateParser.skipIfChar('-')) {
                mailDateParser.skipWhiteSpace();
            }
            int month = mailDateParser.parseMonth();
            if (!mailDateParser.skipIfChar('-')) {
                mailDateParser.skipWhiteSpace();
            }
            int number2 = mailDateParser.parseNumber();
            if (number2 < 50) {
                number2 += 2000;
            } else if (number2 < 100) {
                number2 += 1900;
            }
            mailDateParser.skipWhiteSpace();
            int number3 = mailDateParser.parseNumber();
            mailDateParser.skipChar(':');
            int number4 = mailDateParser.parseNumber();
            int number5 = mailDateParser.skipIfChar(':') ? mailDateParser.parseNumber() : 0;
            try {
                mailDateParser.skipWhiteSpace();
                timeZone = mailDateParser.parseTimeZone();
            } catch (java.text.ParseException e2) {
                if (debug) {
                    System.out.println(new StringBuffer().append("No timezone? : '").append((Object) cArr).append("'").toString());
                }
            }
            parsePosition.setIndex(mailDateParser.getIndex());
            return ourUTC(number2, month, number, number3, number4, number5, timeZone, z);
        } catch (Exception e3) {
            if (debug) {
                System.out.println(new StringBuffer().append("Bad date: '").append((Object) cArr).append("'").toString());
                e3.printStackTrace();
            }
            parsePosition.setIndex(1);
            return null;
        }
    }

    private static synchronized Date ourUTC(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        cal.clear();
        cal.setLenient(z);
        cal.set(1, i);
        cal.set(2, i2);
        cal.set(5, i3);
        cal.set(11, i4);
        cal.set(12, i5 + i7);
        cal.set(13, i6);
        return cal.getTime();
    }

    @Override // java.text.DateFormat
    public void setCalendar(Calendar calendar) {
        throw new RuntimeException("Method setCalendar() shouldn't be called");
    }

    @Override // java.text.DateFormat
    public void setNumberFormat(NumberFormat numberFormat) {
        throw new RuntimeException("Method setNumberFormat() shouldn't be called");
    }
}
