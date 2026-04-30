package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.List;
import java.util.StringTokenizer;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class InclusiveByteRange {
    long first;
    long last;

    public InclusiveByteRange(long j, long j2) {
        this.first = 0L;
        this.last = 0L;
        this.first = j;
        this.last = j2;
    }

    public long getFirst() {
        return this.first;
    }

    public long getLast() {
        return this.last;
    }

    public static List satisfiableRanges(Enumeration enumeration, long j) {
        long j2;
        long j3;
        Object obj = null;
        while (enumeration.hasMoreElements()) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) enumeration.nextElement(), "=,", false);
            String strTrim = null;
            Object objAdd = obj;
            while (stringTokenizer.hasMoreTokens()) {
                try {
                    strTrim = stringTokenizer.nextToken().trim();
                    int iIndexOf = strTrim.indexOf(45);
                    if (iIndexOf < 0 || strTrim.indexOf("-", iIndexOf + 1) >= 0) {
                        if (!HttpHeaderValues.BYTES.equals(strTrim)) {
                            Log.warn("Bad range format: {}", strTrim);
                            obj = objAdd;
                            break;
                        }
                    } else {
                        if (iIndexOf == 0) {
                            if (iIndexOf + 1 < strTrim.length()) {
                                j3 = Long.parseLong(strTrim.substring(iIndexOf + 1).trim());
                                j2 = -1;
                            } else {
                                Log.warn("Bad range format: {}", strTrim);
                                obj = objAdd;
                                break;
                            }
                        } else if (iIndexOf + 1 < strTrim.length()) {
                            j2 = Long.parseLong(strTrim.substring(0, iIndexOf).trim());
                            j3 = Long.parseLong(strTrim.substring(iIndexOf + 1).trim());
                        } else {
                            j2 = Long.parseLong(strTrim.substring(0, iIndexOf).trim());
                            j3 = -1;
                        }
                        if (j2 != -1 || j3 != -1) {
                            if (j2 != -1 && j3 != -1 && j2 > j3) {
                                obj = objAdd;
                                break;
                            }
                            if (j2 < j) {
                                objAdd = LazyList.add(objAdd, new InclusiveByteRange(j2, j3));
                            }
                        } else {
                            obj = objAdd;
                            break;
                        }
                    }
                } catch (Exception e2) {
                    Log.warn(new StringBuffer().append("Bad range format: ").append(strTrim).toString());
                    Log.ignore(e2);
                }
            }
            obj = objAdd;
        }
        return LazyList.getList(obj, true);
    }

    public long getFirst(long j) {
        if (this.first >= 0) {
            return this.first;
        }
        long j2 = j - this.last;
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    public long getLast(long j) {
        if (this.first < 0) {
            return j - 1;
        }
        if (this.last < 0 || this.last >= j) {
            return j - 1;
        }
        return this.last;
    }

    public long getSize(long j) {
        return (getLast(j) - getFirst(j)) + 1;
    }

    public String toHeaderRangeString(long j) {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append("bytes ");
        stringBuffer.append(getFirst(j));
        stringBuffer.append('-');
        stringBuffer.append(getLast(j));
        stringBuffer.append(URIUtil.SLASH);
        stringBuffer.append(j);
        return stringBuffer.toString();
    }

    public static String to416HeaderRangeString(long j) {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append("bytes */");
        stringBuffer.append(j);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(60);
        stringBuffer.append(Long.toString(this.first));
        stringBuffer.append(":");
        stringBuffer.append(Long.toString(this.last));
        return stringBuffer.toString();
    }
}
