package com.dropbox.core.stone;

import com.d.a.a.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
final class Util {
    public static final d JSON = new d();
    private static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    private static final String DATE_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static final int LONG_FORMAT_LENGTH = DATE_TIME_FORMAT.replace("'", "").length();
    private static final String DATE_FORMAT = "yyyy-MM-dd";
    private static final int SHORT_FORMAT_LENGTH = DATE_FORMAT.replace("'", "").length();

    Util() {
    }

    public static String formatTimestamp(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATE_TIME_FORMAT);
        simpleDateFormat.setCalendar(new GregorianCalendar(UTC));
        return simpleDateFormat.format(date);
    }

    public static Date parseTimestamp(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat;
        int length = str.length();
        if (length == LONG_FORMAT_LENGTH) {
            simpleDateFormat = new SimpleDateFormat(DATE_TIME_FORMAT);
        } else if (length == SHORT_FORMAT_LENGTH) {
            simpleDateFormat = new SimpleDateFormat(DATE_FORMAT);
        } else {
            throw new ParseException("timestamp has unexpected format: '" + str + "'", 0);
        }
        simpleDateFormat.setCalendar(new GregorianCalendar(UTC));
        return simpleDateFormat.parse(str);
    }
}
