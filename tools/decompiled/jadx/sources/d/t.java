package d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: Cookie.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f4682a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f4683b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f4684c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f4685d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f4688g;
    private final String h;
    private final String i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;

    private t(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f4686e = str;
        this.f4687f = str2;
        this.f4688g = j;
        this.h = str3;
        this.i = str4;
        this.j = z;
        this.k = z2;
        this.m = z3;
        this.l = z4;
    }

    public String a() {
        return this.f4686e;
    }

    public String b() {
        return this.f4687f;
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) + (-1)) == '.' && !d.a.c.c(str);
    }

    @Nullable
    public static t a(ai aiVar, String str) {
        return a(System.currentTimeMillis(), aiVar, str);
    }

    @Nullable
    static t a(long j, ai aiVar, String str) {
        long j2;
        long j3;
        String strSubstring;
        String strC;
        String strB;
        int length = str.length();
        int iA = d.a.c.a(str, 0, length, ';');
        int iA2 = d.a.c.a(str, 0, iA, '=');
        if (iA2 == iA) {
            return null;
        }
        String strC2 = d.a.c.c(str, 0, iA2);
        if (strC2.isEmpty() || d.a.c.b(strC2) != -1) {
            return null;
        }
        String strC3 = d.a.c.c(str, iA2 + 1, iA);
        if (d.a.c.b(strC3) != -1) {
            return null;
        }
        long jA = 253402300799999L;
        long jA2 = -1;
        String str2 = null;
        String str3 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = false;
        int i = iA + 1;
        while (i < length) {
            int iA3 = d.a.c.a(str, i, length, ';');
            int iA4 = d.a.c.a(str, i, iA3, '=');
            String strC4 = d.a.c.c(str, i, iA4);
            if (iA4 < iA3) {
                strC = d.a.c.c(str, iA4 + 1, iA3);
            } else {
                strC = "";
            }
            if (strC4.equalsIgnoreCase("expires")) {
                try {
                    jA = a(strC, 0, strC.length());
                    z4 = true;
                    strB = str2;
                } catch (IllegalArgumentException e2) {
                    strB = str2;
                }
            } else if (strC4.equalsIgnoreCase("max-age")) {
                try {
                    jA2 = a(strC);
                    z4 = true;
                    strB = str2;
                } catch (NumberFormatException e3) {
                    strB = str2;
                }
            } else if (strC4.equalsIgnoreCase("domain")) {
                try {
                    strB = b(strC);
                    z3 = false;
                } catch (IllegalArgumentException e4) {
                    strB = str2;
                }
            } else if (strC4.equalsIgnoreCase("path")) {
                str3 = strC;
                strB = str2;
            } else if (strC4.equalsIgnoreCase("secure")) {
                z = true;
                strB = str2;
            } else if (strC4.equalsIgnoreCase("httponly")) {
                z2 = true;
                strB = str2;
            } else {
                strB = str2;
            }
            String str4 = strB;
            i = iA3 + 1;
            jA = jA;
            str2 = str4;
        }
        if (jA2 == Long.MIN_VALUE) {
            j2 = Long.MIN_VALUE;
        } else if (jA2 != -1) {
            if (jA2 <= 9223372036854775L) {
                j3 = jA2 * 1000;
            } else {
                j3 = Long.MAX_VALUE;
            }
            j2 = j3 + j;
            if (j2 < j || j2 > 253402300799999L) {
                j2 = 253402300799999L;
            }
        } else {
            j2 = jA;
        }
        String strF = aiVar.f();
        if (str2 == null) {
            str2 = strF;
        } else if (!a(strF, str2)) {
            return null;
        }
        if (strF.length() != str2.length() && d.a.h.a.a().a(str2) == null) {
            return null;
        }
        if (str3 == null || !str3.startsWith(URIUtil.SLASH)) {
            String strH = aiVar.h();
            int iLastIndexOf = strH.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strH.substring(0, iLastIndexOf) : URIUtil.SLASH;
        } else {
            strSubstring = str3;
        }
        return new t(strC2, strC3, j2, str2, strSubstring, z, z2, z3, z4);
    }

    private static long a(String str, int i, int i2) {
        int iA = a(str, i, i2, false);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int iIndexOf = -1;
        int i7 = -1;
        Matcher matcher = f4685d.matcher(str);
        while (iA < i2) {
            int iA2 = a(str, iA + 1, i2, true);
            matcher.region(iA, iA2);
            if (i3 == -1 && matcher.usePattern(f4685d).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
                i4 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
            } else if (i6 == -1 && matcher.usePattern(f4684c).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1 && matcher.usePattern(f4683b).matches()) {
                iIndexOf = f4683b.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i7 == -1 && matcher.usePattern(f4682a).matches()) {
                i7 = Integer.parseInt(matcher.group(1));
            }
            iA = a(str, iA2 + 1, i2, false);
        }
        if (i7 >= 70 && i7 <= 99) {
            i7 += 1900;
        }
        if (i7 >= 0 && i7 <= 69) {
            i7 += 2000;
        }
        if (i7 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        }
        if (i3 < 0 || i3 > 23) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 59) {
            throw new IllegalArgumentException();
        }
        if (i5 < 0 || i5 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(d.a.c.f4259g);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i7);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i6);
        gregorianCalendar.set(11, i3);
        gregorianCalendar.set(12, i4);
        gregorianCalendar.set(13, i5);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    private static int a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i3;
            }
        }
        return i2;
    }

    private static long a(String str) {
        try {
            long j = Long.parseLong(str);
            if (j <= 0) {
                return Long.MIN_VALUE;
            }
            return j;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                return !str.startsWith("-") ? Long.MAX_VALUE : Long.MIN_VALUE;
            }
            throw e2;
        }
    }

    private static String b(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strA = d.a.c.a(str);
        if (strA == null) {
            throw new IllegalArgumentException();
        }
        return strA;
    }

    public static List<t> a(ai aiVar, ag agVar) {
        List<String> listB = agVar.b("Set-Cookie");
        ArrayList arrayList = null;
        int size = listB.size();
        for (int i = 0; i < size; i++) {
            t tVarA = a(aiVar, listB.get(i));
            if (tVarA != null) {
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.add(tVarA);
                arrayList = arrayList2;
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public String toString() {
        return a(false);
    }

    String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4686e);
        sb.append('=');
        sb.append(this.f4687f);
        if (this.l) {
            if (this.f4688g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=").append(d.a.c.e.a(new Date(this.f4688g)));
            }
        }
        if (!this.m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.h);
        }
        sb.append("; path=").append(this.i);
        if (this.j) {
            sb.append("; secure");
        }
        if (this.k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return tVar.f4686e.equals(this.f4686e) && tVar.f4687f.equals(this.f4687f) && tVar.h.equals(this.h) && tVar.i.equals(this.i) && tVar.f4688g == this.f4688g && tVar.j == this.j && tVar.k == this.k && tVar.l == this.l && tVar.m == this.m;
    }

    public int hashCode() {
        return (((this.l ? 0 : 1) + (((this.k ? 0 : 1) + (((this.j ? 0 : 1) + ((((((((((this.f4686e.hashCode() + 527) * 31) + this.f4687f.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + ((int) (this.f4688g ^ (this.f4688g >>> 32)))) * 31)) * 31)) * 31)) * 31) + (this.m ? 0 : 1);
    }
}
