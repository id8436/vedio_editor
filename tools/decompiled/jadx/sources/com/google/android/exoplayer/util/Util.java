package com.google.android.exoplayer.util;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.exoplayer.upstream.DataSource;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    public static final int SDK_INT = Build.VERSION.SDK_INT;
    private static final Pattern XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
    private static final Pattern XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");

    private Util() {
    }

    public static boolean isUrlLocalFile(URL url) {
        return url.getProtocol().equals("file");
    }

    public static boolean areEqual(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static ExecutorService newSingleThreadExecutor(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer.util.Util.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor(final String str) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer.util.Util.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    public static void closeQuietly(DataSource dataSource) {
        try {
            dataSource.close();
        } catch (IOException e2) {
        }
    }

    public static String toLowerInvariant(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(Locale.US);
    }

    public static Uri parseBaseUri(String str) {
        return Uri.parse(str.substring(0, str.lastIndexOf(47)));
    }

    public static Uri getMergedUri(Uri uri, String str) {
        if (str != null) {
            if (uri == null) {
                return Uri.parse(str);
            }
            if (str.startsWith(URIUtil.SLASH)) {
                return new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).appendEncodedPath(str.substring(1)).build();
            }
            Uri uri2 = Uri.parse(str);
            return uri2.isAbsolute() ? uri2 : Uri.withAppendedPath(uri, str);
        }
        return uri;
    }

    public static int binarySearchFloor(long[] jArr, long j, boolean z, boolean z2) {
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 2);
        } else if (!z) {
            iBinarySearch--;
        }
        return z2 ? Math.max(0, iBinarySearch) : iBinarySearch;
    }

    public static int binarySearchCeil(long[] jArr, long j, boolean z, boolean z2) {
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch ^= -1;
        } else if (!z) {
            iBinarySearch++;
        }
        return z2 ? Math.min(jArr.length - 1, iBinarySearch) : iBinarySearch;
    }

    public static <T> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int iBinarySearch = Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 2);
        } else if (!z) {
            iBinarySearch--;
        }
        return z2 ? Math.max(0, iBinarySearch) : iBinarySearch;
    }

    public static <T> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int iBinarySearch = Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            iBinarySearch ^= -1;
        } else if (!z) {
            iBinarySearch++;
        }
        return z2 ? Math.min(list.size() - 1, iBinarySearch) : iBinarySearch;
    }

    public static long parseXsDuration(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (matcher.matches()) {
            boolean z = TextUtils.isEmpty(matcher.group(1)) ? false : true;
            String strGroup = matcher.group(3);
            double d2 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
            String strGroup2 = matcher.group(5);
            double d3 = (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d) + d2;
            String strGroup3 = matcher.group(7);
            double d4 = d3 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
            String strGroup4 = matcher.group(10);
            double d5 = d4 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
            String strGroup5 = matcher.group(12);
            double d6 = (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d) + d5;
            String strGroup6 = matcher.group(14);
            long j = (long) ((d6 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
            return z ? -j : j;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static long parseXsDateTime(String str) throws ParseException {
        int i;
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new ParseException("Invalid date/time format: " + str, 0);
        }
        if (matcher.group(9) == null || matcher.group(9).equalsIgnoreCase("Z")) {
            i = 0;
        } else {
            int i2 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            i = matcher.group(11).equals("-") ? i2 * (-1) : i2;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        if (i != 0) {
            return timeInMillis - ((long) (60000 * i));
        }
        return timeInMillis;
    }

    public static long scaleLargeTimestamp(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return (j2 / j3) * j;
        }
        return (long) ((j2 / j3) * j);
    }

    public static long[] scaleLargeTimestamps(List<Long> list, long j, long j2) {
        int i = 0;
        long[] jArr = new long[list.size()];
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (true) {
                int i2 = i;
                if (i2 >= jArr.length) {
                    break;
                }
                jArr[i2] = list.get(i2).longValue() / j3;
                i = i2 + 1;
            }
        } else if (j2 < j && j % j2 == 0) {
            long j4 = j / j2;
            while (true) {
                int i3 = i;
                if (i3 >= jArr.length) {
                    break;
                }
                jArr[i3] = list.get(i3).longValue() * j4;
                i = i3 + 1;
            }
        } else {
            double d2 = j / j2;
            while (true) {
                int i4 = i;
                if (i4 >= jArr.length) {
                    break;
                }
                jArr[i4] = (long) (list.get(i4).longValue() * d2);
                i = i4 + 1;
            }
        }
        return jArr;
    }

    public static void scaleLargeTimestampsInPlace(long[] jArr, long j, long j2) {
        int i = 0;
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (i < jArr.length) {
                jArr[i] = jArr[i] / j3;
                i++;
            }
            return;
        }
        if (j2 < j && j % j2 == 0) {
            long j4 = j / j2;
            while (i < jArr.length) {
                jArr[i] = jArr[i] * j4;
                i++;
            }
            return;
        }
        double d2 = j / j2;
        while (i < jArr.length) {
            jArr[i] = (long) (jArr[i] * d2);
            i++;
        }
    }

    public static int[] toArray(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }
}
