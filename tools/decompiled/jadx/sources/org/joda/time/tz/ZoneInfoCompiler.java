package org.joda.time.tz;

import android.support.v7.widget.ActivityChooserView;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.common.net.HttpHeaders;
import com.google.gdata.model.gd.Ordering;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TreeMap;
import org.apache.commons.io.IOUtils;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.LocalDate;
import org.joda.time.MutableDateTime;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.chrono.LenientChronology;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

/* JADX INFO: loaded from: classes3.dex */
public class ZoneInfoCompiler {
    static Chronology cLenientISO;
    static DateTimeOfYear cStartOfYear;
    private Map<String, RuleSet> iRuleSets = new HashMap();
    private List<Zone> iZones = new ArrayList();
    private List<String> iGoodLinks = new ArrayList();
    private List<String> iBackLinks = new ArrayList();

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        if ("-?".equals(r8[r0]) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        printUsage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r8) throws java.lang.Exception {
        /*
            r2 = 0
            r4 = 0
            int r0 = r8.length
            if (r0 != 0) goto L9
            printUsage()
        L8:
            return
        L9:
            r0 = r4
            r1 = r4
            r3 = r2
        Lc:
            int r5 = r8.length
            if (r0 >= r5) goto L5c
            java.lang.String r5 = "-src"
            r6 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            boolean r5 = r5.equals(r6)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            if (r5 == 0) goto L26
            java.io.File r3 = new java.io.File     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            int r0 = r0 + 1
            r5 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            r3.<init>(r5)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
        L23:
            int r0 = r0 + 1
            goto Lc
        L26:
            java.lang.String r5 = "-dst"
            r6 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            boolean r5 = r5.equals(r6)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            if (r5 == 0) goto L40
            java.io.File r2 = new java.io.File     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            int r0 = r0 + 1
            r5 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            r2.<init>(r5)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            goto L23
        L3b:
            r0 = move-exception
            printUsage()
            goto L8
        L40:
            java.lang.String r5 = "-verbose"
            r6 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            boolean r5 = r5.equals(r6)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            if (r5 == 0) goto L4d
            r1 = 1
            goto L23
        L4d:
            java.lang.String r5 = "-?"
            r6 = r8[r0]     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            boolean r5 = r5.equals(r6)     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            if (r5 == 0) goto L5c
            printUsage()     // Catch: java.lang.IndexOutOfBoundsException -> L3b
            goto L8
        L5c:
            int r5 = r8.length
            if (r0 < r5) goto L63
            printUsage()
            goto L8
        L63:
            int r5 = r8.length
            int r5 = r5 - r0
            java.io.File[] r6 = new java.io.File[r5]
        L67:
            int r5 = r8.length
            if (r0 >= r5) goto L82
            if (r3 != 0) goto L7a
            java.io.File r5 = new java.io.File
            r7 = r8[r0]
            r5.<init>(r7)
        L73:
            r6[r4] = r5
            int r0 = r0 + 1
            int r4 = r4 + 1
            goto L67
        L7a:
            java.io.File r5 = new java.io.File
            r7 = r8[r0]
            r5.<init>(r3, r7)
            goto L73
        L82:
            org.joda.time.tz.ZoneInfoLogger.set(r1)
            org.joda.time.tz.ZoneInfoCompiler r0 = new org.joda.time.tz.ZoneInfoCompiler
            r0.<init>()
            r0.compile(r2, r6)
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.ZoneInfoCompiler.main(java.lang.String[]):void");
    }

    private static void printUsage() {
        System.out.println("Usage: java org.joda.time.tz.ZoneInfoCompiler <options> <source files>");
        System.out.println("where possible options include:");
        System.out.println("  -src <directory>    Specify where to read source files");
        System.out.println("  -dst <directory>    Specify where to write generated files");
        System.out.println("  -verbose            Output verbosely (default false)");
    }

    static DateTimeOfYear getStartOfYear() {
        if (cStartOfYear == null) {
            cStartOfYear = new DateTimeOfYear();
        }
        return cStartOfYear;
    }

    static Chronology getLenientISOChronology() {
        if (cLenientISO == null) {
            cLenientISO = LenientChronology.getInstance(ISOChronology.getInstanceUTC());
        }
        return cLenientISO;
    }

    static void writeZoneInfoMap(DataOutputStream dataOutputStream, Map<String, DateTimeZone> map) throws IOException {
        HashMap map2 = new HashMap(map.size());
        TreeMap treeMap = new TreeMap();
        short s = 0;
        Iterator<Map.Entry<String, DateTimeZone>> it = map.entrySet().iterator();
        while (true) {
            short s2 = s;
            if (it.hasNext()) {
                Map.Entry<String, DateTimeZone> next = it.next();
                String key = next.getKey();
                if (!map2.containsKey(key)) {
                    Short shValueOf = Short.valueOf(s2);
                    map2.put(key, shValueOf);
                    treeMap.put(shValueOf, key);
                    s2 = (short) (s2 + 1);
                    if (s2 == 0) {
                        throw new InternalError("Too many time zone ids");
                    }
                }
                String id = next.getValue().getID();
                if (map2.containsKey(id)) {
                    s = s2;
                } else {
                    Short shValueOf2 = Short.valueOf(s2);
                    map2.put(id, shValueOf2);
                    treeMap.put(shValueOf2, id);
                    s = (short) (s2 + 1);
                    if (s == 0) {
                        throw new InternalError("Too many time zone ids");
                    }
                }
            } else {
                dataOutputStream.writeShort(treeMap.size());
                Iterator it2 = treeMap.values().iterator();
                while (it2.hasNext()) {
                    dataOutputStream.writeUTF((String) it2.next());
                }
                dataOutputStream.writeShort(map.size());
                for (Map.Entry<String, DateTimeZone> entry : map.entrySet()) {
                    dataOutputStream.writeShort(((Short) map2.get(entry.getKey())).shortValue());
                    dataOutputStream.writeShort(((Short) map2.get(entry.getValue().getID())).shortValue());
                }
                return;
            }
        }
    }

    static int parseYear(String str, int i) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals("minimum") || lowerCase.equals("min")) {
            return Integer.MIN_VALUE;
        }
        if (lowerCase.equals("maximum") || lowerCase.equals("max")) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return !lowerCase.equals("only") ? Integer.parseInt(lowerCase) : i;
    }

    static int parseMonth(String str) {
        DateTimeField dateTimeFieldMonthOfYear = ISOChronology.getInstanceUTC().monthOfYear();
        return dateTimeFieldMonthOfYear.get(dateTimeFieldMonthOfYear.set(0L, str, Locale.ENGLISH));
    }

    static int parseDayOfWeek(String str) {
        DateTimeField dateTimeFieldDayOfWeek = ISOChronology.getInstanceUTC().dayOfWeek();
        return dateTimeFieldDayOfWeek.get(dateTimeFieldDayOfWeek.set(0L, str, Locale.ENGLISH));
    }

    static String parseOptional(String str) {
        if (str.equals("-")) {
            return null;
        }
        return str;
    }

    static int parseTime(String str) {
        DateTimeFormatter dateTimeFormatterHourMinuteSecondFraction = ISODateTimeFormat.hourMinuteSecondFraction();
        MutableDateTime mutableDateTime = new MutableDateTime(0L, getLenientISOChronology());
        int i = str.startsWith("-") ? 1 : 0;
        if (dateTimeFormatterHourMinuteSecondFraction.parseInto(mutableDateTime, str, i) == (i ^ (-1))) {
            throw new IllegalArgumentException(str);
        }
        int millis = (int) mutableDateTime.getMillis();
        return i == 1 ? -millis : millis;
    }

    static char parseZoneChar(char c2) {
        switch (c2) {
            case 'G':
            case 'U':
            case 'Z':
            case 'g':
            case 'u':
            case 'z':
                return 'u';
            case 'S':
            case 's':
                return 's';
            default:
                return 'w';
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
    
        r2 = org.joda.time.chrono.ISOChronology.getInstanceUTC().year().set(0, 2050);
        r6 = org.joda.time.chrono.ISOChronology.getInstanceUTC().year().set(0, 1850);
        r0 = r10.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006b, code lost:
    
        r1 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006d, code lost:
    
        if (r1 < 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006f, code lost:
    
        r4 = r12.previousTransition(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
    
        if (r4 == r2) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0079, code lost:
    
        if (r4 >= r6) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x011e, code lost:
    
        r2 = ((java.lang.Long) r10.get(r1)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x012e, code lost:
    
        if ((r2 - 1) == r4) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0130, code lost:
    
        java.lang.System.out.println("*r* Error in " + r12.getID() + " " + new org.joda.time.DateTime(r4, org.joda.time.chrono.ISOChronology.getInstanceUTC()) + " != " + new org.joda.time.DateTime(r2 - 1, org.joda.time.chrono.ISOChronology.getInstanceUTC()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x017b, code lost:
    
        r0 = r1;
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean test(java.lang.String r11, org.joda.time.DateTimeZone r12) {
        /*
            Method dump skipped, instruction units count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.ZoneInfoCompiler.test(java.lang.String, org.joda.time.DateTimeZone):boolean");
    }

    public Map<String, DateTimeZone> compile(File file, File[] fileArr) throws IOException {
        if (fileArr != null) {
            for (int i = 0; i < fileArr.length; i++) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(fileArr[i]));
                parseDataFile(bufferedReader, "backward".equals(fileArr[i].getName()));
                bufferedReader.close();
            }
        }
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                throw new IOException("Destination directory doesn't exist and cannot be created: " + file);
            }
            if (!file.isDirectory()) {
                throw new IOException("Destination is not a directory: " + file);
            }
        }
        TreeMap treeMap = new TreeMap();
        TreeMap treeMap2 = new TreeMap();
        System.out.println("Writing zoneinfo files");
        for (int i2 = 0; i2 < this.iZones.size(); i2++) {
            Zone zone = this.iZones.get(i2);
            DateTimeZoneBuilder dateTimeZoneBuilder = new DateTimeZoneBuilder();
            zone.addToBuilder(dateTimeZoneBuilder, this.iRuleSets);
            DateTimeZone dateTimeZone = dateTimeZoneBuilder.toDateTimeZone(zone.iName, true);
            if (test(dateTimeZone.getID(), dateTimeZone)) {
                treeMap.put(dateTimeZone.getID(), dateTimeZone);
                treeMap2.put(dateTimeZone.getID(), zone);
                if (file != null) {
                    writeZone(file, dateTimeZoneBuilder, dateTimeZone);
                }
            }
        }
        for (int i3 = 0; i3 < this.iGoodLinks.size(); i3 += 2) {
            String str = this.iGoodLinks.get(i3);
            String str2 = this.iGoodLinks.get(i3 + 1);
            Zone zone2 = (Zone) treeMap2.get(str);
            if (zone2 == null) {
                System.out.println("Cannot find source zone '" + str + "' to link alias '" + str2 + "' to");
            } else {
                DateTimeZoneBuilder dateTimeZoneBuilder2 = new DateTimeZoneBuilder();
                zone2.addToBuilder(dateTimeZoneBuilder2, this.iRuleSets);
                DateTimeZone dateTimeZone2 = dateTimeZoneBuilder2.toDateTimeZone(str2, true);
                if (test(dateTimeZone2.getID(), dateTimeZone2)) {
                    treeMap.put(dateTimeZone2.getID(), dateTimeZone2);
                    if (file != null) {
                        writeZone(file, dateTimeZoneBuilder2, dateTimeZone2);
                    }
                }
                treeMap.put(dateTimeZone2.getID(), dateTimeZone2);
                if (ZoneInfoLogger.verbose()) {
                    System.out.println("Good link: " + str2 + " -> " + str + " revived");
                }
            }
        }
        for (int i4 = 0; i4 < 2; i4++) {
            for (int i5 = 0; i5 < this.iBackLinks.size(); i5 += 2) {
                String str3 = this.iBackLinks.get(i5);
                String str4 = this.iBackLinks.get(i5 + 1);
                DateTimeZone dateTimeZone3 = (DateTimeZone) treeMap.get(str3);
                if (dateTimeZone3 == null) {
                    if (i4 > 0) {
                        System.out.println("Cannot find time zone '" + str3 + "' to link alias '" + str4 + "' to");
                    }
                } else {
                    treeMap.put(str4, dateTimeZone3);
                    if (ZoneInfoLogger.verbose()) {
                        System.out.println("Back link: " + str4 + " -> " + dateTimeZone3.getID());
                    }
                }
            }
        }
        if (file != null) {
            System.out.println("Writing ZoneInfoMap");
            File file2 = new File(file, "ZoneInfoMap");
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file2));
            try {
                TreeMap treeMap3 = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                treeMap3.putAll(treeMap);
                writeZoneInfoMap(dataOutputStream, treeMap3);
            } finally {
                dataOutputStream.close();
            }
        }
        return treeMap;
    }

    private void writeZone(File file, DateTimeZoneBuilder dateTimeZoneBuilder, DateTimeZone dateTimeZone) throws IOException {
        if (ZoneInfoLogger.verbose()) {
            System.out.println("Writing " + dateTimeZone.getID());
        }
        File file2 = new File(file, dateTimeZone.getID());
        if (!file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            dateTimeZoneBuilder.writeTo(dateTimeZone.getID(), fileOutputStream);
            fileOutputStream.close();
            FileInputStream fileInputStream = new FileInputStream(file2);
            DateTimeZone from = DateTimeZoneBuilder.readFrom(fileInputStream, dateTimeZone.getID());
            fileInputStream.close();
            if (!dateTimeZone.equals(from)) {
                System.out.println("*e* Error in " + dateTimeZone.getID() + ": Didn't read properly from file");
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    public void parseDataFile(BufferedReader bufferedReader, boolean z) throws IOException {
        Zone zone = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                String strTrim = line.trim();
                if (strTrim.length() != 0 && strTrim.charAt(0) != '#') {
                    int iIndexOf = line.indexOf(35);
                    if (iIndexOf >= 0) {
                        line = line.substring(0, iIndexOf);
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(line, " \t");
                    if (Character.isWhitespace(line.charAt(0)) && stringTokenizer.hasMoreTokens()) {
                        if (zone != null) {
                            zone.chain(stringTokenizer);
                        }
                    } else {
                        if (zone != null) {
                            this.iZones.add(zone);
                        }
                        if (stringTokenizer.hasMoreTokens()) {
                            String strNextToken = stringTokenizer.nextToken();
                            if (strNextToken.equalsIgnoreCase("Rule")) {
                                Rule rule = new Rule(stringTokenizer);
                                RuleSet ruleSet = this.iRuleSets.get(rule.iName);
                                if (ruleSet == null) {
                                    this.iRuleSets.put(rule.iName, new RuleSet(rule));
                                } else {
                                    ruleSet.addRule(rule);
                                }
                                zone = null;
                            } else if (strNextToken.equalsIgnoreCase("Zone")) {
                                if (stringTokenizer.countTokens() < 4) {
                                    throw new IllegalArgumentException("Attempting to create a Zone from an incomplete tokenizer");
                                }
                                zone = new Zone(stringTokenizer);
                            } else if (strNextToken.equalsIgnoreCase(HttpHeaders.LINK)) {
                                String strNextToken2 = stringTokenizer.nextToken();
                                String strNextToken3 = stringTokenizer.nextToken();
                                if (z || strNextToken3.equals("US/Pacific-New") || strNextToken3.startsWith("Etc/") || strNextToken3.equals("GMT")) {
                                    this.iBackLinks.add(strNextToken2);
                                    this.iBackLinks.add(strNextToken3);
                                } else {
                                    this.iGoodLinks.add(strNextToken2);
                                    this.iGoodLinks.add(strNextToken3);
                                }
                                zone = null;
                            } else {
                                System.out.println("Unknown line: " + line);
                            }
                        }
                        zone = null;
                    }
                }
            } else {
                if (zone != null) {
                    this.iZones.add(zone);
                    return;
                }
                return;
            }
        }
    }

    class DateTimeOfYear {
        public final boolean iAdvanceDayOfWeek;
        public final int iDayOfMonth;
        public final int iDayOfWeek;
        public final int iMillisOfDay;
        public final int iMonthOfYear;
        public final char iZoneChar;

        DateTimeOfYear() {
            this.iMonthOfYear = 1;
            this.iDayOfMonth = 1;
            this.iDayOfWeek = 0;
            this.iAdvanceDayOfWeek = false;
            this.iMillisOfDay = 0;
            this.iZoneChar = 'w';
        }

        DateTimeOfYear(StringTokenizer stringTokenizer) {
            char c2;
            int dayOfWeek;
            int dayOfMonth;
            int i;
            int time;
            boolean z;
            boolean z2 = false;
            if (!stringTokenizer.hasMoreTokens()) {
                c2 = 'w';
                dayOfWeek = 0;
                dayOfMonth = 1;
                i = 1;
                time = 0;
            } else {
                int month = ZoneInfoCompiler.parseMonth(stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    c2 = 'w';
                    dayOfWeek = 0;
                    dayOfMonth = 1;
                    i = month;
                    time = 0;
                } else {
                    String strNextToken = stringTokenizer.nextToken();
                    if (strNextToken.startsWith(Ordering.Rel.LAST)) {
                        dayOfWeek = ZoneInfoCompiler.parseDayOfWeek(strNextToken.substring(4));
                        dayOfMonth = -1;
                        z = false;
                    } else {
                        try {
                            dayOfWeek = 0;
                            dayOfMonth = Integer.parseInt(strNextToken);
                            z = false;
                        } catch (NumberFormatException e2) {
                            int iIndexOf = strNextToken.indexOf(">=");
                            if (iIndexOf > 0) {
                                int i2 = Integer.parseInt(strNextToken.substring(iIndexOf + 2));
                                int dayOfWeek2 = ZoneInfoCompiler.parseDayOfWeek(strNextToken.substring(0, iIndexOf));
                                dayOfMonth = i2;
                                dayOfWeek = dayOfWeek2;
                                z = true;
                            } else {
                                int iIndexOf2 = strNextToken.indexOf("<=");
                                if (iIndexOf2 > 0) {
                                    int i3 = Integer.parseInt(strNextToken.substring(iIndexOf2 + 2));
                                    int dayOfWeek3 = ZoneInfoCompiler.parseDayOfWeek(strNextToken.substring(0, iIndexOf2));
                                    dayOfMonth = i3;
                                    dayOfWeek = dayOfWeek3;
                                    z = false;
                                } else {
                                    throw new IllegalArgumentException(strNextToken);
                                }
                            }
                        }
                    }
                    if (!stringTokenizer.hasMoreTokens()) {
                        time = 0;
                        i = month;
                        z2 = z;
                        c2 = 'w';
                    } else {
                        String strNextToken2 = stringTokenizer.nextToken();
                        char zoneChar = ZoneInfoCompiler.parseZoneChar(strNextToken2.charAt(strNextToken2.length() - 1));
                        if (strNextToken2.equals("24:00")) {
                            if (month == 12 && dayOfMonth == 31) {
                                time = ZoneInfoCompiler.parseTime("23:59:59.999");
                                i = month;
                                z2 = z;
                                c2 = zoneChar;
                            } else {
                                LocalDate localDatePlusMonths = dayOfMonth == -1 ? new LocalDate(BehanceSDKConstants.NOTIFICATION_ID_PUBLISH_PROJECT_IN_PROGRESS, month, 1).plusMonths(1) : new LocalDate(BehanceSDKConstants.NOTIFICATION_ID_PUBLISH_PROJECT_IN_PROGRESS, month, dayOfMonth).plusDays(1);
                                boolean z3 = (dayOfMonth == -1 || dayOfWeek == 0) ? false : true;
                                int monthOfYear = localDatePlusMonths.getMonthOfYear();
                                dayOfMonth = localDatePlusMonths.getDayOfMonth();
                                dayOfWeek = dayOfWeek != 0 ? (((dayOfWeek - 1) + 1) % 7) + 1 : dayOfWeek;
                                i = monthOfYear;
                                c2 = zoneChar;
                                z2 = z3;
                                time = 0;
                            }
                        } else {
                            time = ZoneInfoCompiler.parseTime(strNextToken2);
                            i = month;
                            z2 = z;
                            c2 = zoneChar;
                        }
                    }
                }
            }
            this.iMonthOfYear = i;
            this.iDayOfMonth = dayOfMonth;
            this.iDayOfWeek = dayOfWeek;
            this.iAdvanceDayOfWeek = z2;
            this.iMillisOfDay = time;
            this.iZoneChar = c2;
        }

        public void addRecurring(DateTimeZoneBuilder dateTimeZoneBuilder, String str, int i, int i2, int i3) {
            dateTimeZoneBuilder.addRecurringSavings(str, i, i2, i3, this.iZoneChar, this.iMonthOfYear, this.iDayOfMonth, this.iDayOfWeek, this.iAdvanceDayOfWeek, this.iMillisOfDay);
        }

        public void addCutover(DateTimeZoneBuilder dateTimeZoneBuilder, int i) {
            dateTimeZoneBuilder.addCutover(i, this.iZoneChar, this.iMonthOfYear, this.iDayOfMonth, this.iDayOfWeek, this.iAdvanceDayOfWeek, this.iMillisOfDay);
        }

        public String toString() {
            return "MonthOfYear: " + this.iMonthOfYear + IOUtils.LINE_SEPARATOR_UNIX + "DayOfMonth: " + this.iDayOfMonth + IOUtils.LINE_SEPARATOR_UNIX + "DayOfWeek: " + this.iDayOfWeek + IOUtils.LINE_SEPARATOR_UNIX + "AdvanceDayOfWeek: " + this.iAdvanceDayOfWeek + IOUtils.LINE_SEPARATOR_UNIX + "MillisOfDay: " + this.iMillisOfDay + IOUtils.LINE_SEPARATOR_UNIX + "ZoneChar: " + this.iZoneChar + IOUtils.LINE_SEPARATOR_UNIX;
        }
    }

    class Rule {
        public final DateTimeOfYear iDateTimeOfYear;
        public final int iFromYear;
        public final String iLetterS;
        public final String iName;
        public final int iSaveMillis;
        public final int iToYear;
        public final String iType;

        Rule(StringTokenizer stringTokenizer) {
            if (stringTokenizer.countTokens() < 6) {
                throw new IllegalArgumentException("Attempting to create a Rule from an incomplete tokenizer");
            }
            this.iName = stringTokenizer.nextToken().intern();
            this.iFromYear = ZoneInfoCompiler.parseYear(stringTokenizer.nextToken(), 0);
            this.iToYear = ZoneInfoCompiler.parseYear(stringTokenizer.nextToken(), this.iFromYear);
            if (this.iToYear < this.iFromYear) {
                throw new IllegalArgumentException();
            }
            this.iType = ZoneInfoCompiler.parseOptional(stringTokenizer.nextToken());
            this.iDateTimeOfYear = new DateTimeOfYear(stringTokenizer);
            this.iSaveMillis = ZoneInfoCompiler.parseTime(stringTokenizer.nextToken());
            this.iLetterS = ZoneInfoCompiler.parseOptional(stringTokenizer.nextToken());
        }

        public void addRecurring(DateTimeZoneBuilder dateTimeZoneBuilder, String str) {
            this.iDateTimeOfYear.addRecurring(dateTimeZoneBuilder, formatName(str), this.iSaveMillis, this.iFromYear, this.iToYear);
        }

        private String formatName(String str) {
            String strConcat;
            int iIndexOf = str.indexOf(47);
            if (iIndexOf > 0) {
                if (this.iSaveMillis == 0) {
                    return str.substring(0, iIndexOf).intern();
                }
                return str.substring(iIndexOf + 1).intern();
            }
            int iIndexOf2 = str.indexOf("%s");
            if (iIndexOf2 >= 0) {
                String strSubstring = str.substring(0, iIndexOf2);
                String strSubstring2 = str.substring(iIndexOf2 + 2);
                if (this.iLetterS == null) {
                    strConcat = strSubstring.concat(strSubstring2);
                } else {
                    strConcat = strSubstring + this.iLetterS + strSubstring2;
                }
                return strConcat.intern();
            }
            return str;
        }

        public String toString() {
            return "[Rule]\nName: " + this.iName + IOUtils.LINE_SEPARATOR_UNIX + "FromYear: " + this.iFromYear + IOUtils.LINE_SEPARATOR_UNIX + "ToYear: " + this.iToYear + IOUtils.LINE_SEPARATOR_UNIX + "Type: " + this.iType + IOUtils.LINE_SEPARATOR_UNIX + this.iDateTimeOfYear + "SaveMillis: " + this.iSaveMillis + IOUtils.LINE_SEPARATOR_UNIX + "LetterS: " + this.iLetterS + IOUtils.LINE_SEPARATOR_UNIX;
        }
    }

    class RuleSet {
        private List<Rule> iRules = new ArrayList();

        RuleSet(Rule rule) {
            this.iRules.add(rule);
        }

        void addRule(Rule rule) {
            if (!rule.iName.equals(this.iRules.get(0).iName)) {
                throw new IllegalArgumentException("Rule name mismatch");
            }
            this.iRules.add(rule);
        }

        public void addRecurring(DateTimeZoneBuilder dateTimeZoneBuilder, String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.iRules.size()) {
                    this.iRules.get(i2).addRecurring(dateTimeZoneBuilder, str);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    class Zone {
        public final String iFormat;
        public final String iName;
        private Zone iNext;
        public final int iOffsetMillis;
        public final String iRules;
        public final DateTimeOfYear iUntilDateTimeOfYear;
        public final int iUntilYear;

        Zone(StringTokenizer stringTokenizer) {
            this(stringTokenizer.nextToken(), stringTokenizer);
        }

        private Zone(String str, StringTokenizer stringTokenizer) {
            this.iName = str.intern();
            this.iOffsetMillis = ZoneInfoCompiler.parseTime(stringTokenizer.nextToken());
            this.iRules = ZoneInfoCompiler.parseOptional(stringTokenizer.nextToken());
            this.iFormat = stringTokenizer.nextToken().intern();
            int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            DateTimeOfYear startOfYear = ZoneInfoCompiler.getStartOfYear();
            if (stringTokenizer.hasMoreTokens()) {
                i = Integer.parseInt(stringTokenizer.nextToken());
                if (stringTokenizer.hasMoreTokens()) {
                    startOfYear = new DateTimeOfYear(stringTokenizer);
                }
            }
            this.iUntilYear = i;
            this.iUntilDateTimeOfYear = startOfYear;
        }

        void chain(StringTokenizer stringTokenizer) {
            if (this.iNext != null) {
                this.iNext.chain(stringTokenizer);
            } else {
                this.iNext = new Zone(this.iName, stringTokenizer);
            }
        }

        public void addToBuilder(DateTimeZoneBuilder dateTimeZoneBuilder, Map<String, RuleSet> map) {
            addToBuilder(this, dateTimeZoneBuilder, map);
        }

        private static void addToBuilder(Zone zone, DateTimeZoneBuilder dateTimeZoneBuilder, Map<String, RuleSet> map) {
            while (zone != null) {
                dateTimeZoneBuilder.setStandardOffset(zone.iOffsetMillis);
                if (zone.iRules == null) {
                    dateTimeZoneBuilder.setFixedSavings(zone.iFormat, 0);
                } else {
                    try {
                        dateTimeZoneBuilder.setFixedSavings(zone.iFormat, ZoneInfoCompiler.parseTime(zone.iRules));
                    } catch (Exception e2) {
                        RuleSet ruleSet = map.get(zone.iRules);
                        if (ruleSet == null) {
                            throw new IllegalArgumentException("Rules not found: " + zone.iRules);
                        }
                        ruleSet.addRecurring(dateTimeZoneBuilder, zone.iFormat);
                    }
                }
                if (zone.iUntilYear != Integer.MAX_VALUE) {
                    zone.iUntilDateTimeOfYear.addCutover(dateTimeZoneBuilder, zone.iUntilYear);
                    zone = zone.iNext;
                } else {
                    return;
                }
            }
        }

        public String toString() {
            String str = "[Zone]\nName: " + this.iName + IOUtils.LINE_SEPARATOR_UNIX + "OffsetMillis: " + this.iOffsetMillis + IOUtils.LINE_SEPARATOR_UNIX + "Rules: " + this.iRules + IOUtils.LINE_SEPARATOR_UNIX + "Format: " + this.iFormat + IOUtils.LINE_SEPARATOR_UNIX + "UntilYear: " + this.iUntilYear + IOUtils.LINE_SEPARATOR_UNIX + this.iUntilDateTimeOfYear;
            return this.iNext == null ? str : str + "...\n" + this.iNext.toString();
        }
    }
}
