package d.a.c;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.http.client.utils.DateUtils;

/* JADX INFO: compiled from: HttpDate.java */
/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<DateFormat> f4263a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f4264b = {DateUtils.PATTERN_RFC1123, "EEEE, dd-MMM-yy HH:mm:ss zzz", DateUtils.PATTERN_ASCTIME, "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DateFormat[] f4265c = new DateFormat[f4264b.length];

    public static Date a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = f4263a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() != str.length()) {
            synchronized (f4264b) {
                int length = f4264b.length;
                for (int i = 0; i < length; i++) {
                    DateFormat simpleDateFormat = f4265c[i];
                    if (simpleDateFormat == null) {
                        simpleDateFormat = new SimpleDateFormat(f4264b[i], Locale.US);
                        simpleDateFormat.setTimeZone(d.a.c.f4259g);
                        f4265c[i] = simpleDateFormat;
                    }
                    parsePosition.setIndex(0);
                    Date date2 = simpleDateFormat.parse(str, parsePosition);
                    if (parsePosition.getIndex() != 0) {
                        return date2;
                    }
                }
                return null;
            }
        }
        return date;
    }

    public static String a(Date date) {
        return f4263a.get().format(date);
    }
}
