package org.joda.time;

import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.chrono.BaseChronology;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.DateTimeFormatterBuilder;
import org.joda.time.format.FormatUtils;
import org.joda.time.tz.DefaultNameProvider;
import org.joda.time.tz.FixedDateTimeZone;
import org.joda.time.tz.NameProvider;
import org.joda.time.tz.Provider;
import org.joda.time.tz.UTCProvider;
import org.joda.time.tz.ZoneInfoProvider;

/* JADX INFO: loaded from: classes.dex */
public abstract class DateTimeZone implements Serializable {
    private static final int MAX_MILLIS = 86399999;
    private static final long serialVersionUID = 5546345482340108586L;
    private final String iID;
    public static final DateTimeZone UTC = UTCDateTimeZone.INSTANCE;
    private static final AtomicReference<Provider> cProvider = new AtomicReference<>();
    private static final AtomicReference<NameProvider> cNameProvider = new AtomicReference<>();
    private static final AtomicReference<DateTimeZone> cDefault = new AtomicReference<>();

    public abstract boolean equals(Object obj);

    public abstract String getNameKey(long j);

    public abstract int getOffset(long j);

    public abstract int getStandardOffset(long j);

    public abstract boolean isFixed();

    public abstract long nextTransition(long j);

    public abstract long previousTransition(long j);

    public static DateTimeZone getDefault() {
        DateTimeZone dateTimeZoneForTimeZone = cDefault.get();
        if (dateTimeZoneForTimeZone == null) {
            try {
                try {
                    String property = System.getProperty("user.timezone");
                    if (property != null) {
                        dateTimeZoneForTimeZone = forID(property);
                    }
                } catch (RuntimeException e2) {
                }
                if (dateTimeZoneForTimeZone == null) {
                    dateTimeZoneForTimeZone = forTimeZone(TimeZone.getDefault());
                }
            } catch (IllegalArgumentException e3) {
            }
            if (dateTimeZoneForTimeZone == null) {
                dateTimeZoneForTimeZone = UTC;
            }
            if (!cDefault.compareAndSet(null, dateTimeZoneForTimeZone)) {
                return cDefault.get();
            }
            return dateTimeZoneForTimeZone;
        }
        return dateTimeZoneForTimeZone;
    }

    public static void setDefault(DateTimeZone dateTimeZone) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setDefault"));
        }
        if (dateTimeZone == null) {
            throw new IllegalArgumentException("The datetime zone must not be null");
        }
        cDefault.set(dateTimeZone);
    }

    @FromString
    public static DateTimeZone forID(String str) {
        if (str == null) {
            return getDefault();
        }
        if (str.equals("UTC")) {
            return UTC;
        }
        DateTimeZone zone = getProvider().getZone(str);
        if (zone == null) {
            if (str.startsWith("+") || str.startsWith("-")) {
                int offset = parseOffset(str);
                if (offset == 0) {
                    return UTC;
                }
                return fixedOffsetZone(printOffset(offset), offset);
            }
            throw new IllegalArgumentException("The datetime zone id '" + str + "' is not recognised");
        }
        return zone;
    }

    public static DateTimeZone forOffsetHours(int i) throws IllegalArgumentException {
        return forOffsetHoursMinutes(i, 0);
    }

    public static DateTimeZone forOffsetHoursMinutes(int i, int i2) throws IllegalArgumentException {
        int iAbs;
        if (i == 0 && i2 == 0) {
            return UTC;
        }
        if (i < -23 || i > 23) {
            throw new IllegalArgumentException("Hours out of range: " + i);
        }
        if (i2 < -59 || i2 > 59) {
            throw new IllegalArgumentException("Minutes out of range: " + i2);
        }
        if (i > 0 && i2 < 0) {
            throw new IllegalArgumentException("Positive hours must not have negative minutes: " + i2);
        }
        int i3 = i * 60;
        if (i3 < 0) {
            try {
                iAbs = i3 - Math.abs(i2);
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Offset is too large");
            }
        } else {
            iAbs = i3 + i2;
        }
        return forOffsetMillis(FieldUtils.safeMultiply(iAbs, 60000));
    }

    public static DateTimeZone forOffsetMillis(int i) {
        if (i < -86399999 || i > MAX_MILLIS) {
            throw new IllegalArgumentException("Millis out of range: " + i);
        }
        return fixedOffsetZone(printOffset(i), i);
    }

    public static DateTimeZone forTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            return getDefault();
        }
        String id = timeZone.getID();
        if (id == null) {
            throw new IllegalArgumentException("The TimeZone id must not be null");
        }
        if (id.equals("UTC")) {
            return UTC;
        }
        DateTimeZone zone = null;
        String convertedId = getConvertedId(id);
        Provider provider = getProvider();
        if (convertedId != null) {
            zone = provider.getZone(convertedId);
        }
        if (zone == null) {
            zone = provider.getZone(id);
        }
        if (zone == null) {
            if (convertedId == null && (id.startsWith("GMT+") || id.startsWith("GMT-"))) {
                int offset = parseOffset(id.substring(3));
                if (offset == 0) {
                    return UTC;
                }
                return fixedOffsetZone(printOffset(offset), offset);
            }
            throw new IllegalArgumentException("The datetime zone id '" + id + "' is not recognised");
        }
        return zone;
    }

    private static DateTimeZone fixedOffsetZone(String str, int i) {
        return i == 0 ? UTC : new FixedDateTimeZone(str, null, i, i);
    }

    public static Set<String> getAvailableIDs() {
        return getProvider().getAvailableIDs();
    }

    public static Provider getProvider() {
        Provider provider = cProvider.get();
        if (provider == null) {
            Provider defaultProvider = getDefaultProvider();
            if (!cProvider.compareAndSet(null, defaultProvider)) {
                return cProvider.get();
            }
            return defaultProvider;
        }
        return provider;
    }

    public static void setProvider(Provider provider) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setProvider"));
        }
        if (provider == null) {
            provider = getDefaultProvider();
        } else {
            validateProvider(provider);
        }
        cProvider.set(provider);
    }

    private static Provider validateProvider(Provider provider) {
        Set<String> availableIDs = provider.getAvailableIDs();
        if (availableIDs == null || availableIDs.size() == 0) {
            throw new IllegalArgumentException("The provider doesn't have any available ids");
        }
        if (!availableIDs.contains("UTC")) {
            throw new IllegalArgumentException("The provider doesn't support UTC");
        }
        if (!UTC.equals(provider.getZone("UTC"))) {
            throw new IllegalArgumentException("Invalid UTC zone provided");
        }
        return provider;
    }

    private static Provider getDefaultProvider() {
        try {
            String property = System.getProperty("org.joda.time.DateTimeZone.Provider");
            if (property != null) {
                try {
                    return validateProvider((Provider) Class.forName(property).newInstance());
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (SecurityException e3) {
        }
        try {
            String property2 = System.getProperty("org.joda.time.DateTimeZone.Folder");
            if (property2 != null) {
                try {
                    return validateProvider(new ZoneInfoProvider(new File(property2)));
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            }
        } catch (SecurityException e5) {
        }
        try {
            return validateProvider(new ZoneInfoProvider("org/joda/time/tz/data"));
        } catch (Exception e6) {
            e6.printStackTrace();
            return new UTCProvider();
        }
    }

    public static NameProvider getNameProvider() {
        NameProvider nameProvider = cNameProvider.get();
        if (nameProvider == null) {
            NameProvider defaultNameProvider = getDefaultNameProvider();
            if (!cNameProvider.compareAndSet(null, defaultNameProvider)) {
                return cNameProvider.get();
            }
            return defaultNameProvider;
        }
        return nameProvider;
    }

    public static void setNameProvider(NameProvider nameProvider) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setNameProvider"));
        }
        if (nameProvider == null) {
            nameProvider = getDefaultNameProvider();
        }
        cNameProvider.set(nameProvider);
    }

    private static NameProvider getDefaultNameProvider() {
        NameProvider nameProvider;
        try {
            String property = System.getProperty("org.joda.time.DateTimeZone.NameProvider");
            if (property == null) {
                nameProvider = null;
            } else {
                try {
                    nameProvider = (NameProvider) Class.forName(property).newInstance();
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (SecurityException e3) {
            nameProvider = null;
        }
        if (nameProvider == null) {
            return new DefaultNameProvider();
        }
        return nameProvider;
    }

    private static String getConvertedId(String str) {
        return LazyInit.CONVERSION_MAP.get(str);
    }

    private static int parseOffset(String str) {
        return -((int) LazyInit.OFFSET_FORMATTER.parseMillis(str));
    }

    private static String printOffset(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        if (i >= 0) {
            stringBuffer.append('+');
        } else {
            stringBuffer.append('-');
            i = -i;
        }
        int i2 = i / 3600000;
        FormatUtils.appendPaddedInteger(stringBuffer, i2, 2);
        int i3 = i - (i2 * 3600000);
        int i4 = i3 / 60000;
        stringBuffer.append(':');
        FormatUtils.appendPaddedInteger(stringBuffer, i4, 2);
        int i5 = i3 - (i4 * 60000);
        if (i5 == 0) {
            return stringBuffer.toString();
        }
        int i6 = i5 / 1000;
        stringBuffer.append(':');
        FormatUtils.appendPaddedInteger(stringBuffer, i6, 2);
        int i7 = i5 - (i6 * 1000);
        if (i7 == 0) {
            return stringBuffer.toString();
        }
        stringBuffer.append('.');
        FormatUtils.appendPaddedInteger(stringBuffer, i7, 3);
        return stringBuffer.toString();
    }

    protected DateTimeZone(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Id must not be null");
        }
        this.iID = str;
    }

    @ToString
    public final String getID() {
        return this.iID;
    }

    public final String getShortName(long j) {
        return getShortName(j, null);
    }

    public String getShortName(long j, Locale locale) {
        String shortName;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String nameKey = getNameKey(j);
        if (nameKey == null) {
            return this.iID;
        }
        NameProvider nameProvider = getNameProvider();
        if (nameProvider instanceof DefaultNameProvider) {
            shortName = ((DefaultNameProvider) nameProvider).getShortName(locale, this.iID, nameKey, isStandardOffset(j));
        } else {
            shortName = nameProvider.getShortName(locale, this.iID, nameKey);
        }
        return shortName == null ? printOffset(getOffset(j)) : shortName;
    }

    public final String getName(long j) {
        return getName(j, null);
    }

    public String getName(long j, Locale locale) {
        String name;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String nameKey = getNameKey(j);
        if (nameKey == null) {
            return this.iID;
        }
        NameProvider nameProvider = getNameProvider();
        if (nameProvider instanceof DefaultNameProvider) {
            name = ((DefaultNameProvider) nameProvider).getName(locale, this.iID, nameKey, isStandardOffset(j));
        } else {
            name = nameProvider.getName(locale, this.iID, nameKey);
        }
        return name == null ? printOffset(getOffset(j)) : name;
    }

    public final int getOffset(ReadableInstant readableInstant) {
        return readableInstant == null ? getOffset(DateTimeUtils.currentTimeMillis()) : getOffset(readableInstant.getMillis());
    }

    public boolean isStandardOffset(long j) {
        return getOffset(j) == getStandardOffset(j);
    }

    public int getOffsetFromLocal(long j) {
        int offset = getOffset(j);
        long j2 = j - ((long) offset);
        int offset2 = getOffset(j2);
        if (offset != offset2) {
            if (offset - offset2 < 0) {
                long jNextTransition = nextTransition(j2);
                if (jNextTransition == j - ((long) offset)) {
                    jNextTransition = Long.MAX_VALUE;
                }
                long jNextTransition2 = nextTransition(j - ((long) offset2));
                if (jNextTransition != (jNextTransition2 != j - ((long) offset2) ? jNextTransition2 : Long.MAX_VALUE)) {
                    return offset;
                }
            }
        } else if (offset >= 0) {
            long jPreviousTransition = previousTransition(j2);
            if (jPreviousTransition < j2) {
                int offset3 = getOffset(jPreviousTransition);
                if (j2 - jPreviousTransition <= offset3 - offset) {
                    return offset3;
                }
            }
        }
        return offset2;
    }

    public long convertUTCToLocal(long j) {
        int offset = getOffset(j);
        long j2 = ((long) offset) + j;
        if ((j ^ j2) < 0 && (((long) offset) ^ j) >= 0) {
            throw new ArithmeticException("Adding time zone offset caused overflow");
        }
        return j2;
    }

    public long convertLocalToUTC(long j, boolean z, long j2) {
        int offset = getOffset(j2);
        long j3 = j - ((long) offset);
        return getOffset(j3) == offset ? j3 : convertLocalToUTC(j, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long convertLocalToUTC(long r14, boolean r16) {
        /*
            r13 = this;
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            int r5 = r13.getOffset(r14)
            long r0 = (long) r5
            long r0 = r14 - r0
            int r4 = r13.getOffset(r0)
            if (r5 == r4) goto L5f
            if (r16 != 0) goto L18
            if (r5 >= 0) goto L5f
        L18:
            long r0 = (long) r5
            long r0 = r14 - r0
            long r0 = r13.nextTransition(r0)
            long r6 = (long) r5
            long r6 = r14 - r6
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 != 0) goto L27
            r0 = r2
        L27:
            long r6 = (long) r4
            long r6 = r14 - r6
            long r6 = r13.nextTransition(r6)
            long r8 = (long) r4
            long r8 = r14 - r8
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 != 0) goto L61
        L35:
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L5f
            if (r16 == 0) goto L45
            org.joda.time.IllegalInstantException r0 = new org.joda.time.IllegalInstantException
            java.lang.String r1 = r13.getID()
            r0.<init>(r14, r1)
            throw r0
        L45:
            r0 = r5
        L46:
            long r2 = (long) r0
            long r2 = r14 - r2
            long r4 = r14 ^ r2
            int r1 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r1 >= 0) goto L5e
            long r0 = (long) r0
            long r0 = r0 ^ r14
            int r0 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r0 >= 0) goto L5e
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.String r1 = "Subtracting time zone offset caused overflow"
            r0.<init>(r1)
            throw r0
        L5e:
            return r2
        L5f:
            r0 = r4
            goto L46
        L61:
            r2 = r6
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.DateTimeZone.convertLocalToUTC(long, boolean):long");
    }

    public long getMillisKeepLocal(DateTimeZone dateTimeZone, long j) {
        DateTimeZone dateTimeZone2 = dateTimeZone == null ? getDefault() : dateTimeZone;
        return dateTimeZone2 == this ? j : dateTimeZone2.convertLocalToUTC(convertUTCToLocal(j), false, j);
    }

    public boolean isLocalDateTimeGap(LocalDateTime localDateTime) {
        if (isFixed()) {
            return false;
        }
        try {
            localDateTime.toDateTime(this);
            return false;
        } catch (IllegalInstantException e2) {
            return true;
        }
    }

    public long adjustOffset(long j, boolean z) {
        long j2 = j - 10800000;
        long offset = getOffset(j2);
        long offset2 = getOffset(10800000 + j);
        if (offset > offset2) {
            long j3 = offset - offset2;
            long jNextTransition = nextTransition(j2);
            long j4 = jNextTransition - j3;
            long j5 = jNextTransition + j3;
            if (j < j4 || j >= j5) {
                return j;
            }
            return j - j4 >= j3 ? !z ? j - j3 : j : z ? j + j3 : j;
        }
        return j;
    }

    public TimeZone toTimeZone() {
        return TimeZone.getTimeZone(this.iID);
    }

    public int hashCode() {
        return getID().hashCode() + 57;
    }

    public String toString() {
        return getID();
    }

    protected Object writeReplace() throws ObjectStreamException {
        return new Stub(this.iID);
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class Stub implements Serializable {
        private static final long serialVersionUID = -6471952376487863581L;
        private transient String iID;

        Stub(String str) {
            this.iID = str;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeUTF(this.iID);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            this.iID = objectInputStream.readUTF();
        }

        private Object readResolve() throws ObjectStreamException {
            return DateTimeZone.forID(this.iID);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class LazyInit {
        static final Map<String, String> CONVERSION_MAP = buildMap();
        static final DateTimeFormatter OFFSET_FORMATTER = buildFormatter();

        LazyInit() {
        }

        private static DateTimeFormatter buildFormatter() {
            return new DateTimeFormatterBuilder().appendTimeZoneOffset(null, true, 2, 4).toFormatter().withChronology(new BaseChronology() { // from class: org.joda.time.DateTimeZone.LazyInit.1
                private static final long serialVersionUID = -3128740902654445468L;

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public DateTimeZone getZone() {
                    return null;
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public Chronology withUTC() {
                    return this;
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public Chronology withZone(DateTimeZone dateTimeZone) {
                    return this;
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public String toString() {
                    return getClass().getName();
                }
            });
        }

        private static Map<String, String> buildMap() {
            HashMap map = new HashMap();
            map.put("GMT", "UTC");
            map.put("WET", "WET");
            map.put("CET", "CET");
            map.put("MET", "CET");
            map.put("ECT", "CET");
            map.put("EET", "EET");
            map.put("MIT", "Pacific/Apia");
            map.put("HST", "Pacific/Honolulu");
            map.put("AST", "America/Anchorage");
            map.put("PST", "America/Los_Angeles");
            map.put("MST", "America/Denver");
            map.put("PNT", "America/Phoenix");
            map.put("CST", "America/Chicago");
            map.put("EST", "America/New_York");
            map.put("IET", "America/Indiana/Indianapolis");
            map.put("PRT", "America/Puerto_Rico");
            map.put("CNT", "America/St_Johns");
            map.put("AGT", "America/Argentina/Buenos_Aires");
            map.put("BET", "America/Sao_Paulo");
            map.put("ART", "Africa/Cairo");
            map.put("CAT", "Africa/Harare");
            map.put("EAT", "Africa/Addis_Ababa");
            map.put("NET", "Asia/Yerevan");
            map.put("PLT", "Asia/Karachi");
            map.put("IST", "Asia/Kolkata");
            map.put("BST", "Asia/Dhaka");
            map.put("VST", "Asia/Ho_Chi_Minh");
            map.put("CTT", "Asia/Shanghai");
            map.put("JST", "Asia/Tokyo");
            map.put("ACT", "Australia/Darwin");
            map.put("AET", "Australia/Sydney");
            map.put("SST", "Pacific/Guadalcanal");
            map.put("NST", "Pacific/Auckland");
            return Collections.unmodifiableMap(map);
        }
    }
}
